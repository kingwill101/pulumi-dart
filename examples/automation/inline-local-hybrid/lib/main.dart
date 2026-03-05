import 'dart:io';

import 'package:pulumi/automation.dart' as automation;

Future<void> main(List<String> args) async {
  final destroy = args.isNotEmpty && args.first == 'destroy';
  final stackName = Platform.environment['PULUMI_STACK'] ?? 'dev';
  final passphrase =
      Platform.environment['PULUMI_CONFIG_PASSPHRASE'] ?? 'pulumi-dart-dev';
  final workDir = '${Directory.current.path}/cli';

  final stack = await automation.LocalWorkspace.createOrSelectStack(
    automation.LocalProgramArgs(stackName: stackName, workDir: workDir),
    options: automation.LocalWorkspaceOptions(
      environmentVariables: <String, String>{
        'PULUMI_CONFIG_PASSPHRASE': passphrase,
      },
    ),
  );

  stdout.writeln('Created/Selected stack "$stackName"');

  await stack.workspace.installPlugin('aws', 'v7.20.0');
  stdout.writeln('Successfully installed AWS plugin');

  await stack.setConfig('aws:region', 'us-east-1');
  stdout.writeln('Successfully set config');
  stdout.writeln('Starting refresh');
  await stack.refresh();
  stdout.writeln('Refresh succeeded!');

  if (destroy) {
    stdout.writeln('Starting stack destroy');
    await stack.destroy(yes: true, skipPreview: true);
    stdout.writeln('Stack successfully destroyed');
    return;
  }

  stdout.writeln('Starting update');
  await stack.up();
  stdout.writeln('Update succeeded!');

  final outputs = await stack.outputs(showSecrets: true);
  stdout.writeln('websiteUrl: ${outputs['websiteUrl']}');
}
