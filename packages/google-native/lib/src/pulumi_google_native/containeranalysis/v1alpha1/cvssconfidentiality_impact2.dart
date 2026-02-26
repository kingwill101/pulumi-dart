/// Defined in CVSS v3, CVSS v2
enum CVSSConfidentialityImpact2 {
  impactUnspecified("IMPACT_UNSPECIFIED"),
  impactHigh("IMPACT_HIGH"),
  impactLow("IMPACT_LOW"),
  impactNone("IMPACT_NONE"),
  impactPartial("IMPACT_PARTIAL"),
  impactComplete("IMPACT_COMPLETE");

  const CVSSConfidentialityImpact2(this.value);
  final String value;

  static CVSSConfidentialityImpact2 fromValue(String value) {
    for (final item in CVSSConfidentialityImpact2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSConfidentialityImpact2 value: $value');
  }
}
