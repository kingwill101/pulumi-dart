/// The match operator for the field.
enum SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOp {
  contains("CONTAINS"),
  endsWith("ENDS_WITH"),
  equals("EQUALS"),
  equalsAny("EQUALS_ANY"),
  startsWith("STARTS_WITH");

  const SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOp(
      this.value);
  final String value;

  static SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOp
      fromValue(String value) {
    for (final item
        in SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOp
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOp value: $value');
  }
}
