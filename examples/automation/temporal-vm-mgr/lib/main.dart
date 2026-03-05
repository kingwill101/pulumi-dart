import 'dart:io';

import 'package:pulumi/automation.dart' as automation;

Future<void> main(List<String> args) async {
  if (args.isEmpty) {
    stderr.writeln(
      'usage: dart run bin/main.dart <vm-name> [ttl]\n'
      'example: dart run bin/main.dart myvm1 5m',
    );
    exitCode = 1;
    return;
  }

  final vmName = args[0].trim();
  if (vmName.isEmpty) {
    stderr.writeln('vm-name is required');
    exitCode = 1;
    return;
  }

  final ttl = args.length > 1
      ? _parseDuration(args[1])
      : const Duration(minutes: 5);
  final noDestroy = args.contains('--no-destroy');
  final passphrase =
      Platform.environment['PULUMI_CONFIG_PASSPHRASE'] ?? 'pulumi-dart-dev';
  final workDir = '${Directory.current.path}/.temporal-vm-mgr';
  const projectName = 'vmgr-temporal';
  final stackName = 'vmgr-$vmName';

  await _ensureWorkDir(workDir);
  await _ensureNetwork(
    projectName: projectName,
    workDir: workDir,
    passphrase: passphrase,
  );

  final stack = await automation.LocalWorkspace.createOrSelectInlineStack(
    automation.InlineProgramArgs(
      stackName: stackName,
      projectName: projectName,
      workDir: workDir,
      description: 'Temporal-style temporary VM manager workflow',
      program: _temporaryVmProgramSource(vmName),
    ),
    options: automation.LocalWorkspaceOptions(
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

  stdout.writeln('Workflow started for VM "$vmName"');
  await stack.up();
  final outputs = await stack.outputs(showSecrets: true);
  stdout.writeln('VM is ready (simulated) at: ${outputs['ip']}');

  if (noDestroy) {
    stdout.writeln('--no-destroy set; leaving stack "$stackName" running');
    return;
  }

  stdout.writeln('Waiting ${ttl.inSeconds}s before teardown');
  await Future<void>.delayed(ttl);

  stdout.writeln('Tearing down stack "$stackName"');
  await stack.destroy(yes: true, skipPreview: true);
  await stack.workspace.removeStack(stackName);
  stdout.writeln('Workflow complete');
}

Future<void> _ensureNetwork({
  required String projectName,
  required String workDir,
  required String passphrase,
}) async {
  final stack = await automation.LocalWorkspace.createOrSelectInlineStack(
    automation.InlineProgramArgs(
      stackName: 'networking',
      projectName: projectName,
      workDir: workDir,
      program: _networkProgramSource(),
      description: 'Temporal VM manager shared network stack',
    ),
    options: automation.LocalWorkspaceOptions(
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
  await stack.up();
}

Future<void> _ensureWorkDir(String workDir) async {
  await Directory(workDir).create(recursive: true);
}

Duration _parseDuration(String raw) {
  final trimmed = raw.trim().toLowerCase();
  final match = RegExp(r'^(\d+)([smhd])$').firstMatch(trimmed);
  if (match == null) {
    throw ArgumentError(
      'invalid duration "$raw": expected format like 30s, 5m, 2h, or 1d',
    );
  }

  final value = int.parse(match.group(1)!);
  final unit = match.group(2)!;
  switch (unit) {
    case 's':
      return Duration(seconds: value);
    case 'm':
      return Duration(minutes: value);
    case 'h':
      return Duration(hours: value);
    case 'd':
      return Duration(days: value);
    default:
      throw ArgumentError('unsupported duration unit in "$raw"');
  }
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

String _networkProgramSource() {
  return '''
import 'package:pulumi/pulumi.dart';
import 'package:pulumi_random/pulumi_random.dart' as random;

class NetworkStack extends Stack {
  late final Output<Object?> resourceGroupName;
  late final Output<Object?> subnetId;

  NetworkStack() : super() {
    final rg = random.RandomString(
      'network-rg',
      args: random.RandomStringArgs(length: Input.fromValue(8)),
    );
    final subnet = random.RandomString(
      'network-subnet',
      args: random.RandomStringArgs(length: Input.fromValue(8)),
    );
    resourceGroupName = rg.result.apply<Object?>((value) => 'server-rg-\$value');
    subnetId = subnet.result.apply<Object?>((value) => 'subnet-\$value');
  }

  @override
  List<OutputProperty> getOutputProperties() {
    return <OutputProperty>[
      OutputProperty('resourceGroupName', resourceGroupName),
      OutputProperty('subnetId', subnetId),
    ];
  }
}

Future<void> main() async {
  await Deployment.runOrThrow(() => NetworkStack());
}
''';
}

String _temporaryVmProgramSource(String vmName) {
  final escapedVmName = vmName.replaceAll(r"'", r"\'");
  return '''
import 'package:pulumi/pulumi.dart';
import 'package:pulumi_random/pulumi_random.dart' as random;

class TemporaryVmStack extends Stack {
  late final Output<Object?> ip;
  late final Output<Object?> vm;

  TemporaryVmStack() : super() {
    final pet = random.RandomPet('vm-ip');
    ip = pet.id.apply<Object?>((value) => 'http://\$value.example.internal');
    vm = Output.create<Object?>('$escapedVmName');
  }

  @override
  List<OutputProperty> getOutputProperties() {
    return <OutputProperty>[
      OutputProperty('ip', ip),
      OutputProperty('vm', vm),
    ];
  }
}

Future<void> main() async {
  await Deployment.runOrThrow(() => TemporaryVmStack());
}
''';
}
