/// Defined in CVSS v3, CVSS v2
enum CVSSIntegrityImpactContaineranalysisV1alpha1 {
  impactUnspecified("IMPACT_UNSPECIFIED"),
  impactHigh("IMPACT_HIGH"),
  impactLow("IMPACT_LOW"),
  impactNone("IMPACT_NONE"),
  impactPartial("IMPACT_PARTIAL"),
  impactComplete("IMPACT_COMPLETE");

  const CVSSIntegrityImpactContaineranalysisV1alpha1(this.value);
  final String value;

  static CVSSIntegrityImpactContaineranalysisV1alpha1 fromValue(String value) {
    for (final item in CVSSIntegrityImpactContaineranalysisV1alpha1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown CVSSIntegrityImpactContaineranalysisV1alpha1 value: $value');
  }
}
