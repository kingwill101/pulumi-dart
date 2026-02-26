/// Defined in CVSS v3, CVSS v2
enum CVSSIntegrityImpact3 {
  impactUnspecified("IMPACT_UNSPECIFIED"),
  impactHigh("IMPACT_HIGH"),
  impactLow("IMPACT_LOW"),
  impactNone("IMPACT_NONE"),
  impactPartial("IMPACT_PARTIAL"),
  impactComplete("IMPACT_COMPLETE");

  const CVSSIntegrityImpact3(this.value);
  final String value;

  static CVSSIntegrityImpact3 fromValue(String value) {
    for (final item in CVSSIntegrityImpact3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSIntegrityImpact3 value: $value');
  }
}
