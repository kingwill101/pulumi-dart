import 'dart:io';

import 'package:pulumi/automation.dart' as automation;

Future<void> main(List<String> args) async {
  if (args.isEmpty) {
    stderr.writeln('usage: dart run bin/main.dart <org> [destroy]');
    exitCode = 1;
    return;
  }

  final org = args[0].trim();
  if (org.isEmpty) {
    stderr.writeln('organization/user name is required');
    exitCode = 1;
    return;
  }

  final destroy = args.length > 1 && args[1] == 'destroy';
  const project = 'aws-ts-s3-folder';
  final stackName = '$org/$project/dev';
  const repoUrl = 'https://github.com/pulumi/examples.git';
  const repoBranch = 'refs/heads/master';
  final awsRegion = Platform.environment['AWS_REGION']?.trim() ?? 'us-west-2';

  final stack = await automation.RemoteWorkspace.createOrSelectStack(
    automation.RemoteGitProgramArgs(
      stackName: stackName,
      url: repoUrl,
      projectPath: project,
      branch: repoBranch,
    ),
    remoteOptions: automation.RemoteWorkspaceOptions(
      envVars: <String, Object>{
        'AWS_REGION': awsRegion,
        'AWS_ACCESS_KEY_ID': Platform.environment['AWS_ACCESS_KEY_ID'] ?? '',
        'AWS_SECRET_ACCESS_KEY': automation.RemoteSecret(
          Platform.environment['AWS_SECRET_ACCESS_KEY'] ?? '',
        ),
        'AWS_SESSION_TOKEN': automation.RemoteSecret(
          Platform.environment['AWS_SESSION_TOKEN'] ?? '',
        ),
      },
    ),
    workspaceOptions: automation.LocalWorkspaceOptions(
      workDir: Directory.current.path,
    ),
  );

  if (destroy) {
    await stack.destroy(yes: true, skipPreview: true);
    stdout.writeln('Stack successfully destroyed');
    return;
  }

  await stack.up();
  stdout.writeln('Update succeeded!');

  final outputs = await stack.outputs(showSecrets: true);
  stdout.writeln('URL: ${outputs['websiteUrl']}');
}
