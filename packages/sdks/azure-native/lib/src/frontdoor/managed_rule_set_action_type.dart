/// Defines the rule set action.
enum ManagedRuleSetActionType {
  valueBlock("Block"),
  valueLog("Log"),
  valueRedirect("Redirect");

  const ManagedRuleSetActionType(this.wireValue);
  final String wireValue;

  static ManagedRuleSetActionType fromValue(String value) {
    for (final item in ManagedRuleSetActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedRuleSetActionType value: $value');
  }
}
