/// Defined in CVSS v3, CVSS v2
enum CVSSAttackComplexity2 {
  attackComplexityUnspecified("ATTACK_COMPLEXITY_UNSPECIFIED"),
  attackComplexityLow("ATTACK_COMPLEXITY_LOW"),
  attackComplexityHigh("ATTACK_COMPLEXITY_HIGH"),
  attackComplexityMedium("ATTACK_COMPLEXITY_MEDIUM");

  const CVSSAttackComplexity2(this.value);
  final String value;

  static CVSSAttackComplexity2 fromValue(String value) {
    for (final item in CVSSAttackComplexity2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSAttackComplexity2 value: $value');
  }
}
