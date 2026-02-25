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
        "[PROGRAM_STEP3] Creating Component with replacementTrigger='changed'");

    final options = ComponentResourceOptions(replacementTrigger: 'changed');
    stderr.writeln('[PROGRAM_STEP3] Options created');

    Component(
      'trigger',
      echo: Input.fromValue(42),
      options: options,
    );

    stderr.writeln('[PROGRAM_STEP3] Component created');
  });

  if (code != 0) {
    throw Exception('Deployment failed with exit code $code');
  }
}
