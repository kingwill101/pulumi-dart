import 'dart:io';

import 'package:pulumi/automation.dart' as automation;

Future<void> main(List<String> args) async {
  final destroy = args.isNotEmpty && args.first == 'destroy';
  final stackName = Platform.environment['PULUMI_STACK'] ?? 'dev';
  final projectName = Platform.environment['PULUMI_PROJECT'] ?? 'autoInstall';
  final passphrase =
      Platform.environment['PULUMI_CONFIG_PASSPHRASE'] ?? 'pulumi-dart-dev';
  final cliVersion = Platform.environment['PULUMI_CLI_VERSION'] ?? '3.104.1';

  final installRoot = await Directory.systemTemp.createTemp(
    'pulumi-cli-installation-',
  );
  final workDir = '${installRoot.path}/workspace';
  await Directory(workDir).create(recursive: true);

  final pulumiBinary = await _resolvePulumiBinary(
    version: cliVersion,
    installRoot: installRoot.path,
  );

  stdout.writeln('Using Pulumi CLI: $pulumiBinary');
  stdout.writeln('Pulumi home: ${installRoot.path}');

  final stack = await automation.LocalWorkspace.createOrSelectInlineStack(
    automation.InlineProgramArgs(
      stackName: stackName,
      projectName: projectName,
      workDir: workDir,
      description:
          'Pulumi Automation API example showing custom Pulumi CLI installation',
      program: _inlineProgramSource(),
    ),
    options: automation.LocalWorkspaceOptions(
      pulumiBinary: pulumiBinary,
      pulumiHome: installRoot.path,
      environmentVariables: <String, String>{
        'PULUMI_CONFIG_PASSPHRASE': passphrase,
      },
    ),
  );

  await _ensureInlineDependency(
    workDir: workDir,
    dependencyName: 'pulumi_random',
    constraint: '^4.19.1',
  );
  await stack.workspace.installPlugin('random', 'v4.19.1');

  stdout.writeln('Created/Selected stack "$stackName"');

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
  stdout.writeln('pet.id: ${outputs['pet.id']}');
}

Future<String> _resolvePulumiBinary({
  required String version,
  required String installRoot,
}) async {
  final configuredBinary = Platform.environment['PULUMI_BINARY']?.trim() ?? '';
  if (configuredBinary.isNotEmpty) {
    return configuredBinary;
  }

  if (Platform.isWindows) {
    return 'pulumi';
  }

  final installedBinary = File('$installRoot/bin/pulumi');
  if (await installedBinary.exists()) {
    return installedBinary.path;
  }

  final escapedInstallRoot = _shellEscape(installRoot);
  final escapedVersion = _shellEscape(version);
  final command =
      'curl -fsSL https://get.pulumi.com | sh -s -- --version '
      '$escapedVersion --install-root $escapedInstallRoot';

  final result = await Process.run('bash', <String>['-lc', command]);
  if (result.exitCode != 0) {
    throw StateError(
      'failed to install Pulumi CLI into "$installRoot":\n'
      '${result.stdout}\n${result.stderr}',
    );
  }

  if (!await installedBinary.exists()) {
    throw StateError(
      'Pulumi CLI install finished but binary not found at ${installedBinary.path}',
    );
  }
  return installedBinary.path;
}

Future<void> _ensureInlineDependency({
  required String workDir,
  required String dependencyName,
  required String constraint,
}) async {
  final pubspec = File('$workDir/pubspec.yaml');
  if (!await pubspec.exists()) {
    return;
  }
  final content = await pubspec.readAsString();
  if (content.contains('$dependencyName:')) {
    return;
  }
  final updated = content.replaceFirst(
    'dependencies:\n',
    'dependencies:\n  $dependencyName: $constraint\n',
  );
  await pubspec.writeAsString(updated);
}

String _shellEscape(String input) {
  return "'${input.replaceAll("'", "'\"'\"'")}'";
}

String _inlineProgramSource() {
  return '''
import 'package:pulumi/pulumi.dart';
import 'package:pulumi_random/pulumi_random.dart' as random;

class CliInstallationStack extends Stack {
  late final Output<Object?> petId;

  CliInstallationStack() : super() {
    final pet = random.RandomPet('fluffy');
    petId = pet.id.apply<Object?>((value) => value);
  }

  @override
  List<OutputProperty> getOutputProperties() {
    return <OutputProperty>[
      OutputProperty('pet.id', petId),
    ];
  }
}

Future<void> main() async {
  await Deployment.runOrThrow(() => CliInstallationStack());
}
''';
}
