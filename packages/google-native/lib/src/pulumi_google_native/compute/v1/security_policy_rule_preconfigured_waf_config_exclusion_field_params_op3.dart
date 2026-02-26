/// The match operator for the field.
enum SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOp3 {
  contains("CONTAINS"),
  endsWith("ENDS_WITH"),
  equals("EQUALS"),
  equalsAny("EQUALS_ANY"),
  startsWith("STARTS_WITH");

  const SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOp3(
      this.value);
  final String value;

  static SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOp3
      fromValue(String value) {
    for (final item
        in SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOp3
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOp3 value: $value');
  }
}
