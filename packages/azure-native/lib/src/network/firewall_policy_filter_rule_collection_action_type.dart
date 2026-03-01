/// The type of action.
enum FirewallPolicyFilterRuleCollectionActionType {
  valueAllow("Allow"),
  valueDeny("Deny");

  const FirewallPolicyFilterRuleCollectionActionType(this.value);
  final String value;

  static FirewallPolicyFilterRuleCollectionActionType fromValue(String value) {
    for (final item in FirewallPolicyFilterRuleCollectionActionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallPolicyFilterRuleCollectionActionType value: $value');
  }
}

