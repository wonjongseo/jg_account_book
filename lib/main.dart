import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:jg_account_book/feature/home/screen/home_screen.dart';
import 'package:jg_account_book/feature/splash/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Jg Account Book',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      getPages: [
        GetPage(name: SplashScreen.name, page: () => SplashScreen()),
        GetPage(name: HomeScreen.name, page: () => HomeScreen()),
      ],
      initialRoute: SplashScreen.name,
    );
  }
}
