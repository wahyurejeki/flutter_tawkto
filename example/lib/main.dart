import 'package:flutter/material.dart';
import 'package:tawkto/tawkto.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Tawk'),
          backgroundColor: const Color(0XFFF7931E),
          elevation: 0,
        ),
        body: Tawk(
          directChatLink: '',
          visitor: TawkVisitor(
            name: 'Ayoub AMINE',
            email: 'ayoubamine2a@gmail.com',
          ),
          onLoad: () {
            print('Hello Tawk!');
          },
          onLinkTap: (String url) {
            print(url);
          },
          placeholder: const Center(
            child: Text('Loading...'),
          ),
        ),
      ),
    );
  }
}
