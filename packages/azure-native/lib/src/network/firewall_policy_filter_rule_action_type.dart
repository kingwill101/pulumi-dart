/// The type of action.
enum FirewallPolicyFilterRuleActionType {
  valueAllow("Allow"),
  valueDeny("Deny");

  const FirewallPolicyFilterRuleActionType(this.value);
  final String value;

  static FirewallPolicyFilterRuleActionType fromValue(String value) {
    for (final item in FirewallPolicyFilterRuleActionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallPolicyFilterRuleActionType value: $value');
  }
}

