/// Indicates type of action rule
enum ActionRuleType {
  valueSuppression("Suppression"),
  valueActionGroup("ActionGroup"),
  valueDiagnostics("Diagnostics");

  const ActionRuleType(this.value);
  final String value;

  static ActionRuleType fromValue(String value) {
    for (final item in ActionRuleType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ActionRuleType value: $value');
  }
}

