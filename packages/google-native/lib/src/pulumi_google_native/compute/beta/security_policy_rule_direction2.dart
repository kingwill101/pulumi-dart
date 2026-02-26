/// The direction in which this rule applies. This field may only be specified when versioned_expr is set to FIREWALL.
enum SecurityPolicyRuleDirection2 {
  egress("EGRESS"),
  ingress("INGRESS");

  const SecurityPolicyRuleDirection2(this.value);
  final String value;

  static SecurityPolicyRuleDirection2 fromValue(String value) {
    for (final item in SecurityPolicyRuleDirection2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityPolicyRuleDirection2 value: $value');
  }
}
