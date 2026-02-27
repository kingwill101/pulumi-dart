/// Defined in CVSS v3, CVSS v2
enum CVSSConfidentialityImpactContaineranalysisV1beta1 {
  impactUnspecified("IMPACT_UNSPECIFIED"),
  impactHigh("IMPACT_HIGH"),
  impactLow("IMPACT_LOW"),
  impactNone("IMPACT_NONE"),
  impactPartial("IMPACT_PARTIAL"),
  impactComplete("IMPACT_COMPLETE");

  const CVSSConfidentialityImpactContaineranalysisV1beta1(this.value);
  final String value;

  static CVSSConfidentialityImpactContaineranalysisV1beta1 fromValue(
      String value) {
    for (final item
        in CVSSConfidentialityImpactContaineranalysisV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown CVSSConfidentialityImpactContaineranalysisV1beta1 value: $value');
  }
}
