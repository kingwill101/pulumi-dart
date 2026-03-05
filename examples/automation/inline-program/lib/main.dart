import 'dart:io';

import 'package:pulumi/automation.dart' as automation;

Future<void> main(List<String> args) async {
  final destroy = args.isNotEmpty && args.first == 'destroy';
  final stackName = Platform.environment['PULUMI_STACK'] ?? 'dev';
  final passphrase =
      Platform.environment['PULUMI_CONFIG_PASSPHRASE'] ?? 'pulumi-dart-dev';

  final inlineProgramSource = '''
import 'package:pulumi/pulumi.dart';

class InlineProgramStack extends Stack {
  late final Output<Object?> message;

  InlineProgramStack() : super('inline-program-stack') {
    message = Output.fromInput('hello from Pulumi inline Dart program');
  }

  @override
  List<OutputProperty> getOutputProperties() {
    return <OutputProperty>[
      OutputProperty('message', message),
    ];
  }
}

Future<void> main() async {
  await Deployment.runOrThrow(() => InlineProgramStack());
}
''';

  final stack = await automation.LocalWorkspace.createOrSelectInlineStack(
    automation.InlineProgramArgs(
      stackName: stackName,
      projectName: 'inline-program',
      workDir: Directory.current.path,
      program: inlineProgramSource,
      description: 'Pulumi Dart inline automation example',
    ),
    options: automation.LocalWorkspaceOptions(
      environmentVariables: <String, String>{
        'PULUMI_CONFIG_PASSPHRASE': passphrase,
      },
    ),
  );

  stdout.writeln('Created/Selected stack "$stackName"');

  await stack.setConfig('pulumi-dart:driver', 'automation-inline');
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
  stdout.writeln('message: ${outputs['message']}');
}
