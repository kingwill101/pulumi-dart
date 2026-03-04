/// The persistent confidentiality encryption scope.
enum RosettaNetPipConfidentialityScope {
  valueNotSpecified("NotSpecified"),
  valueNone("None"),
  valuePayload("Payload"),
  valuePayloadContainer("PayloadContainer");

  const RosettaNetPipConfidentialityScope(this.wireValue);
  final String wireValue;

  static RosettaNetPipConfidentialityScope fromValue(String value) {
    for (final item in RosettaNetPipConfidentialityScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown RosettaNetPipConfidentialityScope value: $value',
    );
  }
}
