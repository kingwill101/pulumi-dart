import 'dart:io';

import 'package:pulumi/pulumi.dart';

import 'other.dart';

class SpecifierResolutionStack extends Stack {
  SpecifierResolutionStack() {
    registerOutputs({
      'res': Output.create(File('Pulumi.yaml').readAsStringSync()),
      'otherx': Output.create(x),
    });
  }
}

Future<void> main() async {
  await Future<void>.delayed(const Duration(milliseconds: 200));
  await Deployment.runOrThrow(() => SpecifierResolutionStack());
}
