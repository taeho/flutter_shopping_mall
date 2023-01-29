import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shopping_mall/models/model_auth.dart';
import 'package:flutter_shopping_mall/screens/screen_detail.dart';
import 'package:flutter_shopping_mall/screens/screen_index.dart';
import 'package:flutter_shopping_mall/screens/screen_login.dart';
import 'package:flutter_shopping_mall/screens/screen_register.dart';
import 'package:flutter_shopping_mall/screens/screen_search.dart';
import 'package:flutter_shopping_mall/screens/screen_splash.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FirebaseAuthProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Shopping mall',
        routes: {
          '/': (context) => SplashScreen(),
          '/login': (context) => LoginScreen(),
          '/index': (context) => IndexScreen(),
          '/register': (context) => RegisterScreen(),
          '/search': (context) => SearchScreen(),
          '/detail': (context) => DetailScreen(),
        },
        initialRoute: '/',
      ),
    );
  }
}
