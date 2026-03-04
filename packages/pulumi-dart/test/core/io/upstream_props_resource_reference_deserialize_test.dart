import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart';
import 'package:pulumi/src/constants.dart';
import 'package:pulumi/src/deserializer.dart';
import 'package:pulumi/src/resource/dependency_resource.dart';
import 'package:pulumi/src/resource/provider_resource.dart';
import 'package:test/test.dart';

Value _resourceRef(String urn, {String? id}) {
  final ref = Struct()
    ..fields[Constants.specialSigKey] = (Value()
      ..stringValue = Constants.specialResourceSig)
    ..fields[Constants.resourceUrnName] = (Value()..stringValue = urn);
  if (id != null) {
    ref.fields[Constants.resourceIdName] = Value()..stringValue = id;
  }
  return Value()..structValue = ref;
}

void main() {
  group('upstream parity resource reference deserialization', () {
    test(
      'ports nodejs props.spec.ts resource-reference payload case',
      () async {
        // Source: pulumi/sdk/nodejs/tests/runtime/props.spec.ts
        // "deserializes resource references properly during preview"
        final componentUrn =
            'urn:pulumi:stack::project::test:index:component::component';
        final customUrn =
            'urn:pulumi:stack::project::test:index:custom::custom';
        final unregisteredUrn =
            'urn:pulumi:stack::project::test2:index:custom::unregistered';

        final payload = Value()
          ..structValue = (Struct()
            ..fields['component'] = _resourceRef(componentUrn)
            ..fields['custom'] = _resourceRef(customUrn, id: 'custom-id')
            ..fields['unregistered'] = _resourceRef(
              unregisteredUrn,
              id: 'unregistered-id',
            ));

        final data = Deserializer.deserialize<Map<String, dynamic>>(payload);
        final result = data.value!;

        expect(result['component'], isA<DependencyResource>());
        expect(result['custom'], isA<DependencyResource>());
        expect(result['unregistered'], isA<DependencyResource>());
        expect(
          await (result['component'] as DependencyResource).urn.getValue(),
          equals(componentUrn),
        );
        expect(
          await (result['custom'] as DependencyResource).urn.getValue(),
          equals(customUrn),
        );
        expect(
          await (result['unregistered'] as DependencyResource).urn.getValue(),
          equals(unregisteredUrn),
        );
      },
    );

    test(
      'provider reference with unknown id remains unknown provider id',
      () async {
        final providerUrn =
            'urn:pulumi:stack::project::pulumi:providers:aws::default_7_20_0';
        final payload = _resourceRef(providerUrn, id: '');

        final data = Deserializer.deserialize<dynamic>(payload);
        expect(data.value, isA<ProviderResource>());
        final provider = data.value as ProviderResource;
        expect(await provider.urn.getValue(), equals(providerUrn));
        final providerId = await provider.id.getData();
        expect(providerId.isKnown, isFalse);
        expect(providerId.value, isNull);
      },
    );
  });
}
