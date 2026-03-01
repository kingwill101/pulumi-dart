/// The persistent confidentiality encryption scope.
enum RosettaNetPipConfidentialityScope {
  valueNotSpecified("NotSpecified"),
  valueNone("None"),
  valuePayload("Payload"),
  valuePayloadContainer("PayloadContainer");

  const RosettaNetPipConfidentialityScope(this.value);
  final String value;

  static RosettaNetPipConfidentialityScope fromValue(String value) {
    for (final item in RosettaNetPipConfidentialityScope.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RosettaNetPipConfidentialityScope value: $value');
  }
}

