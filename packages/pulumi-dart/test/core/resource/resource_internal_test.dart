import 'package:mockito/mockito.dart';
import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart';
import 'package:pulumi/pulumi.dart';
import 'package:pulumi/src/constants.dart';
import 'package:test/test.dart';

import '../../mocks/mocks.mocks.dart';

class _RawResource extends Resource {
  _RawResource(String type, String name)
    : super(type, name, false, const {}, const ResourceOptions());
}

class _LateOutputResource extends CustomResource {
  _LateOutputResource(String name)
    : super('sample:index:LateOutput', name, const {}, CustomResourceOptions());

  Output<T> createOutput<T>(String propertyName) {
    return registerOutput<T>(propertyName);
  }
}

void main() {
  group('resource constructor', () {
    test('rejects empty type before deployment registration', () {
      expect(() => _RawResource('', 'name'), throwsArgumentError);
    });

    test('rejects empty name before deployment registration', () {
      expect(() => _RawResource('pkg:index:Type', ''), throwsArgumentError);
    });
  });

  group('resource output staging', () {
    late MockDeploymentImpl mockDeployment;

    setUp(() {
      mockDeployment = MockDeploymentImpl();
      when(mockDeployment.stack).thenThrow(StateError('stack not set'));
      when(mockDeployment.isDryRun).thenReturn(false);
      when(mockDeployment.registerResourceOperation(any)).thenAnswer((_) {});
      when(
        mockDeployment.readOrRegisterResource(
          resource: anyNamed('resource'),
          remote: anyNamed('remote'),
          newDependency: anyNamed('newDependency'),
          args: anyNamed('args'),
          opts: anyNamed('opts'),
          registerPackageRequest: anyNamed('registerPackageRequest'),
        ),
      ).thenAnswer((invocation) async {
        final resource = invocation.namedArguments[#resource] as Resource;
        resource.resolveUrn(
          'urn:pulumi:stack::project::${resource.getResourceType()}::${resource.getResourceName()}',
        );
      });
      DeploymentImpl.setTestInstance(mockDeployment);
    });

    tearDown(DeploymentImpl.clearInstance);

    test('failOutputs propagates to outputs registered later', () async {
      final resource = _LateOutputResource('late');
      resource.failOutputs(StateError('boom'));

      final output = resource.createOutput<String>('late');
      await expectLater(output.getValue(), throwsA(isA<Exception>()));
    });

    test('failOutputs propagates to outputs already registered', () async {
      final resource = _LateOutputResource('late');
      final output = resource.createOutput<String>('late');

      resource.failOutputs(StateError('boom'));

      await expectLater(output.getValue(), throwsA(isA<Exception>()));
    });

    test(
      'resolveOutputs before registerOutput hydrates pending values',
      () async {
        final resource = _LateOutputResource('late');
        final values = Struct()
          ..fields['late'] = (Value()..stringValue = 'ready');
        resource.resolveOutputs(values);

        final output = resource.createOutput<String>('late');
        expect(await output.getValue(), 'ready');
      },
    );

    test(
      'missing output property resolves to known null default outside preview',
      () async {
        final resource = _LateOutputResource('late');
        final output = resource.createOutput<String?>('missing');

        resource.resolveOutputs(Struct());

        final data = await output.getData();
        expect(data.isKnown, isTrue);
        expect(data.value, isNull);
      },
    );

    test('missing non-nullable output property remains unknown', () async {
      final resource = _LateOutputResource('late');
      final output = resource.createOutput<String>('missing');

      resource.resolveOutputs(Struct());

      final data = await output.getData();
      expect(data.isKnown, isFalse);
      expect(data.value, isNull);
    });

    test(
      'missing output property resolves to unknown during preview',
      () async {
        when(mockDeployment.isDryRun).thenReturn(true);
        final resource = _LateOutputResource('late');
        final output = resource.createOutput<String?>('missing');

        resource.resolveOutputs(Struct());

        final data = await output.getData();
        expect(data.isKnown, isFalse);
        expect(data.value, isNull);
      },
    );
  });

  group('resource serialization', () {
    final resource = DependencyResource(
      'urn:pulumi:stack::project::pkg:index:Thing::thing',
    );

    test('serializeProperties uses unknown sentinels by output type', () async {
      final properties = await resource.serializeProperties({
        'boolUnknown': Output.createUnknown<bool>(),
        'numberUnknown': Output.createUnknown<int>(),
        'arrayUnknown': Output.createUnknown<List<int>>(),
        'objectUnknown': Output.createUnknown<Map<String, int>>(),
        'plainUnknown': Output.createUnknown<String>(),
      });

      expect(
        properties.fields['boolUnknown']!.stringValue,
        Constants.unknownBoolValue,
      );
      expect(
        properties.fields['numberUnknown']!.stringValue,
        Constants.unknownNumberValue,
      );
      expect(
        properties.fields['arrayUnknown']!.stringValue,
        Constants.unknownArrayValue,
      );
      expect(
        properties.fields['objectUnknown']!.stringValue,
        Constants.unknownObjectValue,
      );
      expect(
        properties.fields['plainUnknown']!.stringValue,
        Constants.unknownValue,
      );
    });

    test(
      'serializeProperties marks map/list with unknown descendants',
      () async {
        final properties = await resource.serializeProperties({
          'mapField': {'inner': Output.createUnknown<int>()},
          'listField': [Output.createUnknown<String>()],
        });

        expect(
          properties.fields['mapField']!.stringValue,
          Constants.unknownObjectValue,
        );
        expect(
          properties.fields['listField']!.stringValue,
          Constants.unknownArrayValue,
        );
      },
    );

    test(
      'serializeProperties covers null/input/secret output/primitive branches',
      () async {
        final properties = await resource.serializeProperties({
          'nullField': null,
          'inputField': Input.fromValue('input-value'),
          'secretField': Output.createSecret(Output.create('secret')),
          'intField': 7,
          'doubleField': 7.5,
          'stringField': 'hello',
          'boolField': true,
        });

        expect(
          properties.fields['nullField']!.nullValue,
          equals(NullValue.NULL_VALUE),
        );
        expect(
          properties.fields['inputField']!.stringValue,
          equals('input-value'),
        );

        final secretStruct = properties.fields['secretField']!.structValue;
        expect(
          secretStruct.fields[Constants.specialSigKey]!.stringValue,
          Constants.specialSecretSig,
        );
        expect(secretStruct.fields[Constants.valueName]!.stringValue, 'secret');

        expect(properties.fields['intField']!.numberValue, equals(7));
        expect(properties.fields['doubleField']!.numberValue, equals(7.5));
        expect(properties.fields['stringField']!.stringValue, equals('hello'));
        expect(properties.fields['boolField']!.boolValue, isTrue);
      },
    );

    test(
      'serializeProperties preserves known nested map/list and fallback string conversion',
      () async {
        final properties = await resource.serializeProperties({
          'outerMap': {
            'innerMap': {'k': 'v'},
          },
          'outerList': [
            [1, 2, 3],
          ],
          'fallback': DateTime.utc(2024, 1, 1),
        });

        expect(properties.fields['outerMap']!.hasStructValue(), isTrue);
        expect(
          properties
              .fields['outerMap']!
              .structValue
              .fields['innerMap']!
              .structValue
              .fields['k']!
              .stringValue,
          equals('v'),
        );

        expect(properties.fields['outerList']!.hasListValue(), isTrue);
        expect(
          properties
              .fields['outerList']!
              .listValue
              .values
              .single
              .listValue
              .values,
          hasLength(3),
        );

        expect(
          properties.fields['fallback']!.stringValue,
          equals('2024-01-01 00:00:00.000Z'),
        );
      },
    );

    test('serializeProperties emits resource references with urn/id', () async {
      final provider = ProviderResource.reference(
        'test',
        'urn:pulumi:stack::project::pulumi:providers:test::default',
        id: 'provider-id',
      );

      final properties = await resource.serializeProperties({
        'provider': provider,
      });
      final providerValue = properties.fields['provider']!;

      expect(providerValue.hasStructValue(), isTrue);
      final fields = providerValue.structValue.fields;
      expect(
        fields[Constants.specialSigKey]!.stringValue,
        Constants.specialResourceSig,
      );
      expect(
        fields[Constants.resourceUrnName]!.stringValue,
        'urn:pulumi:stack::project::pulumi:providers:test::default',
      );
      expect(fields[Constants.resourceIdName]!.stringValue, 'provider-id');
    });

    test(
      'ResourceException formatting includes parent context when available',
      () {
        final parent = MockResource();
        when(parent.getResourceName()).thenReturn('parent');

        final withParent = ResourceException('failed', parent);
        final withoutParent = ResourceException('failed', null);

        expect(
          withParent.toString(),
          'ResourceException: failed (Parent: parent)',
        );
        expect(withoutParent.toString(), 'ResourceException: failed');
      },
    );
  });
}
