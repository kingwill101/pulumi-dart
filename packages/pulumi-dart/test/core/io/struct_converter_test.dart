import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart';
import 'package:pulumi/src/constants.dart';
import 'package:pulumi/src/input.dart';
import 'package:pulumi/src/output.dart';
import 'package:pulumi/src/resource/dependency_resource.dart';
import 'package:pulumi/src/resource/provider_resource.dart';
import 'package:pulumi/src/struct_converter.dart';
import 'package:test/test.dart';

class _Stringable {
  @override
  String toString() => 'stringable-value';
}

void main() {
  group('struct converter', () {
    test(
      'toValue handles primitive null, double, and fallback values',
      () async {
        final nullValue = await StructConverter.toValue(null);
        expect(nullValue.whichKind(), equals(Value_Kind.nullValue));

        final doubleValue = await StructConverter.toValue(42.5);
        expect(doubleValue.numberValue, equals(42.5));

        final fallbackValue = await StructConverter.toValue(_Stringable());
        expect(fallbackValue.stringValue, equals('stringable-value'));
      },
    );

    test(
      'toValue unwraps Input and Output variants with unknown sentinels',
      () async {
        final inputValue = await StructConverter.toValue(
          Input.fromValue('hello'),
        );
        expect(inputValue.stringValue, equals('hello'));

        final unknownBool = await StructConverter.toValue(
          Output.createUnknown<bool>(),
        );
        expect(unknownBool.stringValue, equals(Constants.unknownBoolValue));

        final unknownNumber = await StructConverter.toValue(
          Output.createUnknown<int>(),
        );
        expect(unknownNumber.stringValue, equals(Constants.unknownNumberValue));

        final unknownArray = await StructConverter.toValue(
          Output.createUnknown<List<String>>(),
        );
        expect(unknownArray.stringValue, equals(Constants.unknownArrayValue));

        final unknownObject = await StructConverter.toValue(
          Output.createUnknown<Map<String, String>>(),
        );
        expect(unknownObject.stringValue, equals(Constants.unknownObjectValue));

        final unknownDefault = await StructConverter.toValue(
          Output.createUnknown<String>(),
        );
        expect(unknownDefault.stringValue, equals(Constants.unknownValue));
      },
    );

    test('toValue encodes secret outputs as Pulumi secret envelopes', () async {
      final secretOutput = Output.createSecret(Output.create('sensitive'));
      final value = await StructConverter.toValue(secretOutput);

      expect(value.whichKind(), equals(Value_Kind.structValue));
      expect(
        value.structValue.fields[Constants.specialSigKey]?.stringValue,
        equals(Constants.specialSecretSig),
      );
      expect(
        value.structValue.fields[Constants.valueName]?.stringValue,
        equals('sensitive'),
      );
    });

    test('toValue serializes resource references with optional ids', () async {
      final dependency = DependencyResource(
        'urn:pulumi:dev::proj::pkg:index:Dependency::dep',
      );
      final depValue = await StructConverter.toValue(dependency);
      expect(
        depValue.structValue.fields[Constants.resourceUrnName]?.stringValue,
        equals('urn:pulumi:dev::proj::pkg:index:Dependency::dep'),
      );
      expect(
        depValue.structValue.fields.containsKey(Constants.resourceIdName),
        isFalse,
      );

      final provider = ProviderResource.reference(
        'aws',
        'urn:pulumi:dev::proj::pulumi:providers:aws::default_1_0_0',
        id: 'provider-id',
      );
      final providerValue = await StructConverter.toValue(provider);
      expect(
        providerValue
            .structValue
            .fields[Constants.resourceUrnName]
            ?.stringValue,
        equals('urn:pulumi:dev::proj::pulumi:providers:aws::default_1_0_0'),
      );
      expect(
        providerValue.structValue.fields[Constants.resourceIdName]?.stringValue,
        equals('provider-id'),
      );
    });

    test(
      'toValue marks list and map containers unknown when descendants are unknown',
      () async {
        final listValue = await StructConverter.toValue([
          Output.create('known'),
          Output.createUnknown<int>(),
        ]);
        expect(listValue.stringValue, equals(Constants.unknownArrayValue));

        final mapValue = await StructConverter.toValue({
          'known': Output.create('known'),
          'unknown': Output.createUnknown<int>(),
        });
        expect(mapValue.stringValue, equals(Constants.unknownObjectValue));
      },
    );

    test('fromValue handles secret wrappers and not-set values', () {
      final secret = Value()
        ..structValue = (Struct()
          ..fields[Constants.specialSigKey] = (Value()
            ..stringValue = Constants.specialSecretSig)
          ..fields[Constants.valueName] = (Value()..stringValue = 'value'));
      expect(StructConverter.fromValue(secret), equals('value'));

      final unset = Value();
      expect(StructConverter.fromValue(unset), isNull);
    });
  });
}
