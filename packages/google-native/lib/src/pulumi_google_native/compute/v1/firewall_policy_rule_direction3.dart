/// The direction in which this rule applies.
enum FirewallPolicyRuleDirection3 {
  egress("EGRESS"),
  ingress("INGRESS");

  const FirewallPolicyRuleDirection3(this.value);
  final String value;

  static FirewallPolicyRuleDirection3 fromValue(String value) {
    for (final item in FirewallPolicyRuleDirection3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallPolicyRuleDirection3 value: $value');
  }
}
