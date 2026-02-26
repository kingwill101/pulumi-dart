/// Defined in CVSS v3, CVSS v2
enum CVSSIntegrityImpact2 {
  impactUnspecified("IMPACT_UNSPECIFIED"),
  impactHigh("IMPACT_HIGH"),
  impactLow("IMPACT_LOW"),
  impactNone("IMPACT_NONE"),
  impactPartial("IMPACT_PARTIAL"),
  impactComplete("IMPACT_COMPLETE");

  const CVSSIntegrityImpact2(this.value);
  final String value;

  static CVSSIntegrityImpact2 fromValue(String value) {
    for (final item in CVSSIntegrityImpact2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSIntegrityImpact2 value: $value');
  }
}
