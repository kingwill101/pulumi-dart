import 'dart:convert';
import 'dart:io';

import 'package:pulumi/automation.dart' as automation;

String _stringValue(dynamic value) {
  if (value is automation.AutomationOutputValue) {
    return '${value.value}';
  }
  if (value is Map) {
    final raw = value['value'];
    if (raw != null) {
      return '$raw';
    }
  }
  return '$value';
}

Future<void> _removeStackWithRetry(
  automation.Stack stack,
  String stackName,
) async {
  const maxAttempts = 8;
  for (var attempt = 1; attempt <= maxAttempts; attempt++) {
    try {
      await stack.workspace.removeStack(stackName, yes: true, force: true);
      return;
    } catch (error) {
      final message = '$error';
      final isConflict = message.contains(
        'Stack has an update in-progress',
      );
      if (!isConflict || attempt == maxAttempts) {
        rethrow;
      }
      await Future<void>.delayed(const Duration(seconds: 2));
    }
  }
}

Future<void> main() async {
  final stackName = Platform.environment['AUTOMATION_REMOTE_STACK'];
  if (stackName == null || stackName.trim().isEmpty) {
    stderr.writeln('AUTOMATION_REMOTE_STACK must be set');
    exitCode = 1;
    return;
  }

  final repoUrl = Platform.environment['AUTOMATION_REMOTE_REPO'] ??
      'https://github.com/pulumi/test-repo.git';
  final branch =
      Platform.environment['AUTOMATION_REMOTE_BRANCH'] ?? 'refs/heads/master';
  final projectPath =
      Platform.environment['AUTOMATION_REMOTE_PROJECT_PATH'] ?? 'goproj';
  final stackNameParts = stackName.split('/');
  final projectName =
      stackNameParts.length >= 2 ? stackNameParts[1] : 'remote-project';
  final workspaceDir = await Directory.systemTemp.createTemp(
    'automation-remote-',
  );
  final projectFile = File('${workspaceDir.path}/Pulumi.yaml');
  await projectFile.writeAsString(
    'name: $projectName\n'
    'runtime: yaml\n',
  );

  final stack = await automation.RemoteWorkspace.createOrSelectStack(
    automation.RemoteGitProgramArgs(
      stackName: stackName,
      url: repoUrl,
      branch: branch,
      projectPath: projectPath,
    ),
    remoteOptions: automation.RemoteWorkspaceOptions(
      preRunCommands: <String>[
        'pulumi config set bar abc --stack $stackName',
        'pulumi config set --secret buzz secret --stack $stackName',
      ],
      skipInstallDependencies: true,
    ),
    workspaceOptions:
        automation.LocalWorkspaceOptions(workDir: workspaceDir.path),
  );

  try {
    final up = await stack.upResult(
      nonInteractive: false,
      captureEvents: false,
      extraArgs: const <String>['--exec-kind=auto.local'],
    );
    final preview = await stack.previewResult(
      nonInteractive: false,
      captureEvents: false,
      extraArgs: const <String>['--exec-kind=auto.local'],
    );
    final refresh = await stack.refreshResult(
      nonInteractive: false,
      captureEvents: false,
      extraArgs: const <String>['--exec-kind=auto.local'],
    );
    final destroy = await stack.destroyResult(
      nonInteractive: false,
      captureEvents: false,
      extraArgs: const <String>['--exec-kind=auto.local'],
    );
    final outputs =
        up.outputs ?? const <String, automation.AutomationOutputValue>{};

    final payload = <String, Object?>{
      'upExitCode': up.commandResult.exitCode,
      'previewExitCode': preview.commandResult.exitCode,
      'refreshExitCode': refresh.commandResult.exitCode,
      'destroyExitCode': destroy.commandResult.exitCode,
      'outputKeys': outputs.keys.toList(growable: false),
      'rawOutputs': outputs.map(
        (key, value) => MapEntry(key, '${value.value}|secret=${value.secret}'),
      ),
      'outputStatic': _stringValue(outputs['exp_static']),
      'outputConfig': _stringValue(outputs['exp_cfg']),
      'outputSecret': _stringValue(outputs['exp_secret']),
    };
    stdout.writeln('AUTOMATION_RESULT:${jsonEncode(payload)}');
  } finally {
    await _removeStackWithRetry(stack, stackName);
  }
}
