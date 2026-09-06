import 'package:pulumi/pulumi.dart' as pulumi;

/// The persistent confidentiality encryption scope.
enum RosettaNetPipConfidentialityScope implements pulumi.PulumiEnum<String> {
  valueNotSpecified("NotSpecified"),
  valueNone("None"),
  valuePayload("Payload"),
  valuePayloadContainer("PayloadContainer");

  const RosettaNetPipConfidentialityScope(this.wireValue);
  @override
  final String wireValue;

  static RosettaNetPipConfidentialityScope fromValue(String value) {
    for (final item in RosettaNetPipConfidentialityScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RosettaNetPipConfidentialityScope value: $value');
  }
}
