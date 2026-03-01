/// The type of the rule.
enum FirewallPolicyRuleType {
  valueFirewallPolicyNatRule("FirewallPolicyNatRule"),
  valueFirewallPolicyFilterRule("FirewallPolicyFilterRule");

  const FirewallPolicyRuleType(this.value);
  final String value;

  static FirewallPolicyRuleType fromValue(String value) {
    for (final item in FirewallPolicyRuleType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallPolicyRuleType value: $value');
  }
}

