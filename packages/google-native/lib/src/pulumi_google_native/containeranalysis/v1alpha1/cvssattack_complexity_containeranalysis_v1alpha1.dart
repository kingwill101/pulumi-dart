/// Defined in CVSS v3, CVSS v2
enum CVSSAttackComplexityContaineranalysisV1alpha1 {
  attackComplexityUnspecified("ATTACK_COMPLEXITY_UNSPECIFIED"),
  attackComplexityLow("ATTACK_COMPLEXITY_LOW"),
  attackComplexityHigh("ATTACK_COMPLEXITY_HIGH"),
  attackComplexityMedium("ATTACK_COMPLEXITY_MEDIUM");

  const CVSSAttackComplexityContaineranalysisV1alpha1(this.value);
  final String value;

  static CVSSAttackComplexityContaineranalysisV1alpha1 fromValue(String value) {
    for (final item in CVSSAttackComplexityContaineranalysisV1alpha1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown CVSSAttackComplexityContaineranalysisV1alpha1 value: $value');
  }
}
