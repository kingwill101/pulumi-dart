// Required for Pulumi internal protobuf/runtime bindings in tests.
// ignore_for_file: implementation_imports

import 'package:grpc/grpc.dart';
import 'package:protobuf/well_known_types/google/protobuf/empty.pb.dart';
import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart';
import 'package:pulumi/pulumi.dart'
    show AssetArchive, FileAsset, RemoteArchive, StringAsset;
import 'package:pulumi/src/constants.dart';
import 'package:pulumi/src/pulumirpc/pulumi/analyzer.pb.dart' as analyzerpb;
import 'package:pulumi/src/struct_converter.dart';
import 'package:pulumi_policy/pulumi_policy.dart';
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
              readSeconds: 0,
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
          'policy-a': {'enforcementLevel': 'disabled', 'flag': true},
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

    test(
      'analyzeStack maps resource graph, options, and provider metadata',
      () async {
        final policy = StackValidationPolicy(
          name: 'stack-graph-policy',
          description: 'stack graph mapping',
          enforcementLevel: EnforcementLevel.mandatory,
          validateStack: (args, reportViolation) {
            expect(args.stackTags['team'], equals('platform'));

            final parent = args.resources.firstWhere((r) => r.name == 'parent');
            final child = args.resources.firstWhere((r) => r.name == 'child');

            expect(child.parent?.urn, equals(parent.urn));
            expect(child.dependencies.map((d) => d.urn), contains(parent.urn));
            expect(
              child.propertyDependencies['nestedRef']?.map((d) => d.urn),
              contains(parent.urn),
            );

            expect(child.opts.protect, isTrue);
            expect(child.opts.ignoreChanges, contains('tags'));
            expect(child.opts.deleteBeforeReplace, isTrue);
            expect(
              child.opts.aliases,
              contains('urn:pulumi:dev::proj::alias::child'),
            );
            expect(child.opts.customTimeouts.createSeconds, equals(10));
            expect(child.opts.customTimeouts.updateSeconds, equals(20));
            expect(child.opts.customTimeouts.deleteSeconds, equals(30));
            expect(child.opts.customTimeouts.readSeconds, equals(40));
            expect(child.opts.parent, equals(parent.urn));
            expect(child.opts.additionalSecretOutputs, contains('token'));

            expect(child.provider, isNotNull);
            expect(
              child.provider?.urn,
              equals('urn:pulumi:dev::proj::pulumi:providers:test::default'),
            );
            expect(child.provider?.name, equals('default'));
            expect(child.provider?.type, equals('pulumi:providers:test'));
            expect(child.provider?.props['region'], equals('us-west-2'));

            reportViolation('graph verified', child.urn);
          },
        );

        final server = PolicyAnalyzerServer(
          policyPackName: 'pack-a',
          policyPackVersion: '1.0.0',
          defaultEnforcementLevel: EnforcementLevel.advisory,
          policyPackArgs: PolicyPackArgs(policies: [policy]),
          initialConfig: null,
        );

        await server.configureStack(
          call,
          analyzerpb.AnalyzerStackConfigureRequest(
            organization: 'acme',
            project: 'proj',
            stack: 'dev',
            dryRun: true,
            tags: const <MapEntry<String, String>>[
              MapEntry('team', 'platform'),
            ],
          ),
        );

        final parentUrn = 'urn:pulumi:dev::proj::pkg:index:Resource::parent';
        final childUrn = 'urn:pulumi:dev::proj::pkg:index:Resource::child';

        final response = await server.analyzeStack(
          call,
          analyzerpb.AnalyzeStackRequest(
            resources: [
              analyzerpb.AnalyzerResource(
                type: 'pkg:index:Resource',
                urn: parentUrn,
                name: 'parent',
                options: analyzerpb.AnalyzerResourceOptions(),
                properties: await StructConverter.toStruct({'name': 'parent'}),
              ),
              analyzerpb.AnalyzerResource(
                type: 'pkg:index:Resource',
                urn: childUrn,
                name: 'child',
                options: analyzerpb.AnalyzerResourceOptions(
                  protect: true,
                  ignoreChanges: const ['tags'],
                  deleteBeforeReplace: true,
                  deleteBeforeReplaceDefined: true,
                  aliases: const ['urn:pulumi:dev::proj::alias::child'],
                  additionalSecretOutputs: const ['token'],
                  customTimeouts:
                      analyzerpb.AnalyzerResourceOptions_CustomTimeouts(
                        create_1: 10,
                        update: 20,
                        delete: 30,
                        read: 40,
                      ),
                  parent: parentUrn,
                ),
                provider: analyzerpb.AnalyzerProviderResource(
                  type: 'pulumi:providers:test',
                  urn: 'urn:pulumi:dev::proj::pulumi:providers:test::default',
                  name: 'default',
                  properties: await StructConverter.toStruct({
                    'region': 'us-west-2',
                  }),
                ),
                parent: parentUrn,
                // Keep one unknown dependency to verify it is ignored.
                dependencies: [
                  parentUrn,
                  'urn:pulumi:dev::proj::pkg:index:Resource::missing',
                ],
                propertyDependencies: [
                  MapEntry(
                    'nestedRef',
                    analyzerpb.AnalyzerPropertyDependencies(
                      urns: [
                        parentUrn,
                        'urn:pulumi:dev::proj::pkg:index:Resource::missing',
                      ],
                    ),
                  ),
                ],
                properties: await StructConverter.toStruct({'name': 'child'}),
              ),
            ],
          ),
        );

        expect(response.notApplicable, isEmpty);
        expect(response.diagnostics, hasLength(1));
        expect(
          response.diagnostics.single.policyName,
          equals('stack-graph-policy'),
        );
        expect(response.diagnostics.single.urn, equals(childUrn));
        expect(response.diagnostics.single.message, contains('graph verified'));
      },
    );

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

    test(
      'analyze honors reportViolation URN override and default URN',
      () async {
        const defaultUrn = 'urn:pulumi:dev::proj::pkg:index:Resource::default';
        const customUrn = 'urn:pulumi:dev::proj::pkg:index:Resource::custom';

        final policy = ResourceValidationPolicy(
          name: 'urn-policy',
          description: 'URN behavior',
          enforcementLevel: EnforcementLevel.mandatory,
          validateResource: [
            (args, reportViolation) {
              reportViolation('uses default urn');
              reportViolation('uses custom urn', customUrn);
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

        final response = await server.analyze(
          call,
          await _newAnalyzeRequest(
            type: 'pkg:index:Resource',
            properties: const {'value': true},
            urn: defaultUrn,
          ),
        );

        expect(response.diagnostics, hasLength(2));
        expect(response.diagnostics[0].urn, equals(defaultUrn));
        expect(response.diagnostics[1].urn, equals(customUrn));
        expect(response.diagnostics[0].message, contains('uses default urn'));
        expect(response.diagnostics[1].message, contains('uses custom urn'));
      },
    );

    test('analyze preserves policy and callback diagnostic ordering', () async {
      final first = ResourceValidationPolicy(
        name: 'first-policy',
        description: 'first',
        validateResource: [
          (args, reportViolation) {
            reportViolation('first-1');
          },
          (args, reportViolation) {
            reportViolation('first-2');
          },
        ],
      );

      final second = ResourceValidationPolicy(
        name: 'second-policy',
        description: 'second',
        validateResource: [
          (args, reportViolation) {
            reportViolation('second-1');
          },
        ],
      );

      final server = PolicyAnalyzerServer(
        policyPackName: 'pack-a',
        policyPackVersion: '1.0.0',
        defaultEnforcementLevel: EnforcementLevel.advisory,
        policyPackArgs: PolicyPackArgs(policies: [first, second]),
        initialConfig: null,
      );

      final response = await server.analyze(
        call,
        await _newAnalyzeRequest(
          type: 'pkg:index:Resource',
          properties: const {'value': true},
        ),
      );

      final order = response.diagnostics
          .map((d) => '${d.policyName}:${d.message.split('\n').last}')
          .toList(growable: false);

      expect(
        order,
        equals(<String>[
          'first-policy:first-1',
          'first-policy:first-2',
          'second-policy:second-1',
        ]),
      );
    });

    test(
      'analyze records not-applicable and continues other policies',
      () async {
        final skipped = ResourceValidationPolicy(
          name: 'skipped-policy',
          description: 'skipped',
          validateResource: [
            (args, reportViolation) {
              args.notApplicable('resource type not applicable');
            },
          ],
        );

        final active = ResourceValidationPolicy(
          name: 'active-policy',
          description: 'active',
          validateResource: [
            (args, reportViolation) {
              reportViolation('active violation');
            },
          ],
        );

        final server = PolicyAnalyzerServer(
          policyPackName: 'pack-a',
          policyPackVersion: '1.0.0',
          defaultEnforcementLevel: EnforcementLevel.advisory,
          policyPackArgs: PolicyPackArgs(policies: [skipped, active]),
          initialConfig: null,
        );

        final response = await server.analyze(
          call,
          await _newAnalyzeRequest(
            type: 'pkg:index:Resource',
            properties: const {'value': true},
          ),
        );

        expect(response.notApplicable, hasLength(1));
        expect(
          response.notApplicable.single.policyName,
          equals('skipped-policy'),
        );
        expect(
          response.notApplicable.single.reason,
          equals('resource type not applicable'),
        );
        expect(response.diagnostics, hasLength(1));
        expect(response.diagnostics.single.policyName, equals('active-policy'));
      },
    );

    test('remediate records not-applicable callbacks and continues', () async {
      final noFix = ResourceValidationPolicy(
        name: 'no-fix',
        description: 'no fix available',
        enforcementLevel: EnforcementLevel.remediate,
        remediateResource: (args) {
          args.notApplicable('not remediable');
        },
      );

      final fixer = ResourceValidationPolicy(
        name: 'fixer',
        description: 'fixes value',
        enforcementLevel: EnforcementLevel.remediate,
        remediateResource: (args) {
          return {'value': true};
        },
      );

      final server = PolicyAnalyzerServer(
        policyPackName: 'pack-a',
        policyPackVersion: '1.0.0',
        defaultEnforcementLevel: EnforcementLevel.advisory,
        policyPackArgs: PolicyPackArgs(policies: [noFix, fixer]),
        initialConfig: null,
      );

      final response = await server.remediate(
        call,
        await _newAnalyzeRequest(
          type: 'pkg:index:Resource',
          properties: const {'value': false},
        ),
      );

      expect(response.notApplicable, hasLength(1));
      expect(response.notApplicable.single.policyName, equals('no-fix'));
      expect(response.notApplicable.single.reason, equals('not remediable'));
      expect(response.remediations, hasLength(1));
      expect(response.remediations.single.policyName, equals('fixer'));
    });

    test(
      'remediate preserves secret sentinels in transformed properties',
      () async {
        final policy = ResourceValidationPolicy(
          name: 'secret-remediation',
          description: 'returns secret remediation payload',
          enforcementLevel: EnforcementLevel.remediate,
          remediateResource: (args) {
            return {
              'plain': 'ok',
              'token': const Secret('abc123'),
              'nested': {
                'items': [const Secret(42)],
              },
            };
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

        expect(properties['plain'], equals('ok'));
        expect(properties['token'], equals('abc123'));

        final rawProperties = response.remediations.single.properties;
        final rawToken = rawProperties.fields['token'];
        expect(rawToken, isNotNull);
        expect(rawToken!.whichKind(), equals(Value_Kind.structValue));

        final tokenStruct = rawToken.structValue;
        expect(
          tokenStruct.fields[Constants.specialSigKey]?.stringValue,
          equals(Constants.specialSecretSig),
        );
        expect(
          tokenStruct.fields[Constants.valueName]?.stringValue,
          equals('abc123'),
        );

        final rawNested = rawProperties.fields['nested'];
        expect(rawNested, isNotNull);
        final nestedStruct = rawNested!.structValue;
        final itemsValue = nestedStruct.fields['items'];
        expect(itemsValue, isNotNull);
        final items = itemsValue!.listValue.values;
        expect(items, hasLength(1));

        final firstSecret = items.first.structValue;
        expect(
          firstSecret.fields[Constants.specialSigKey]?.stringValue,
          equals(Constants.specialSecretSig),
        );
        expect(
          firstSecret.fields[Constants.valueName]?.numberValue,
          equals(42),
        );

        final nested = properties['nested']! as Map<String, Object?>;
        final nestedItems = nested['items']! as List<Object?>;
        expect(nestedItems.first, equals(42));
      },
    );

    test('analyze reports unknown preview value access as advisory', () async {
      final policy = ResourceValidationPolicy(
        name: 'unknown-policy',
        description: 'reads a computed property',
        enforcementLevel: EnforcementLevel.mandatory,
        validateResource: [
          (args, reportViolation) {
            final nested = args.props['nested']! as Map<String, Object?>;
            nested['computed'];
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
      final properties = Struct()
        ..fields['nested'] = (Value()
          ..structValue = (Struct()
            ..fields['computed'] = (Value()
              ..stringValue = Constants.unknownNumberValue)));

      final response = await server.analyze(
        call,
        analyzerpb.AnalyzeRequest(
          type: 'pkg:index:Resource',
          urn: 'urn:pulumi:dev::proj::pkg:index:Resource::res',
          name: 'res',
          options: analyzerpb.AnalyzerResourceOptions(),
          properties: properties,
        ),
      );

      expect(response.diagnostics, hasLength(1));
      expect(
        response.diagnostics.single.enforcementLevel,
        analyzerpb.EnforcementLevel.ADVISORY,
      );
      expect(response.diagnostics.single.message, contains('.nested.computed'));
      expect(response.diagnostics.single.message, contains('number value'));
    });

    test('analyze decodes assets, archives, and plaintext secrets', () async {
      final policy = ResourceValidationPolicy(
        name: 'value-policy',
        description: 'checks decoded runtime values',
        validateResource: [
          (args, reportViolation) {
            expect(args.props['file'], isA<FileAsset>());
            expect(args.props['text'], isA<StringAsset>());
            expect(args.props['archive'], isA<RemoteArchive>());
            final assets = args.props['assets']! as AssetArchive;
            expect(assets.assets['nested'], isA<StringAsset>());
            expect(args.props['token'], equals('plaintext'));
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
      final properties = await StructConverter.toStruct({
        'file': FileAsset('/tmp/file.txt'),
        'text': StringAsset('hello'),
        'archive': RemoteArchive('https://example.com/archive.tgz'),
        'assets': AssetArchive({'nested': StringAsset('nested')}),
        'token': {
          Constants.specialSigKey: Constants.specialSecretSig,
          Constants.valueName: 'plaintext',
        },
      });

      final response = await server.analyze(
        call,
        analyzerpb.AnalyzeRequest(
          type: 'pkg:index:Resource',
          urn: 'urn:pulumi:dev::proj::pkg:index:Resource::res',
          name: 'res',
          options: analyzerpb.AnalyzerResourceOptions(),
          properties: properties,
        ),
      );

      expect(response.diagnostics, isEmpty);
    });

    test(
      'remediate preserves secrecy when mutating a secret property',
      () async {
        final policy = ResourceValidationPolicy(
          name: 'secret-copy-policy',
          description: 'updates a secret without losing its marker',
          enforcementLevel: EnforcementLevel.remediate,
          remediateResource: (args) {
            expect(args.props['token'], equals('original'));
            args.props['token'] = 'replacement';
            return args.props;
          },
        );
        final server = PolicyAnalyzerServer(
          policyPackName: 'pack-a',
          policyPackVersion: '1.0.0',
          defaultEnforcementLevel: EnforcementLevel.advisory,
          policyPackArgs: PolicyPackArgs(policies: [policy]),
          initialConfig: null,
        );
        final properties = await StructConverter.toStruct({
          'token': {
            Constants.specialSigKey: Constants.specialSecretSig,
            Constants.valueName: 'original',
          },
        });

        final response = await server.remediate(
          call,
          analyzerpb.AnalyzeRequest(
            type: 'pkg:index:Resource',
            urn: 'urn:pulumi:dev::proj::pkg:index:Resource::res',
            name: 'res',
            options: analyzerpb.AnalyzerResourceOptions(),
            properties: properties,
          ),
        );

        final token = response.remediations.single.properties.fields['token']!;
        expect(token.whichKind(), Value_Kind.structValue);
        expect(
          token.structValue.fields[Constants.specialSigKey]?.stringValue,
          Constants.specialSecretSig,
        );
        expect(
          token.structValue.fields[Constants.valueName]?.stringValue,
          'replacement',
        );
      },
    );
  });
}
