enum CVSSAttackComplexity {
  attackComplexityUnspecified("ATTACK_COMPLEXITY_UNSPECIFIED"),
  attackComplexityLow("ATTACK_COMPLEXITY_LOW"),
  attackComplexityHigh("ATTACK_COMPLEXITY_HIGH"),
  attackComplexityMedium("ATTACK_COMPLEXITY_MEDIUM");

  const CVSSAttackComplexity(this.value);
  final String value;

  static CVSSAttackComplexity fromValue(String value) {
    for (final item in CVSSAttackComplexity.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSAttackComplexity value: $value');
  }
}

