enum CVSSv3AttackComplexity2 {
  attackComplexityUnspecified("ATTACK_COMPLEXITY_UNSPECIFIED"),
  attackComplexityLow("ATTACK_COMPLEXITY_LOW"),
  attackComplexityHigh("ATTACK_COMPLEXITY_HIGH");

  const CVSSv3AttackComplexity2(this.value);
  final String value;

  static CVSSv3AttackComplexity2 fromValue(String value) {
    for (final item in CVSSv3AttackComplexity2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSv3AttackComplexity2 value: $value');
  }
}
