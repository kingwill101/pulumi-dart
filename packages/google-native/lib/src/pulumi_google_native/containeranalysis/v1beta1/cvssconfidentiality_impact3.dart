/// Defined in CVSS v3, CVSS v2
enum CVSSConfidentialityImpact3 {
  impactUnspecified("IMPACT_UNSPECIFIED"),
  impactHigh("IMPACT_HIGH"),
  impactLow("IMPACT_LOW"),
  impactNone("IMPACT_NONE"),
  impactPartial("IMPACT_PARTIAL"),
  impactComplete("IMPACT_COMPLETE");

  const CVSSConfidentialityImpact3(this.value);
  final String value;

  static CVSSConfidentialityImpact3 fromValue(String value) {
    for (final item in CVSSConfidentialityImpact3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSConfidentialityImpact3 value: $value');
  }
}
