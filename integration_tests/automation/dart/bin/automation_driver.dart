import 'dart:convert';
import 'dart:io';

import 'package:pulumi/automation.dart' as automation;

Future<void> main() async {
  final stackName = Platform.environment['AUTOMATION_STACK'] ?? 'dev';
  final passphrase =
      Platform.environment['PULUMI_CONFIG_PASSPHRASE'] ?? 'pulumi-dart-dev';

  final stack = await automation.LocalWorkspace.createOrSelectStack(
    automation.LocalProgramArgs(
      stackName: stackName,
      workDir: Directory.current.path,
    ),
    options: automation.LocalWorkspaceOptions(
      environmentVariables: <String, String>{
        'PULUMI_CONFIG_PASSPHRASE': passphrase,
      },
    ),
  );

  var missingAfterRemove = false;

  try {
    await stack.setConfig('automation:key', 'value');
    final config = await stack.getConfig('automation:key');

    final preview = await stack.preview(check: false);
    final up = await stack.up();
    final outputs = await stack.outputs(showSecrets: true);
    final history = await stack.history(pageSize: 10, showSecrets: true);
    final info = await stack.info(showSecrets: true);

    await stack.removeConfig('automation:key');
    try {
      await stack.getConfig('automation:key');
    } on automation.PulumiCommandException {
      missingAfterRemove = true;
    }

    final payload = <String, dynamic>{
      'configValue': config.value,
      'previewExitCode': preview.exitCode,
      'upExitCode': up.exitCode,
      'outputStatus': outputs['status'],
      'historyCount': history.length,
      'infoPresent': info != null,
      'missingAfterRemove': missingAfterRemove,
    };

    stdout.writeln('AUTOMATION_RESULT:${jsonEncode(payload)}');
  } finally {
    await stack.destroy(yes: true, skipPreview: true, check: false);
    await stack.workspace.removeStack(stackName, yes: true, force: true);
  }
}
