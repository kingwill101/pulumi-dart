/// The match operator for the field.
enum SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOpComputeV1 {
  contains("CONTAINS"),
  endsWith("ENDS_WITH"),
  equals("EQUALS"),
  equalsAny("EQUALS_ANY"),
  startsWith("STARTS_WITH");

  const SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOpComputeV1(
    this.value,
  );
  final String value;

  static SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOpComputeV1
  fromValue(String value) {
    for (final item
        in SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOpComputeV1
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOpComputeV1 value: $value',
    );
  }
}
