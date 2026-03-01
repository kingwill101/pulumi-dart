import 'dart:collection';
import 'dart:io';

import 'package:pulumi/automation.dart';
import 'package:test/test.dart';

class _FakeRunner {
  _FakeRunner(List<PulumiCommandResult> responses)
    : _responses = Queue<PulumiCommandResult>.from(responses);

  final Queue<PulumiCommandResult> _responses;
  final List<PulumiCommandRequest> requests = <PulumiCommandRequest>[];

  Future<PulumiCommandResult> call(PulumiCommandRequest request) async {
    requests.add(request);
    if (_responses.isEmpty) {
      throw StateError('No fake response available for ${request.arguments}');
    }
    return _responses.removeFirst();
  }
}

void main() {
  group('automation remote workspace', () {
    late Directory tempDir;

    setUp(() async {
      tempDir = await Directory.systemTemp.createTemp(
        'pulumi-remote-automation-',
      );
    });

    tearDown(() async {
      if (await tempDir.exists()) {
        await tempDir.delete(recursive: true);
      }
    });

    test('isFullyQualifiedStackName matches upstream semantics', () {
      expect(isFullyQualifiedStackName('owner/project/stack'), isTrue);
      expect(isFullyQualifiedStackName(''), isFalse);
      expect(isFullyQualifiedStackName('name'), isFalse);
      expect(isFullyQualifiedStackName('owner/name'), isFalse);
      expect(isFullyQualifiedStackName('/'), isFalse);
      expect(isFullyQualifiedStackName('//'), isFalse);
      expect(isFullyQualifiedStackName('///'), isFalse);
      expect(isFullyQualifiedStackName('owner/project/stack/wat'), isFalse);
    });

    test('validates remote program arguments', () {
      final invalidCases =
          <
            ({RemoteGitProgramArgs args, bool inheritSettings, Pattern message})
          >[
            (
              args: const RemoteGitProgramArgs(stackName: '', url: ''),
              inheritSettings: false,
              message: 'must be fully qualified',
            ),
            (
              args: const RemoteGitProgramArgs(
                stackName: 'owner/project/stack',
                url: '',
              ),
              inheritSettings: false,
              message: 'url is required if inheritSettings is not set.',
            ),
            (
              args: const RemoteGitProgramArgs(
                stackName: 'owner/project/stack',
                url: 'https://github.com/pulumi/test-repo.git',
              ),
              inheritSettings: false,
              message: 'either branch or commitHash is required',
            ),
            (
              args: const RemoteGitProgramArgs(
                stackName: 'owner/project/stack',
                url: 'https://github.com/pulumi/test-repo.git',
                branch: 'main',
                commitHash: 'abc123',
              ),
              inheritSettings: false,
              message: 'branch and commitHash cannot both be specified',
            ),
            (
              args: const RemoteGitProgramArgs(
                stackName: 'owner/project/stack',
                url: 'https://github.com/pulumi/test-repo.git',
                branch: 'main',
                auth: RemoteGitAuthArgs(
                  sshPrivateKey: 'k',
                  sshPrivateKeyPath: 'p',
                ),
              ),
              inheritSettings: false,
              message:
                  'sshPrivateKey and sshPrivateKeyPath cannot both be specified',
            ),
          ];

      for (final entry in invalidCases) {
        expect(
          () => validateRemoteGitProgramArgs(
            entry.args,
            inheritSettings: entry.inheritSettings,
          ),
          throwsA(
            isA<ArgumentError>().having(
              (error) => error.message,
              'message',
              contains(entry.message),
            ),
          ),
        );
      }

      expect(
        () => validateRemoteGitProgramArgs(
          const RemoteGitProgramArgs(stackName: 'owner/project/stack'),
          inheritSettings: true,
        ),
        returnsNormally,
      );
    });

    test('buildRemoteWorkspaceArgs emits expected CLI flags', () {
      final args = buildRemoteWorkspaceArgs(
        const RemoteGitProgramArgs(
          stackName: 'owner/project/stack',
          url: 'https://github.com/pulumi/test-repo.git',
          projectPath: 'goproj',
          branch: 'refs/heads/main',
          auth: RemoteGitAuthArgs(
            personalAccessToken: 'token',
            username: 'alice',
            password: 'secret',
          ),
        ),
        options: const RemoteWorkspaceOptions(
          envVars: <String, Object>{
            'REGION': 'us-west-2',
            'API_KEY': RemoteSecret('secret-api-key'),
          },
          preRunCommands: <String>['pulumi config set app:name test'],
          skipInstallDependencies: true,
          inheritSettings: true,
          executorImage: ExecutorImage(
            image: 'ghcr.io/pulumi/example:latest',
            credentials: DockerImageCredentials(
              username: 'registry-user',
              password: 'registry-pass',
            ),
          ),
        ),
      );

      expect(
        args,
        containsAllInOrder(<String>[
          '--remote',
          'https://github.com/pulumi/test-repo.git',
          '--remote-git-repo-dir',
          'goproj',
          '--remote-git-branch',
          'refs/heads/main',
          '--remote-git-auth-access-token',
          'token',
          '--remote-git-auth-password',
          'secret',
          '--remote-git-auth-username',
          'alice',
          '--remote-env',
          'REGION=us-west-2',
          '--remote-env-secret',
          'API_KEY=secret-api-key',
          '--remote-pre-run-command',
          'pulumi config set app:name test',
          '--remote-skip-install-dependencies',
          '--remote-executor-image=ghcr.io/pulumi/example:latest',
          '--remote-executor-image-username=registry-user',
          '--remote-executor-image-password=registry-pass',
          '--remote-inherit-settings',
        ]),
      );
    });

    test('buildRemoteWorkspaceArgs rejects unsupported env var values', () {
      expect(
        () => buildRemoteWorkspaceArgs(
          const RemoteGitProgramArgs(
            stackName: 'owner/project/stack',
            url: 'https://github.com/pulumi/test-repo.git',
            branch: 'refs/heads/main',
          ),
          options: const RemoteWorkspaceOptions(
            envVars: <String, Object>{'BAD': 123},
          ),
        ),
        throwsA(
          isA<ArgumentError>().having(
            (error) => error.message,
            'message',
            contains("unexpected env value '123' for key 'BAD'"),
          ),
        ),
      );
    });

    test(
      'RemoteWorkspace.createStack appends remote args and env to commands',
      () async {
        final runner = _FakeRunner(<PulumiCommandResult>[
          const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
          const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
        ]);
        final args = const RemoteGitProgramArgs(
          stackName: 'owner/project/stack',
          url: 'https://github.com/pulumi/test-repo.git',
          branch: 'refs/heads/main',
        );

        final stack = await RemoteWorkspace.createStack(
          args,
          workspaceOptions: LocalWorkspaceOptions(
            workDir: tempDir.path,
            commandRunner: runner.call,
          ),
        );
        await stack.preview();

        expect(runner.requests, hasLength(2));
        expect(
          runner.requests[0].arguments,
          equals(<String>[
            'stack',
            'init',
            'owner/project/stack',
            '--no-select',
          ]),
        );
        expect(
          runner.requests[1].arguments,
          equals(<String>[
            'preview',
            '--remote',
            'https://github.com/pulumi/test-repo.git',
            '--remote-git-branch',
            'refs/heads/main',
            '--stack',
            'owner/project/stack',
            '--non-interactive',
          ]),
        );
        expect(
          runner.requests[0].environment['PULUMI_EXPERIMENTAL'],
          equals('true'),
        );
        expect(
          runner.requests[1].environment['PULUMI_EXPERIMENTAL'],
          equals('true'),
        );
      },
    );

    test(
      'RemoteWorkspace.createOrSelectStack falls back to init with remote args',
      () async {
        final runner = _FakeRunner(<PulumiCommandResult>[
          const PulumiCommandResult(
            exitCode: 255,
            stdout: '',
            stderr: 'error: no stack named owner/project/stack found',
          ),
          const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
        ]);
        const args = RemoteGitProgramArgs(
          stackName: 'owner/project/stack',
          url: 'https://github.com/pulumi/test-repo.git',
          branch: 'refs/heads/main',
        );

        final stack = await RemoteWorkspace.createOrSelectStack(
          args,
          workspaceOptions: LocalWorkspaceOptions(
            workDir: tempDir.path,
            commandRunner: runner.call,
          ),
        );

        expect(stack.name, equals('owner/project/stack'));
        expect(runner.requests, hasLength(2));
        expect(
          runner.requests[0].arguments,
          equals(<String>['stack', '--stack', 'owner/project/stack']),
        );
        expect(
          runner.requests[1].arguments,
          equals(<String>[
            'stack',
            'init',
            'owner/project/stack',
            '--no-select',
          ]),
        );
      },
    );
  });
}
