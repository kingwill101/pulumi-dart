import 'package:pulumi/src/constants.dart';
import 'package:pulumi/src/struct_converter.dart';
import 'package:test/test.dart';

Map<String, dynamic> _secret(dynamic value) {
  return <String, dynamic>{
    Constants.specialSigKey: Constants.specialSecretSig,
    Constants.valueName: value,
  };
}

bool _containsSecretEnvelope(dynamic value) {
  if (value is Map) {
    if (value[Constants.specialSigKey] == Constants.specialSecretSig) {
      return true;
    }
    for (final entry in value.entries) {
      if (_containsSecretEnvelope(entry.value)) {
        return true;
      }
    }
    return false;
  }

  if (value is List) {
    for (final element in value) {
      if (_containsSecretEnvelope(element)) {
        return true;
      }
    }
    return false;
  }

  return false;
}

Future<dynamic> _unwrapViaStructConverter(dynamic value) async {
  final proto = await StructConverter.toValue(value);
  return StructConverter.fromValue(proto);
}

void main() {
  group('rpc', () {
    test('unwrap secret values recursively', () async {
      final cases = [
        (original: _secret('secret'), expected: 'secret'),
        (
          original: <String, dynamic>{
            'first': 'first',
            'second': _secret('second'),
            'nested': <String, dynamic>{
              'first': 'first',
              'second': _secret('secret'),
            },
          },
          expected: <String, dynamic>{
            'first': 'first',
            'second': 'second',
            'nested': <String, dynamic>{'first': 'first', 'second': 'secret'},
          },
        ),
        (
          original: <dynamic>['first', _secret('second')],
          expected: <dynamic>['first', 'second'],
        ),
        (
          original: <String, dynamic>{
            'first': 'first',
            'second': <dynamic>[
              <String, dynamic>{
                'nested': <dynamic>[_secret('nested')],
              },
            ],
          },
          expected: <String, dynamic>{
            'first': 'first',
            'second': <dynamic>[
              <String, dynamic>{
                'nested': <dynamic>['nested'],
              },
            ],
          },
        ),
      ];

      for (final testCase in cases) {
        final result = await _unwrapViaStructConverter(testCase.original);
        expect(result, equals(testCase.expected));
        expect(_containsSecretEnvelope(result), isFalse);

        final unwrappedAgain = await _unwrapViaStructConverter(result);
        expect(unwrappedAgain, equals(result));
        expect(_containsSecretEnvelope(unwrappedAgain), isFalse);
      }
    });
  });
}
