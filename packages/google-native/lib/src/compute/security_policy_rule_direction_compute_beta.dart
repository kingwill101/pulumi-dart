/// The direction in which this rule applies. This field may only be specified when versioned_expr is set to FIREWALL.
enum SecurityPolicyRuleDirectionComputeBeta {
  egress("EGRESS"),
  ingress("INGRESS");

  const SecurityPolicyRuleDirectionComputeBeta(this.value);
  final String value;

  static SecurityPolicyRuleDirectionComputeBeta fromValue(String value) {
    for (final item in SecurityPolicyRuleDirectionComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SecurityPolicyRuleDirectionComputeBeta value: $value');
  }
}
