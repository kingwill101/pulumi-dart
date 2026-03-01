import 'dart:collection';
import 'dart:convert';
import 'dart:io';

import 'package:pulumi/automation.dart' as automation;

class _FakeRunner {
  _FakeRunner(List<automation.PulumiCommandResult> responses)
      : _responses = Queue<automation.PulumiCommandResult>.from(responses);

  final Queue<automation.PulumiCommandResult> _responses;
  final List<automation.PulumiCommandRequest> requests =
      <automation.PulumiCommandRequest>[];

  Future<automation.PulumiCommandResult> call(
    automation.PulumiCommandRequest request,
  ) async {
    requests.add(request);
    if (_responses.isEmpty) {
      throw StateError('No fake response available for ${request.arguments}');
    }
    return _responses.removeFirst();
  }
}

Future<void> main() async {
  final runner = _FakeRunner(<automation.PulumiCommandResult>[
    const automation.PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
    const automation.PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
    const automation.PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
  ]);

  final stack = await automation.RemoteWorkspace.createOrSelectStack(
    const automation.RemoteGitProgramArgs(
      stackName: 'owner/project/stack',
      url: 'https://github.com/pulumi/test-repo.git',
      branch: 'refs/heads/main',
    ),
    remoteOptions: const automation.RemoteWorkspaceOptions(
      envVars: <String, Object>{
        'REGION': 'us-west-2',
        'API_KEY': automation.RemoteSecret('secret-api-key'),
      },
      preRunCommands: <String>['pulumi config set app:name test'],
      skipInstallDependencies: true,
    ),
    workspaceOptions: automation.LocalWorkspaceOptions(
      workDir: Directory.current.path,
      commandRunner: runner.call,
    ),
  );

  await stack.preview();
  await stack.up();

  final payload = <String, Object?>{
    'requestCount': runner.requests.length,
    'selectContainsRemote': runner.requests[0].arguments.contains('--remote'),
    'selectUsesStackLookup': runner.requests[0].arguments.length >= 3 &&
        runner.requests[0].arguments[0] == 'stack' &&
        runner.requests[0].arguments[1] == '--stack',
    'previewContainsRemote': runner.requests[1].arguments.contains('--remote'),
    'upContainsRemote': runner.requests[2].arguments.contains('--remote'),
    'experimentalEnvSet': runner.requests.every(
      (request) => request.environment['PULUMI_EXPERIMENTAL'] == 'true',
    ),
    'remoteEnvFlagPresent': runner.requests.any(
      (request) =>
          request.arguments.contains('--remote-env') &&
          request.arguments.contains('REGION=us-west-2'),
    ),
    'remoteEnvSecretFlagPresent': runner.requests.any(
      (request) =>
          request.arguments.contains('--remote-env-secret') &&
          request.arguments.contains('API_KEY=secret-api-key'),
    ),
  };

  stdout.writeln('AUTOMATION_RESULT:${jsonEncode(payload)}');
}
