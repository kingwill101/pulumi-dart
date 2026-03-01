/// Rule Condition Type.
enum FirewallPolicyRuleConditionType {
  valueApplicationRuleCondition("ApplicationRuleCondition"),
  valueNetworkRuleCondition("NetworkRuleCondition"),
  valueNatRuleCondition("NatRuleCondition");

  const FirewallPolicyRuleConditionType(this.value);
  final String value;

  static FirewallPolicyRuleConditionType fromValue(String value) {
    for (final item in FirewallPolicyRuleConditionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallPolicyRuleConditionType value: $value');
  }
}

