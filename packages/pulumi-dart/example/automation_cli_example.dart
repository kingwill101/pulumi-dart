import 'dart:io';

import 'package:pulumi/automation.dart';

Future<void> main() async {
  final stack = await LocalWorkspace.createOrSelectStack(
    LocalProgramArgs(stackName: 'dev', workDir: Directory.current.path),
    options: const LocalWorkspaceOptions(
      environmentVariables: {'PULUMI_CONFIG_PASSPHRASE': 'pulumi-dart-dev'},
    ),
  );

  await stack.setConfig('name', 'dart');
  await stack.preview();
  // await stack.up();
  // await stack.destroy();
}
