/// The type of action.
enum FirewallPolicyNatRuleActionType {
  valueDNAT("DNAT");

  const FirewallPolicyNatRuleActionType(this.value);
  final String value;

  static FirewallPolicyNatRuleActionType fromValue(String value) {
    for (final item in FirewallPolicyNatRuleActionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallPolicyNatRuleActionType value: $value');
  }
}

