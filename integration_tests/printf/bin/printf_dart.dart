import 'dart:io';

import 'package:pulumi/pulumi.dart';

Future<void> main() async {
  await DeploymentImpl.run(() {
    for (var i = 0; i < 10; i++) {
      stdout.writeln('Line $i');
      stderr.writeln('Errln ${i + 10}');
    }

    stdout.write('Line 10');
    stderr.write('Errln 20');
  });
}
