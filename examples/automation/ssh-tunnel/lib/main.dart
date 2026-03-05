import 'dart:async';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:pulumi/automation.dart' as automation;

const String _vpcWorkDirName = 'vpc';
const String _dbWorkDirName = 'database';

Future<void> main(List<String> args) async {
  if (args.length < 2) {
    stderr.writeln(
      'usage: dart run bin/main.dart <up|refresh|destroy> <stack> [public-key-path]',
    );
    exitCode = 1;
    return;
  }

  final command = args[0].trim().toLowerCase();
  final stackName = args[1].trim();
  final publicKeyPath = args.length > 2 ? args[2].trim() : '';
  final passphrase =
      Platform.environment['PULUMI_CONFIG_PASSPHRASE'] ?? 'pulumi-dart-dev';

  if (stackName.isEmpty) {
    throw ArgumentError('stack name is required');
  }

  switch (command) {
    case 'up':
      if (publicKeyPath.isEmpty) {
        throw ArgumentError('public-key-path is required for "up"');
      }
      await _up(
        stackName: stackName,
        publicKeyPath: publicKeyPath,
        passphrase: passphrase,
      );
      return;
    case 'refresh':
      await _refresh(stackName: stackName, passphrase: passphrase);
      return;
    case 'destroy':
      await _destroy(stackName: stackName, passphrase: passphrase);
      return;
    default:
      throw ArgumentError('unsupported command "$command"');
  }
}

Future<void> _up({
  required String stackName,
  required String publicKeyPath,
  required String passphrase,
}) async {
  final publicKey = await File(publicKeyPath).readAsString();
  Process? tunnel;

  try {
    final vpcStack = await automation.LocalWorkspace.createOrSelectStack(
      automation.LocalProgramArgs(stackName: stackName, workDir: _vpcWorkDir()),
      options: _workspaceOptions(passphrase),
    );
    await vpcStack.workspace.installPlugin('random', 'v4.19.1');
    await vpcStack.setConfig('publicKey', publicKey.trim());
    await vpcStack.up();
    final vpcOutputs = await vpcStack.outputs(showSecrets: true);

    final bastionHost = '${vpcOutputs['bastionHost'] ?? ''}'.trim();
    final dbHost = '${vpcOutputs['dbHost'] ?? ''}'.trim();
    tunnel = await _startSshTunnel(
      bastionHost: bastionHost,
      targetHost: dbHost,
    );

    final dbStack = await automation.LocalWorkspace.createOrSelectStack(
      automation.LocalProgramArgs(stackName: stackName, workDir: _dbWorkDir()),
      options: _workspaceOptions(passphrase),
    );
    await dbStack.workspace.installPlugin('random', 'v4.19.1');
    await dbStack.up();
  } finally {
    _stopSshTunnel(tunnel);
  }
}

Future<void> _refresh({
  required String stackName,
  required String passphrase,
}) async {
  Process? tunnel;
  try {
    final vpcStack = await automation.LocalWorkspace.selectStack(
      automation.LocalProgramArgs(stackName: stackName, workDir: _vpcWorkDir()),
      options: _workspaceOptions(passphrase),
    );
    final vpcOutputs = await vpcStack.outputs(showSecrets: true);
    final bastionHost = '${vpcOutputs['bastionHost'] ?? ''}'.trim();
    final dbHost = '${vpcOutputs['dbHost'] ?? ''}'.trim();
    tunnel = await _startSshTunnel(
      bastionHost: bastionHost,
      targetHost: dbHost,
    );

    final dbStack = await automation.LocalWorkspace.selectStack(
      automation.LocalProgramArgs(stackName: stackName, workDir: _dbWorkDir()),
      options: _workspaceOptions(passphrase),
    );
    await dbStack.refresh();
    await vpcStack.refresh();
  } finally {
    _stopSshTunnel(tunnel);
  }
}

Future<void> _destroy({
  required String stackName,
  required String passphrase,
}) async {
  Process? tunnel;
  try {
    final vpcStack = await automation.LocalWorkspace.selectStack(
      automation.LocalProgramArgs(stackName: stackName, workDir: _vpcWorkDir()),
      options: _workspaceOptions(passphrase),
    );
    final vpcOutputs = await vpcStack.outputs(showSecrets: true);
    final bastionHost = '${vpcOutputs['bastionHost'] ?? ''}'.trim();
    final dbHost = '${vpcOutputs['dbHost'] ?? ''}'.trim();
    tunnel = await _startSshTunnel(
      bastionHost: bastionHost,
      targetHost: dbHost,
    );

    final dbStack = await automation.LocalWorkspace.selectStack(
      automation.LocalProgramArgs(stackName: stackName, workDir: _dbWorkDir()),
      options: _workspaceOptions(passphrase),
    );
    await dbStack.destroy(yes: true, skipPreview: true);
    await vpcStack.destroy(yes: true, skipPreview: true);
  } finally {
    _stopSshTunnel(tunnel);
  }
}

String _vpcWorkDir() => p.join(Directory.current.path, _vpcWorkDirName);

String _dbWorkDir() => p.join(Directory.current.path, _dbWorkDirName);

automation.LocalWorkspaceOptions _workspaceOptions(String passphrase) {
  return automation.LocalWorkspaceOptions(
    environmentVariables: <String, String>{
      'PULUMI_CONFIG_PASSPHRASE': passphrase,
    },
  );
}

Future<Process?> _startSshTunnel({
  required String bastionHost,
  required String targetHost,
}) async {
  if (bastionHost.isEmpty || targetHost.isEmpty) {
    _banner(<String>[
      'Bastion host or target host is undefined. Skipping tunnel creation...',
    ]);
    return null;
  }

  final sshBinary = (Platform.environment['SSH_BINARY'] ?? 'ssh').trim();
  _banner(<String>[
    'Establishing tunnel through [$bastionHost] to [$targetHost] on port [5432]...',
  ]);

  final process = await Process.start(sshBinary, <String>[
    '-L',
    '5432:$targetHost:5432',
    'ubuntu@$bastionHost',
  ], runInShell: false);

  unawaited(process.stdout.drain());
  unawaited(process.stderr.drain());
  return process;
}

void _stopSshTunnel(Process? tunnel) {
  if (tunnel == null) {
    return;
  }
  _banner(<String>['Stopping tunnel...']);
  tunnel.kill();
}

void _banner(List<String> lines) {
  stdout.writeln(
    '################################################################################',
  );
  stdout.writeln('#');
  for (final line in lines) {
    stdout.writeln('# $line');
  }
  stdout.writeln('#');
  stdout.writeln(
    '################################################################################',
  );
}
