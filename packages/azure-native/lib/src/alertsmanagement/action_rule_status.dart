/// Indicates if the given action rule is enabled or disabled
enum ActionRuleStatus {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const ActionRuleStatus(this.value);
  final String value;

  static ActionRuleStatus fromValue(String value) {
    for (final item in ActionRuleStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ActionRuleStatus value: $value');
  }
}

