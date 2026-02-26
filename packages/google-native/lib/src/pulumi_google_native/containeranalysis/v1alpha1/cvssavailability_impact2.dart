/// Defined in CVSS v3, CVSS v2
enum CVSSAvailabilityImpact2 {
  impactUnspecified("IMPACT_UNSPECIFIED"),
  impactHigh("IMPACT_HIGH"),
  impactLow("IMPACT_LOW"),
  impactNone("IMPACT_NONE"),
  impactPartial("IMPACT_PARTIAL"),
  impactComplete("IMPACT_COMPLETE");

  const CVSSAvailabilityImpact2(this.value);
  final String value;

  static CVSSAvailabilityImpact2 fromValue(String value) {
    for (final item in CVSSAvailabilityImpact2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSAvailabilityImpact2 value: $value');
  }
}
