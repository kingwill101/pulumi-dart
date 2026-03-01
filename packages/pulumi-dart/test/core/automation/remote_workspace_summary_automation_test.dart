import 'dart:collection';
import 'dart:convert';
import 'dart:io';

import 'package:pulumi/automation.dart';
import 'package:test/test.dart';

class _SummaryFakeRunner {
  _SummaryFakeRunner(List<PulumiCommandResult> responses)
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
  group('automation remote workspace summary parsing', () {
    late Directory tempDir;

    setUp(() async {
      tempDir = await Directory.systemTemp.createTemp(
        'pulumi-remote-summary-automation-',
      );
    });

    tearDown(() async {
      if (await tempDir.exists()) {
        await tempDir.delete(recursive: true);
      }
    });

    test('remote stack upResult includes typed summary fields', () async {
      final runner = _SummaryFakeRunner(<PulumiCommandResult>[
        const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
        const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
        PulumiCommandResult(
          exitCode: 0,
          stdout: jsonEncode(<Map<String, dynamic>>[
            <String, dynamic>{
              'kind': 'update',
              'startTime': '2025-01-10T00:00:00Z',
              'endTime': '2025-01-10T00:00:30Z',
              'message': 'remote deploy',
              'environment': <String, String>{'PULUMI_HOME': '/tmp'},
              'config': <String, Object?>{},
              'result': 'succeeded',
              'version': 100,
              'deployment': <String, Object?>{'resources': <Object?>[]},
              'policyPacks': <String, String>{'org/policy-pack': 'v4.0.0'},
              'resourceChanges': <String, int>{'same': 1},
            },
          ]),
          stderr: '',
        ),
      ]);

      const args = RemoteGitProgramArgs(
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

      final result = await stack.upResult(
        includeOutputs: false,
        captureEvents: false,
      );

      expect(result.succeeded, isTrue);
      expect(result.summary, isNotNull);
      expect(result.summary?.parsedKind, equals(AutomationUpdateKind.update));
      expect(
        result.summary?.parsedResult,
        equals(AutomationUpdateResult.succeeded),
      );
      expect(result.summary?.deploymentMap?['resources'], isEmpty);
      expect(result.summary?.policyPacks['org/policy-pack'], equals('v4.0.0'));
      expect(result.summary?.resourceChanges['same'], equals(1));

      expect(runner.requests, hasLength(3));
      expect(
        runner.requests[0].arguments,
        equals(<String>['stack', 'init', 'owner/project/stack', '--no-select']),
      );
      expect(
        runner.requests[1].arguments,
        equals(<String>[
          'up',
          '--remote',
          'https://github.com/pulumi/test-repo.git',
          '--remote-git-branch',
          'refs/heads/main',
          '--stack',
          'owner/project/stack',
          '--yes',
          '--skip-preview',
          '--non-interactive',
        ]),
      );
      expect(
        runner.requests[2].arguments,
        equals(<String>[
          'stack',
          'history',
          '--json',
          '--stack',
          'owner/project/stack',
          '--page-size',
          '1',
        ]),
      );
    });

    test(
      'remote upResult waits for terminal summary before loading outputs',
      () async {
        final runner = _SummaryFakeRunner(<PulumiCommandResult>[
          const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
          const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
          PulumiCommandResult(
            exitCode: 0,
            stdout: jsonEncode(<Map<String, dynamic>>[
              <String, dynamic>{
                'kind': 'update',
                'startTime': '2025-01-10T00:00:00Z',
                'message': 'remote deploy',
                'environment': <String, String>{},
                'config': <String, Object?>{},
                'result': 'in-progress',
              },
            ]),
            stderr: '',
          ),
          PulumiCommandResult(
            exitCode: 0,
            stdout: jsonEncode(<Map<String, dynamic>>[
              <String, dynamic>{
                'kind': 'update',
                'startTime': '2025-01-10T00:00:00Z',
                'endTime': '2025-01-10T00:00:30Z',
                'message': 'remote deploy',
                'environment': <String, String>{},
                'config': <String, Object?>{},
                'result': 'succeeded',
                'version': 101,
                'resourceChanges': <String, int>{'create': 1, 'same': 1},
              },
            ]),
            stderr: '',
          ),
          PulumiCommandResult(
            exitCode: 0,
            stdout: jsonEncode(<String, dynamic>{
              'petName': '[secret]',
              'region': 'us-west-2',
            }),
            stderr: '',
          ),
          PulumiCommandResult(
            exitCode: 0,
            stdout: jsonEncode(<String, dynamic>{
              'petName': 'fluffy-panda',
              'region': 'us-west-2',
            }),
            stderr: '',
          ),
        ]);

        const args = RemoteGitProgramArgs(
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

        final result = await stack.upResult(captureEvents: false);

        expect(result.succeeded, isTrue);
        expect(result.summary, isNotNull);
        expect(
          result.summary?.parsedResult,
          equals(AutomationUpdateResult.succeeded),
        );
        expect(result.summary?.version, equals(101));
        expect(result.summary?.resourceChanges['create'], equals(1));
        expect(result.outputs, isNotNull);
        expect(result.outputs?['petName']?.secret, isTrue);
        expect(result.outputs?['petName']?.value, equals('fluffy-panda'));
        expect(result.outputs?['region']?.secret, isFalse);
        expect(result.outputs?['region']?.value, equals('us-west-2'));

        expect(runner.requests, hasLength(6));
        expect(
          runner.requests[2].arguments,
          equals(<String>[
            'stack',
            'history',
            '--json',
            '--stack',
            'owner/project/stack',
            '--page-size',
            '1',
          ]),
        );
        expect(
          runner.requests[3].arguments,
          equals(<String>[
            'stack',
            'history',
            '--json',
            '--stack',
            'owner/project/stack',
            '--page-size',
            '1',
          ]),
        );
        expect(
          runner.requests[4].arguments,
          equals(<String>[
            'stack',
            'output',
            '--json',
            '--stack',
            'owner/project/stack',
          ]),
        );
        expect(
          runner.requests[5].arguments,
          equals(<String>[
            'stack',
            'output',
            '--json',
            '--stack',
            'owner/project/stack',
            '--show-secrets',
          ]),
        );
      },
    );

    test('remote upResult ignores showSummarySecrets history flag', () async {
      final runner = _SummaryFakeRunner(<PulumiCommandResult>[
        const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
        const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
        PulumiCommandResult(
          exitCode: 0,
          stdout: jsonEncode(<Map<String, dynamic>>[
            <String, dynamic>{
              'kind': 'update',
              'startTime': '2025-01-10T00:00:00Z',
              'endTime': '2025-01-10T00:00:30Z',
              'message': 'remote deploy',
              'environment': <String, String>{},
              'config': <String, Object?>{},
              'result': 'succeeded',
              'version': 22,
            },
          ]),
          stderr: '',
        ),
      ]);

      const args = RemoteGitProgramArgs(
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

      final result = await stack.upResult(
        includeOutputs: false,
        showSummarySecrets: true,
        captureEvents: false,
      );

      expect(result.succeeded, isTrue);
      expect(result.summary?.version, equals(22));
      expect(runner.requests, hasLength(3));
      expect(
        runner.requests[2].arguments,
        equals(<String>[
          'stack',
          'history',
          '--json',
          '--stack',
          'owner/project/stack',
          '--page-size',
          '1',
        ]),
      );
    });
  });
}
