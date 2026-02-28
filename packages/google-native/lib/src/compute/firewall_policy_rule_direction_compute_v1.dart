/// The direction in which this rule applies.
enum FirewallPolicyRuleDirectionComputeV1 {
  egress("EGRESS"),
  ingress("INGRESS");

  const FirewallPolicyRuleDirectionComputeV1(this.value);
  final String value;

  static FirewallPolicyRuleDirectionComputeV1 fromValue(String value) {
    for (final item in FirewallPolicyRuleDirectionComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallPolicyRuleDirectionComputeV1 value: $value');
  }
}

