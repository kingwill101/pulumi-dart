/// The direction in which this rule applies.
enum FirewallPolicyRuleDirection2 {
  egress("EGRESS"),
  ingress("INGRESS");

  const FirewallPolicyRuleDirection2(this.value);
  final String value;

  static FirewallPolicyRuleDirection2 fromValue(String value) {
    for (final item in FirewallPolicyRuleDirection2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallPolicyRuleDirection2 value: $value');
  }
}
