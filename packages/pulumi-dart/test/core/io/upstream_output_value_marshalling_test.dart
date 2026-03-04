import 'package:pulumi/src/constants.dart';
import 'package:pulumi/src/output.dart';
import 'package:pulumi/src/resource/dependency_resource.dart';
import 'package:pulumi/src/resource/resource.dart';
import 'package:pulumi/src/serializer.dart';
import 'package:test/test.dart';

Output<dynamic> _testOutput({
  required dynamic value,
  required bool isKnown,
  required bool isSecret,
  required Set<Resource> resources,
}) {
  return Output<dynamic>(
    Future.value(
      OutputData<dynamic>(
        value: value,
        isKnown: isKnown,
        isSecret: isSecret,
        resources: resources,
      ),
    ),
  );
}

void main() {
  group('upstream parity output value marshalling', () {
    test('matches go sdk TestOutputValueMarshalling matrix semantics', () async {
      // Ported from: pulumi/sdk/go/pulumi/rpc_test.go TestOutputValueMarshalling
      final values = <dynamic>[
        null,
        0,
        1,
        '',
        'hi',
        <String, String>{},
        <String>[],
      ];
      final depSets = <List<String>>[
        const <String>[],
        const <String>['fakeURN1', 'fakeURN2'],
      ];

      for (final value in values) {
        for (final depUrns in depSets) {
          for (final known in [true, false]) {
            for (final secret in [true, false]) {
              final resources = depUrns
                  .map<Resource>((urn) => DependencyResource(urn))
                  .toSet();
              final output = _testOutput(
                value: value,
                isKnown: known,
                isSecret: secret,
                resources: resources,
              );

              final serializer = Serializer();
              final actual = await serializer.serializeAsync(
                'test',
                {'value': output},
                true,
                keepOutputValues: true,
              );

              dynamic expectedValue = value;
              if (!known || secret || depUrns.isNotEmpty) {
                expectedValue = <String, dynamic>{
                  Constants.specialSigKey: Constants.specialOutputValueSig,
                  if (known) Constants.valueName: value,
                  if (secret) Constants.secretName: true,
                  if (depUrns.isNotEmpty) Constants.dependenciesName: depUrns,
                };
              }

              final expected =
                  (value == null && known && !secret && depUrns.isEmpty)
                  ? <String, dynamic>{}
                  : <String, dynamic>{'value': expectedValue};

              expect(
                actual,
                equals(expected),
                reason:
                    'value=$value known=$known secret=$secret deps=$depUrns',
              );
            }
          }
        }
      }
    });
  });
}
