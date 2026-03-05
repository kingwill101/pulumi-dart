import 'dart:io';

import 'package:pulumi/automation.dart' as automation;

Future<void> main(List<String> args) async {
  final destroy = args.isNotEmpty && args.first == 'destroy';
  final stackName = Platform.environment['PULUMI_STACK'] ?? 'dev';

  final kmsKey = Platform.environment['KMS_KEY']?.trim() ?? '';
  final awsRegion = Platform.environment['AWS_REGION']?.trim() ?? '';
  if (kmsKey.isEmpty || awsRegion.isEmpty) {
    stderr.writeln('KMS_KEY and AWS_REGION must be set');
    exitCode = 1;
    return;
  }

  final secretsProvider = 'awskms://$kmsKey?region=$awsRegion';
  final inlineProgramSource = '''
import 'package:pulumi/pulumi.dart';

class InlineSecretsProviderStack extends Stack {
  late final Output<Object?> secretValue;
  late final Output<Object?> message;

  InlineSecretsProviderStack() : super('inline-secrets-provider-stack') {
    secretValue = Output.createSecret(Output.fromInput('hello-world'));
    message = Output.fromInput('inline-secrets-provider');
  }

  @override
  List<OutputProperty> getOutputProperties() {
    return <OutputProperty>[
      OutputProperty('secretValue', secretValue),
      OutputProperty('message', message),
    ];
  }
}

Future<void> main() async {
  await Deployment.runOrThrow(() => InlineSecretsProviderStack());
}
''';

  final stack = await automation.LocalWorkspace.createOrSelectInlineStack(
    automation.InlineProgramArgs(
      stackName: stackName,
      projectName: 'inline-secrets-provider',
      workDir: Directory.current.path,
      program: inlineProgramSource,
      description: 'Pulumi Dart inline automation example with awskms secrets',
    ),
    options: automation.LocalWorkspaceOptions(secretsProvider: secretsProvider),
  );

  final projectSettings = await stack.workspace.projectSettings();
  projectSettings['backend'] = <String, dynamic>{
    'url': 'file://~/.pulumi-local',
  };
  await stack.workspace.saveProjectSettings(projectSettings);
  await stack.workspace.saveStackSettings(stackName, <String, dynamic>{
    'secretsProvider': secretsProvider,
  });

  stdout.writeln('Created/Selected stack "$stackName"');
  await stack.setConfig('aws:region', awsRegion);
  await stack.setConfig('example:secret', 'hello-world', secret: true);
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
  stdout.writeln('secretValue: ${outputs['secretValue']}');
}
