import 'package:mockito/mockito.dart';
import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart';
import 'package:pulumi/pulumi.dart';
import 'package:pulumi/src/constants.dart';
import 'package:test/test.dart';

import '../../mocks/mocks.mocks.dart';

class _CompletionResource extends CustomResource {
  late final Output<String> arn;
  late final Output<int?> size;
  late final Output<String?> label;
  late final Output<double?> ratio;
  late final Output<bool?> enabled;
  late final Output<List<String>?> tags;
  late final Output<List<int>?> ports;
  late final Output<List<double>?> weights;
  late final Output<List<Map<String, dynamic>>?> networkArtifacts;
  late final Output<Map<String, dynamic>?> metadata;

  _CompletionResource(String name)
    : super(
        'sample:index:CompletionResource',
        name,
        const {},
        CustomResourceOptions(),
      ) {
    arn = registerOutput<String>('arn');
    size = registerOutput<int?>('size');
    label = registerOutput<String?>('label');
    ratio = registerOutput<double?>('ratio');
    enabled = registerOutput<bool?>('enabled');
    tags = registerOutput<List<String>?>('tags');
    ports = registerOutput<List<int>?>('ports');
    weights = registerOutput<List<double>?>('weights');
    networkArtifacts = registerOutput<List<Map<String, dynamic>>?>(
      'networkArtifacts',
    );
    metadata = registerOutput<Map<String, dynamic>?>('metadata');
  }
}

void main() {
  group('resource output completion', () {
    late MockDeploymentImpl mockDeployment;

    setUp(() {
      mockDeployment = MockDeploymentImpl();

      when(mockDeployment.stack).thenThrow(StateError('Stack not set'));
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

        final secretLabel = Struct()
          ..fields[Constants.specialSigKey] = (Value()
            ..stringValue = Constants.specialSecretSig)
          ..fields[Constants.valueName] = (Value()..stringValue = 'sensitive');
        final dependencyRef = Struct()
          ..fields[Constants.specialSigKey] = (Value()
            ..stringValue = Constants.specialResourceSig)
          ..fields[Constants.resourceUrnName] = (Value()
            ..stringValue =
                'urn:pulumi:stack::project::pkg:index:Dependency::dep');

        final responseObject = Struct()
          ..fields['arn'] = (Value()..stringValue = 'arn:sample:123')
          ..fields['size'] = (Value()..numberValue = 7)
          ..fields['label'] = (Value()..structValue = secretLabel)
          ..fields['ratio'] = (Value()..numberValue = 3.5)
          ..fields['enabled'] = (Value()..boolValue = true)
          ..fields['tags'] = (Value()
            ..listValue = (ListValue()
              ..values.addAll([
                Value()..stringValue = 'alpha',
                Value()..numberValue = 2,
              ])))
          ..fields['ports'] = (Value()
            ..listValue = (ListValue()
              ..values.addAll([
                Value()..numberValue = 80,
                Value()..numberValue = 443.2,
              ])))
          ..fields['weights'] = (Value()
            ..listValue = (ListValue()
              ..values.addAll([
                Value()..numberValue = 1,
                Value()..numberValue = 2.5,
              ])))
          ..fields['networkArtifacts'] = (Value()
            ..listValue = (ListValue()
              ..values.add(Value()..structValue = dependencyRef)))
          ..fields['metadata'] = (Value()
            ..structValue = (Struct()
              ..fields['k'] = (Value()..stringValue = 'v')));
        resource.resolveOutputs(responseObject);
      });

      DeploymentImpl.setTestInstance(mockDeployment);
    });

    tearDown(DeploymentImpl.clearInstance);

    test(
      'hydrates typed output placeholders from register response object',
      () async {
        final resource = _CompletionResource('example');

        expect(await resource.arn.getValue(), equals('arn:sample:123'));
        expect(await resource.size.getValue(), equals(7));
        expect(await resource.label.getValue(), equals('sensitive'));
      },
    );

    test('coerces numeric protobuf values into integer outputs', () async {
      final resource = _CompletionResource('example');
      final size = await resource.size.getValue();

      expect(size, isA<int>());
      expect(size, equals(7));
    });

    test('preserves secret markers on resolved outputs', () async {
      final resource = _CompletionResource('example');
      final labelData = await resource.label.getData();

      expect(labelData.isSecret, isTrue);
      expect(labelData.value, equals('sensitive'));
    });

    test('coerces additional primitive, list, and map output types', () async {
      final resource = _CompletionResource('example');

      expect(await resource.ratio.getValue(), equals(3.5));
      expect(await resource.enabled.getValue(), isTrue);
      expect(await resource.tags.getValue(), equals(<String>['alpha', '2.0']));
      expect(await resource.ports.getValue(), equals(<int>[80, 443]));
      expect(await resource.weights.getValue(), equals(<double>[1.0, 2.5]));
      expect(
        await resource.networkArtifacts.getValue(),
        equals(<Map<String, dynamic>>[<String, dynamic>{}]),
      );
      expect(
        await resource.metadata.getValue(),
        equals(<String, dynamic>{'k': 'v'}),
      );
    });
  });
}
