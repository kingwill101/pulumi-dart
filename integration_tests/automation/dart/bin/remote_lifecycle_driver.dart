import 'dart:convert';
import 'dart:io';

import 'package:pulumi/automation.dart' as automation;

String _stringValue(dynamic value) {
  if (value is Map) {
    final raw = value['value'];
    if (raw != null) {
      return '$raw';
    }
  }
  return '$value';
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
  );

  try {
    final up = await stack.up();
    final outputs = await stack.outputs(showSecrets: true);
    final preview = await stack.preview();
    final refresh = await stack.refresh();
    final destroy = await stack.destroy();

    final payload = <String, Object?>{
      'upExitCode': up.exitCode,
      'previewExitCode': preview.exitCode,
      'refreshExitCode': refresh.exitCode,
      'destroyExitCode': destroy.exitCode,
      'outputStatic': _stringValue(outputs['exp_static']),
      'outputConfig': _stringValue(outputs['exp_cfg']),
      'outputSecret': _stringValue(outputs['exp_secret']),
    };
    stdout.writeln('AUTOMATION_RESULT:${jsonEncode(payload)}');
  } finally {
    await stack.workspace.removeStack(stackName, yes: true, force: true);
  }
}
