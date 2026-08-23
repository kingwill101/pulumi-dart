/// Defines the rule set action.
enum ManagedRuleSetActionType {
  block("Block"),
  log("Log"),
  redirect("Redirect");

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
