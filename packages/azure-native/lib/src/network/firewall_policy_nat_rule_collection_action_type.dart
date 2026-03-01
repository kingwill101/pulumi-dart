/// The type of action.
enum FirewallPolicyNatRuleCollectionActionType {
  valueDNAT("DNAT");

  const FirewallPolicyNatRuleCollectionActionType(this.value);
  final String value;

  static FirewallPolicyNatRuleCollectionActionType fromValue(String value) {
    for (final item in FirewallPolicyNatRuleCollectionActionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallPolicyNatRuleCollectionActionType value: $value');
  }
}

