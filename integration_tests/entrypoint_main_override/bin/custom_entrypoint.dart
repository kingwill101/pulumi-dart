import 'dart:io';

import 'package:pulumi/pulumi.dart';

Future<void> main() async {
  await DeploymentImpl.run(() {
    stdout.writeln('With entrypoint');
  });
}
