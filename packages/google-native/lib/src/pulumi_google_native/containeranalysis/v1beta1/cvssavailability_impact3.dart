/// Defined in CVSS v3, CVSS v2
enum CVSSAvailabilityImpact3 {
  impactUnspecified("IMPACT_UNSPECIFIED"),
  impactHigh("IMPACT_HIGH"),
  impactLow("IMPACT_LOW"),
  impactNone("IMPACT_NONE"),
  impactPartial("IMPACT_PARTIAL"),
  impactComplete("IMPACT_COMPLETE");

  const CVSSAvailabilityImpact3(this.value);
  final String value;

  static CVSSAvailabilityImpact3 fromValue(String value) {
    for (final item in CVSSAvailabilityImpact3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSAvailabilityImpact3 value: $value');
  }
}
