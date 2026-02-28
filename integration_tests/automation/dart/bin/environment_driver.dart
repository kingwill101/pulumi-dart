import 'dart:convert';
import 'dart:io';

import 'package:pulumi/automation.dart' as automation;

Future<void> main() async {
  final stackName = Platform.environment['AUTOMATION_STACK'] ?? 'dev';
  final envName = Platform.environment['AUTOMATION_ESC_ENV'];
  if (envName == null || envName.trim().isEmpty) {
    stderr.writeln('AUTOMATION_ESC_ENV must be set');
    exitCode = 1;
    return;
  }

  final stack = await automation.LocalWorkspace.createOrSelectStack(
    automation.LocalProgramArgs(
      stackName: stackName,
      workDir: Directory.current.path,
    ),
  );

  try {
    await stack.addEnvironments(<String>[envName]);
    final addedList = await stack.listEnvironments();

    await stack.removeEnvironment(envName);
    final removedList = await stack.listEnvironments();

    final payload = <String, Object?>{
      'environmentAdded': addedList.contains(envName),
      'environmentRemoved': !removedList.contains(envName),
    };
    stdout.writeln('AUTOMATION_RESULT:${jsonEncode(payload)}');
  } finally {
    await stack.destroy(yes: true, skipPreview: true, check: false);
    await stack.workspace.removeStack(stackName, yes: true, force: true);
  }
}
