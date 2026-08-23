/// Indicates if the given action rule is enabled or disabled
enum ActionRuleStatus {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const ActionRuleStatus(this.wireValue);
  final String wireValue;

  static ActionRuleStatus fromValue(String value) {
    for (final item in ActionRuleStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ActionRuleStatus value: $value');
  }
}
