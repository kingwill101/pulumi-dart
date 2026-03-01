// Required for Pulumi internal protobuf/runtime bindings in tests.
// ignore_for_file: implementation_imports

import 'package:grpc/grpc.dart';
import 'package:protobuf/well_known_types/google/protobuf/empty.pb.dart';
import 'package:pulumi/src/pulumirpc/pulumi/analyzer.pb.dart' as analyzerpb;
import 'package:pulumi/src/struct_converter.dart';
import 'package:pulumi_policy/pulumi_policy.dart';
import 'package:pulumi_policy/src/policy.dart';
import 'package:test/test.dart';

class _FakeServiceCall implements ServiceCall {
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

Future<analyzerpb.AnalyzeRequest> _newAnalyzeRequest({
  required String type,
  required Map<String, dynamic> properties,
  String urn = 'urn:pulumi:dev::proj::pkg:index:Resource::res',
  String name = 'res',
}) async {
  return analyzerpb.AnalyzeRequest(
    type: type,
    urn: urn,
    name: name,
    options: analyzerpb.AnalyzerResourceOptions(),
    properties: await StructConverter.toStruct(properties),
  );
}

void main() {
  group('PolicyConfigSchema', () {
    test('rejects enforcementLevel as config property', () {
      expect(
        () => PolicyConfigSchema(
          properties: const {
            'enforcementLevel': {'type': 'string'},
          },
        ),
        throwsArgumentError,
      );
    });
  });

  group('Resource helpers', () {
    test('validateResourceOfType only applies to matching types', () async {
      var invoked = false;
      final validation = validateResourceOfType<Map<String, Object?>>(
        'pkg:index:Widget',
        (props, args, reportViolation) {
          invoked = true;
          expect(props['value'], 'ok');
        },
      );

      await validation(
        const ResourceValidationArgs(
          type: 'pkg:index:Widget',
          props: {'value': 'ok'},
          urn: 'urn:pulumi:dev::proj::pkg:index:Widget::w',
          name: 'w',
          opts: PolicyResourceOptions(
            protect: false,
            ignoreChanges: [],
            aliases: [],
            customTimeouts: PolicyCustomTimeouts(
              createSeconds: 0,
              updateSeconds: 0,
              deleteSeconds: 0,
            ),
            additionalSecretOutputs: [],
          ),
          stackTags: {},
        ),
        (_, [__]) {},
      );

      expect(invoked, isTrue);
    });
  });

  group('PolicyPack', () {
    test('can be constructed without booting server in tests', () {
      final policy = ResourceValidationPolicy(
        name: 'test-policy',
        description: 'test',
        validateResource: [(_, __) {}],
      );

      expect(
        () => PolicyPack(
          'test-pack',
          PolicyPackArgs(policies: [policy]),
          startServer: false,
        ),
        returnsNormally,
      );
    });
  });

  group('PolicyAnalyzerServer', () {
    final call = _FakeServiceCall();

    test('getAnalyzerInfo includes initial config and metadata', () async {
      final policy = ResourceValidationPolicy(
        name: 'policy-a',
        description: 'policy-a description',
        enforcementLevel: EnforcementLevel.advisory,
        validateResource: [(_, __) {}],
      );

      final server = PolicyAnalyzerServer(
        policyPackName: 'pack-a',
        policyPackVersion: '1.2.3',
        defaultEnforcementLevel: EnforcementLevel.mandatory,
        policyPackArgs: PolicyPackArgs(
          policies: [policy],
          displayName: 'Pack A',
          description: 'pack description',
        ),
        initialConfig: {
          'policy-a': {
            'enforcementLevel': 'disabled',
            'flag': true,
          },
        },
      );

      final info = await server.getAnalyzerInfo(call, Empty());
      expect(info.name, equals('pack-a'));
      expect(info.version, equals('1.2.3'));
      expect(info.displayName, equals('Pack A'));
      expect(info.description, equals('pack description'));
      expect(info.policies.single.name, equals('policy-a'));
      expect(
        info.initialConfig['policy-a']?.enforcementLevel,
        equals(analyzerpb.EnforcementLevel.DISABLED),
      );

      final props = StructConverter.fromStruct(
        info.initialConfig['policy-a']!.properties,
      );
      expect(props['flag'], isTrue);
    });

    test('configure can disable a policy at runtime', () async {
      final policy = ResourceValidationPolicy(
        name: 'policy-a',
        description: 'should not run',
        validateResource: [
          (args, reportViolation) {
            reportViolation('violation');
          },
        ],
      );

      final server = PolicyAnalyzerServer(
        policyPackName: 'pack-a',
        policyPackVersion: '1.0.0',
        defaultEnforcementLevel: EnforcementLevel.advisory,
        policyPackArgs: PolicyPackArgs(policies: [policy]),
        initialConfig: null,
      );

      await server.configure(
        call,
        analyzerpb.ConfigureAnalyzerRequest(
          policyConfig: <MapEntry<String, analyzerpb.PolicyConfig>>[
            MapEntry(
              'policy-a',
              analyzerpb.PolicyConfig(
                enforcementLevel: analyzerpb.EnforcementLevel.DISABLED,
              ),
            ),
          ],
        ),
      );

      final response = await server.analyze(
        call,
        await _newAnalyzeRequest(
          type: 'pkg:index:Resource',
          properties: const {'value': true},
        ),
      );

      expect(response.diagnostics, isEmpty);
    });

    test('analyzeStack forwards stack-level violations', () async {
      final policy = StackValidationPolicy(
        name: 'stack-policy',
        description: 'stack policy description',
        enforcementLevel: EnforcementLevel.mandatory,
        validateStack: (args, reportViolation) {
          reportViolation('stack violation');
        },
      );

      final server = PolicyAnalyzerServer(
        policyPackName: 'pack-a',
        policyPackVersion: '1.0.0',
        defaultEnforcementLevel: EnforcementLevel.advisory,
        policyPackArgs: PolicyPackArgs(policies: [policy]),
        initialConfig: null,
      );

      final response = await server.analyzeStack(
        call,
        analyzerpb.AnalyzeStackRequest(
          resources: [
            analyzerpb.AnalyzerResource(
              type: 'pkg:index:Resource',
              urn: 'urn:pulumi:dev::proj::pkg:index:Resource::res',
              name: 'res',
              options: analyzerpb.AnalyzerResourceOptions(),
              properties: await StructConverter.toStruct({'value': true}),
            ),
          ],
        ),
      );

      expect(response.diagnostics, hasLength(1));
      expect(response.diagnostics.single.policyName, equals('stack-policy'));
      expect(
        response.diagnostics.single.enforcementLevel,
        equals(analyzerpb.EnforcementLevel.MANDATORY),
      );
      expect(response.diagnostics.single.message, contains('stack violation'));
    });

    test('remediate returns transformed properties', () async {
      final policy = ResourceValidationPolicy(
        name: 'remediate-policy',
        description: 'remediate description',
        enforcementLevel: EnforcementLevel.remediate,
        remediateResource: (args) {
          return {'value': true};
        },
      );

      final server = PolicyAnalyzerServer(
        policyPackName: 'pack-a',
        policyPackVersion: '1.0.0',
        defaultEnforcementLevel: EnforcementLevel.advisory,
        policyPackArgs: PolicyPackArgs(policies: [policy]),
        initialConfig: null,
      );

      final response = await server.remediate(
        call,
        await _newAnalyzeRequest(
          type: 'pkg:index:Resource',
          properties: const {'value': false},
        ),
      );

      expect(response.remediations, hasLength(1));
      final properties = StructConverter.fromStruct(
        response.remediations.single.properties,
      );
      expect(properties['value'], isTrue);
    });
  });
}
