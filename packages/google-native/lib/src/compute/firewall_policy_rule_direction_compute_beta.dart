/// The direction in which this rule applies.
enum FirewallPolicyRuleDirectionComputeBeta {
  egress("EGRESS"),
  ingress("INGRESS");

  const FirewallPolicyRuleDirectionComputeBeta(this.value);
  final String value;

  static FirewallPolicyRuleDirectionComputeBeta fromValue(String value) {
    for (final item in FirewallPolicyRuleDirectionComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown FirewallPolicyRuleDirectionComputeBeta value: $value',
    );
  }
}
