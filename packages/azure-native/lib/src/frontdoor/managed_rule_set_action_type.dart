/// Defines the rule set action.
enum ManagedRuleSetActionType {
  valueBlock("Block"),
  valueLog("Log"),
  valueRedirect("Redirect");

  const ManagedRuleSetActionType(this.value);
  final String value;

  static ManagedRuleSetActionType fromValue(String value) {
    for (final item in ManagedRuleSetActionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedRuleSetActionType value: $value');
  }
}

