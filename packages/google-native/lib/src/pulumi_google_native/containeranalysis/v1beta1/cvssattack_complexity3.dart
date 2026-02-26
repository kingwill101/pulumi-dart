/// Defined in CVSS v3, CVSS v2
enum CVSSAttackComplexity3 {
  attackComplexityUnspecified("ATTACK_COMPLEXITY_UNSPECIFIED"),
  attackComplexityLow("ATTACK_COMPLEXITY_LOW"),
  attackComplexityHigh("ATTACK_COMPLEXITY_HIGH"),
  attackComplexityMedium("ATTACK_COMPLEXITY_MEDIUM");

  const CVSSAttackComplexity3(this.value);
  final String value;

  static CVSSAttackComplexity3 fromValue(String value) {
    for (final item in CVSSAttackComplexity3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSAttackComplexity3 value: $value');
  }
}
