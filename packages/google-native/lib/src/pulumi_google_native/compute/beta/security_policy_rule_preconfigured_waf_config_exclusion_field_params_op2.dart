/// The match operator for the field.
enum SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOp2 {
  contains("CONTAINS"),
  endsWith("ENDS_WITH"),
  equals("EQUALS"),
  equalsAny("EQUALS_ANY"),
  startsWith("STARTS_WITH");

  const SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOp2(
      this.value);
  final String value;

  static SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOp2
      fromValue(String value) {
    for (final item
        in SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOp2
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOp2 value: $value');
  }
}
