import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:pulumi/automation.dart' as automation;

Future<void> main(List<String> args) async {
  final destroy = args.isNotEmpty && args.first == 'destroy';
  final stackName = Platform.environment['PULUMI_STACK'] ?? 'dev';
  final passphrase =
      Platform.environment['PULUMI_CONFIG_PASSPHRASE'] ?? 'pulumi-dart-dev';
  final workDir = p.join(Directory.current.path, 'fargate');

  final stack = await automation.LocalWorkspace.createOrSelectStack(
    automation.LocalProgramArgs(stackName: stackName, workDir: workDir),
    options: automation.LocalWorkspaceOptions(
      environmentVariables: <String, String>{
        'PULUMI_CONFIG_PASSPHRASE': passphrase,
      },
    ),
  );

  await stack.workspace.installPlugin('random', 'v4.19.1');

  stdout.writeln('successfully initialized stack');
  stdout.writeln('refreshing stack...');
  await stack.refresh();
  stdout.writeln('refresh complete');

  if (destroy) {
    stdout.writeln('destroying stack...');
    await stack.destroy(yes: true, skipPreview: true);
    stdout.writeln('stack destroy complete');
    return;
  }

  stdout.writeln('updating stack...');
  await stack.up();
  final outputs = await stack.outputs(showSecrets: true);
  stdout.writeln('website url: ${outputs['url']}');
}
