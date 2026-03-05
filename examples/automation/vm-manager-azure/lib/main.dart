import 'dart:io';
import 'dart:math';

import 'package:pulumi/automation.dart' as automation;

Future<void> main(List<String> args) async {
  if (args.isEmpty) {
    stderr.writeln(
      'usage:\n'
      '  dart run bin/main.dart add\n'
      '  dart run bin/main.dart cron <expiry>\n'
      '  dart run bin/main.dart reap-once <expiry>',
    );
    exitCode = 1;
    return;
  }

  final command = args[0].trim().toLowerCase();
  final passphrase =
      Platform.environment['PULUMI_CONFIG_PASSPHRASE'] ?? 'pulumi-dart-dev';
  final workDir = '${Directory.current.path}/.vmgr-azure';
  await Directory(workDir).create(recursive: true);

  switch (command) {
    case 'add':
      await _addVm(workDir: workDir, passphrase: passphrase);
      return;
    case 'cron':
      if (args.length != 2) {
        throw ArgumentError(
          'cron requires one expiry argument (for example 5m)',
        );
      }
      final expiry = _parseDuration(args[1]);
      while (true) {
        stdout.writeln('Checking for VMs over ${args[1]} old to reap...');
        await _reapExpired(
          workDir: workDir,
          passphrase: passphrase,
          expiry: expiry,
        );
        stdout.writeln('Sleeping for 60 seconds before checking again...');
        stdout.writeln();
        await Future<void>.delayed(const Duration(seconds: 60));
      }
    case 'reap-once':
      if (args.length != 2) {
        throw ArgumentError(
          'reap-once requires one expiry argument (for example 5m)',
        );
      }
      final expiry = _parseDuration(args[1]);
      await _reapExpired(
        workDir: workDir,
        passphrase: passphrase,
        expiry: expiry,
      );
      return;
    default:
      throw ArgumentError('unknown command "$command"');
  }
}

Future<void> _addVm({
  required String workDir,
  required String passphrase,
}) async {
  const projectName = 'vmgr';
  final suffix = 10000000 + Random.secure().nextInt(90000000);
  final stackName = 'vmgr$suffix';

  stdout.writeln('ensuring network is configured...');
  final network = await _ensureNetwork(
    projectName: projectName,
    workDir: workDir,
    passphrase: passphrase,
  );

  final stack = await automation.LocalWorkspace.createOrSelectInlineStack(
    automation.InlineProgramArgs(
      stackName: stackName,
      projectName: projectName,
      workDir: workDir,
      description: 'VM manager temporary VM stack',
      program: _vmProgramSource(
        stackName: stackName,
        resourceGroupName: network.resourceGroupName,
        subnetId: network.subnetId,
      ),
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

  stdout.writeln('deploying vm webserver...');
  await stack.up();
  final outputs = await stack.outputs(showSecrets: true);
  stdout.writeln('deployed server running at public IP ${outputs['ip']}');
}

Future<_NetworkInfo> _ensureNetwork({
  required String projectName,
  required String workDir,
  required String passphrase,
}) async {
  final stack = await automation.LocalWorkspace.createOrSelectInlineStack(
    automation.InlineProgramArgs(
      stackName: 'networking',
      projectName: projectName,
      workDir: workDir,
      description: 'VM manager shared network stack',
      program: _networkProgramSource(),
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

  final outputs = await stack.outputs(showSecrets: true);
  final rg = '${outputs['resourceGroupName'] ?? ''}'.trim();
  final subnet = '${outputs['subnetId'] ?? ''}'.trim();
  if (rg.isNotEmpty && subnet.isNotEmpty) {
    stdout.writeln('found existing network stack');
    return _NetworkInfo(resourceGroupName: rg, subnetId: subnet);
  }

  await stack.up();
  final updatedOutputs = await stack.outputs(showSecrets: true);
  return _NetworkInfo(
    resourceGroupName: '${updatedOutputs['resourceGroupName'] ?? ''}'.trim(),
    subnetId: '${updatedOutputs['subnetId'] ?? ''}'.trim(),
  );
}

Future<void> _reapExpired({
  required String workDir,
  required String passphrase,
  required Duration expiry,
}) async {
  final workspace = await automation.LocalWorkspace.create(
    automation.LocalWorkspaceOptions(
      workDir: workDir,
      environmentVariables: <String, String>{
        'PULUMI_CONFIG_PASSPHRASE': passphrase,
      },
    ),
  );

  final summaries = await workspace.listStacks(all: true);
  final expirationCutoff = DateTime.now().toUtc().subtract(expiry);

  final stacksToDestroy = <String>[];
  for (final summary in summaries) {
    final leaf = _stackLeafName(summary.name);
    if (leaf == 'networking' || !leaf.startsWith('vmgr')) {
      continue;
    }

    final lastUpdateRaw = summary.raw['lastUpdate'];
    if (lastUpdateRaw == null) {
      continue;
    }
    final lastUpdate = DateTime.tryParse('$lastUpdateRaw')?.toUtc();
    if (lastUpdate == null) {
      continue;
    }

    if (lastUpdate.isBefore(expirationCutoff)) {
      stacksToDestroy.add(leaf);
      stdout.writeln(
        'Found expired stack ${summary.name} last deployed at $lastUpdateRaw',
      );
    }
  }

  stdout.writeln('Found ${stacksToDestroy.length} stacks to clean up');

  var success = 0;
  var failures = 0;
  for (final stackName in stacksToDestroy) {
    try {
      final stack = await automation.LocalWorkspace.selectInlineStack(
        automation.InlineProgramArgs(
          stackName: stackName,
          projectName: 'vmgr',
          workDir: workDir,
          program: _noopProgramSource(),
        ),
        options: automation.LocalWorkspaceOptions(
          environmentVariables: <String, String>{
            'PULUMI_CONFIG_PASSPHRASE': passphrase,
          },
        ),
      );

      stdout.writeln('destroying stack $stackName');
      await stack.destroy(yes: true, skipPreview: true);

      stdout.writeln(
        'removing stack $stackName and all associated config and history',
      );
      await workspace.removeStack(stackName);
      stdout.writeln('stack $stackName successfully reaped');
      success++;
    } catch (error) {
      failures++;
      stdout.writeln('failed to clean up stack $stackName: $error');
      stdout.writeln('will try again in 60 seconds');
    }
  }

  stdout.writeln('destroyed $success stack(s)');
  if (failures > 0) {
    stdout.writeln(
      'failed to destroy $failures stacks, will retry next iteration',
    );
  }
  stdout.writeln('finished reaping stacks');
}

String _stackLeafName(String stackName) {
  final parts = stackName.split('/');
  return parts.isEmpty ? stackName : parts.last;
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

String _networkProgramSource() {
  return '''
import 'package:pulumi/pulumi.dart';
import 'package:pulumi_random/pulumi_random.dart' as random;

class NetworkStack extends Stack {
  late final Output<Object?> resourceGroupName;
  late final Output<Object?> subnetId;

  NetworkStack() : super() {
    final rg = random.RandomString(
      'server-rg',
      args: random.RandomStringArgs(length: Input.fromValue(8)),
    );
    final subnet = random.RandomString(
      'server-subnet',
      args: random.RandomStringArgs(length: Input.fromValue(8)),
    );
    resourceGroupName = rg.result.apply<Object?>((value) => 'server-rg\$value');
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

String _vmProgramSource({
  required String stackName,
  required String resourceGroupName,
  required String subnetId,
}) {
  final escapedStackName = stackName.replaceAll(r"'", r"\'");
  final escapedResourceGroupName = resourceGroupName.replaceAll(r"'", r"\'");
  final escapedSubnetId = subnetId.replaceAll(r"'", r"\'");

  return '''
import 'package:pulumi/pulumi.dart';
import 'package:pulumi_random/pulumi_random.dart' as random;

class VmStack extends Stack {
  late final Output<Object?> ip;
  late final Output<Object?> resourceGroupName;
  late final Output<Object?> subnetId;
  late final Output<Object?> vmName;

  VmStack() : super() {
    final host = random.RandomPet('vm-host');
    ip = host.id.apply<Object?>((value) => 'http://\$value.example.internal');
    resourceGroupName = Output.create<Object?>('$escapedResourceGroupName');
    subnetId = Output.create<Object?>('$escapedSubnetId');
    vmName = Output.create<Object?>('$escapedStackName');
  }

  @override
  List<OutputProperty> getOutputProperties() {
    return <OutputProperty>[
      OutputProperty('ip', ip),
      OutputProperty('resourceGroupName', resourceGroupName),
      OutputProperty('subnetId', subnetId),
      OutputProperty('vmName', vmName),
    ];
  }
}

Future<void> main() async {
  await Deployment.runOrThrow(() => VmStack());
}
''';
}

String _noopProgramSource() {
  return '''
import 'package:pulumi/pulumi.dart';

class NoopStack extends Stack {
  NoopStack() : super();
}

Future<void> main() async {
  await Deployment.runOrThrow(() => NoopStack());
}
''';
}

final class _NetworkInfo {
  _NetworkInfo({required this.resourceGroupName, required this.subnetId});

  final String resourceGroupName;
  final String subnetId;
}
