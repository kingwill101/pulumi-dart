import 'dart:io';

import 'package:pulumi/automation.dart' as automation;

Future<void> main(List<String> args) async {
  final destroy = args.isNotEmpty && args.first == 'destroy';
  const projectName = 'aws-go-s3-folder';
  final stackName = Platform.environment['PULUMI_STACK'] ?? 'dev';
  final awsRegion = Platform.environment['AWS_REGION']?.trim() ?? 'us-west-2';
  final passphrase =
      Platform.environment['PULUMI_CONFIG_PASSPHRASE'] ?? 'pulumi-dart-dev';

  final workDir = await _ensureGitProject(
    repoUrl: 'https://github.com/pulumi/examples.git',
    projectPath: projectName,
    localRootName: '.git-repo-program',
  );

  final stack = await automation.LocalWorkspace.createOrSelectStack(
    automation.LocalProgramArgs(stackName: stackName, workDir: workDir),
    options: automation.LocalWorkspaceOptions(
      environmentVariables: <String, String>{
        'PULUMI_CONFIG_PASSPHRASE': passphrase,
      },
    ),
  );

  stdout.writeln(
    'Created/Selected stack "$stackName", and cloned program from git',
  );

  await stack.setConfig('aws:region', awsRegion);
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
  stdout.writeln('URL: ${outputs['websiteUrl']}');
}

Future<String> _ensureGitProject({
  required String repoUrl,
  required String projectPath,
  required String localRootName,
}) async {
  final checkoutRoot = Directory('${Directory.current.path}/$localRootName');
  if (!await checkoutRoot.exists()) {
    final cloneResult = await Process.run('git', <String>[
      'clone',
      '--depth',
      '1',
      repoUrl,
      checkoutRoot.path,
    ]);
    if (cloneResult.exitCode != 0) {
      throw StateError(
        'failed to clone repository: ${cloneResult.stderr}'.trim(),
      );
    }
  }

  final projectDir = Directory('${checkoutRoot.path}/$projectPath');
  if (!await projectDir.exists()) {
    throw StateError(
      'project path not found in cloned repository: $projectPath',
    );
  }
  return projectDir.path;
}
