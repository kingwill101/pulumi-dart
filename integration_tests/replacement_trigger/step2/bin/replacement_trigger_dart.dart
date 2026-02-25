import 'dart:io';

import 'package:pulumi/pulumi.dart';

class Component extends ComponentResource {
  Component(
    String name, {
    Input<Object?>? echo,
    ComponentResourceOptions? options,
  }) : super(
          'testcomponent:index:Component',
          name,
          {
            if (echo != null) 'echo': echo,
          },
          options,
        );
}

Future<void> main() async {
  final code = await DeploymentImpl.run(() {
    stderr.writeln(
        "[PROGRAM_STEP2] Creating Component with replacementTrigger='test'");

    final options = ComponentResourceOptions(replacementTrigger: 'test');
    stderr.writeln('[PROGRAM_STEP2] Options created');

    Component(
      'trigger',
      echo: Input.fromValue(42),
      options: options,
    );

    stderr.writeln('[PROGRAM_STEP2] Component created');
  });

  if (code != 0) {
    throw Exception('Deployment failed with exit code $code');
  }
}
