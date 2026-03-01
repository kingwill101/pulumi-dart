import 'package:pulumi/automation.dart';
import 'package:test/test.dart';

void main() {
  group('automation update summary parsing', () {
    test(
      'parses summary with typed enums, deployment map, and policy packs',
      () {
        final summary = AutomationUpdateSummary.fromJson(<String, dynamic>{
          'kind': 'update',
          'startTime': '2025-01-01T00:00:00Z',
          'endTime': '2025-01-01T00:01:00Z',
          'message': 'deploy',
          'environment': <String, dynamic>{'PULUMI_HOME': '/tmp'},
          'config': <String, dynamic>{
            'proj:plain': <String, dynamic>{'value': 'v', 'secret': false},
            'proj:secret': <String, dynamic>{'secret': true},
          },
          'result': 'succeeded',
          'version': '42',
          'Deployment': '{"resources":[{"urn":"urn:pulumi:dev::proj::stack"}]}',
          'PolicyPacks': <String, dynamic>{'org/policy-pack': 'v1.2.3'},
          'resourceChanges': <String, dynamic>{'create': '2', 'same': 1.0},
        });

        expect(summary.parsedKind, equals(AutomationUpdateKind.update));
        expect(summary.parsedResult, equals(AutomationUpdateResult.succeeded));
        expect(summary.version, equals(42));
        expect(summary.duration, equals(const Duration(minutes: 1)));
        expect(summary.config['proj:plain']?.value, equals('v'));
        expect(summary.config['proj:plain']?.secret, isFalse);
        expect(summary.config['proj:secret']?.value, equals('[secret]'));
        expect(summary.config['proj:secret']?.secret, isTrue);
        expect(summary.deploymentMap?['resources'], hasLength(1));
        expect(summary.policyPacks['org/policy-pack'], equals('v1.2.3'));
        expect(summary.resourceChanges['create'], equals(2));
        expect(summary.resourceChanges['same'], equals(1));
        expect(
          summary.parsedResourceChanges[AutomationOpType.create],
          equals(2),
        );
        expect(summary.totalResourceChanges, equals(3));
        expect(summary.isSuccessful, isTrue);
      },
    );

    test('accepts lower-case deployment and policy packs fields', () {
      final summary = AutomationUpdateSummary.fromJson(<String, dynamic>{
        'kind': 'refresh',
        'result': 'succeeded',
        'deployment': <String, dynamic>{
          'resources': <Map<String, String>>[
            <String, String>{'urn': 'urn:pulumi:dev::proj::res'},
          ],
        },
        'policyPacks': <String, String>{'org/pack': 'v2.0.0'},
      });

      expect(summary.parsedKind, equals(AutomationUpdateKind.refresh));
      expect(summary.deploymentMap?['resources'], hasLength(1));
      expect(summary.policyPacks['org/pack'], equals('v2.0.0'));
    });

    test('keeps non-json deployment string without parsed map', () {
      final summary = AutomationUpdateSummary.fromJson(<String, dynamic>{
        'kind': 'destroy',
        'result': 'succeeded',
        'Deployment': 'not-json',
      });

      expect(summary.deployment, equals('not-json'));
      expect(summary.deploymentMap, isNull);
    });

    test('accepts PascalCase summary fields for compatibility', () {
      final summary = AutomationUpdateSummary.fromJson(<String, dynamic>{
        'Kind': 'update',
        'StartTime': '2025-01-01T00:00:00Z',
        'EndTime': '2025-01-01T00:00:10Z',
        'Message': 'compat',
        'Environment': <String, dynamic>{'PULUMI_HOME': '/tmp'},
        'Config': <String, dynamic>{
          'proj:key': <String, dynamic>{'value': 'v', 'secret': false},
        },
        'Result': 'succeeded',
        'Version': 7,
        'ResourceChanges': <String, dynamic>{'create': '1'},
      });

      expect(summary.kind, equals('update'));
      expect(summary.result, equals('succeeded'));
      expect(summary.version, equals(7));
      expect(summary.message, equals('compat'));
      expect(summary.environment['PULUMI_HOME'], equals('/tmp'));
      expect(summary.config['proj:key']?.value, equals('v'));
      expect(summary.resourceChanges['create'], equals(1));
      expect(summary.duration, equals(const Duration(seconds: 10)));
      expect(summary.parsedKind, equals(AutomationUpdateKind.update));
      expect(summary.parsedResult, equals(AutomationUpdateResult.succeeded));
    });
  });

  group('automation operation permalink parsing', () {
    test('parseOperationPermalink supports upstream stdout prefixes', () {
      final cases = <String, String>{
        'Permalink: https://app.pulumi.com/org/proj/stack/updates/1\n':
            'https://app.pulumi.com/org/proj/stack/updates/1',
        'View Live: https://app.pulumi.com/org/proj/stack/updates/2\n':
            'https://app.pulumi.com/org/proj/stack/updates/2',
        'View in Browser: https://app.pulumi.com/org/proj/stack/updates/3\n':
            'https://app.pulumi.com/org/proj/stack/updates/3',
        'View in Browser (Ctrl+O): https://app.pulumi.com/org/proj/stack/updates/4\n':
            'https://app.pulumi.com/org/proj/stack/updates/4',
      };

      for (final entry in cases.entries) {
        expect(parseOperationPermalink(entry.key), equals(entry.value));
      }
    });

    test('parseOperationPermalink returns null when no permalink exists', () {
      expect(parseOperationPermalink('no permalink here'), isNull);
      expect(parseOperationPermalink('Permalink: \n'), isNull);
    });

    test('AutomationOperationResult exposes parsed permalink getter', () {
      const result = AutomationUpResult(
        commandResult: PulumiCommandResult(
          exitCode: 0,
          stdout:
              'Previewing update\nPermalink: https://app.pulumi.com/org/proj/stack/updates/9\n',
          stderr: '',
        ),
      );

      expect(
        result.permalink,
        equals('https://app.pulumi.com/org/proj/stack/updates/9'),
      );
    });
  });
}
