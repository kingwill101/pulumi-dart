/// Defined in CVSS v3, CVSS v2
enum CVSSAvailabilityImpactContaineranalysisV1beta1 {
  impactUnspecified("IMPACT_UNSPECIFIED"),
  impactHigh("IMPACT_HIGH"),
  impactLow("IMPACT_LOW"),
  impactNone("IMPACT_NONE"),
  impactPartial("IMPACT_PARTIAL"),
  impactComplete("IMPACT_COMPLETE");

  const CVSSAvailabilityImpactContaineranalysisV1beta1(this.value);
  final String value;

  static CVSSAvailabilityImpactContaineranalysisV1beta1 fromValue(
      String value) {
    for (final item in CVSSAvailabilityImpactContaineranalysisV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown CVSSAvailabilityImpactContaineranalysisV1beta1 value: $value');
  }
}
