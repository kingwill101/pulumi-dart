/// Indicates whether the alert is in an enabled state.
enum AlertRuleStatus {
  enabled("Enabled"),
  disabled("Disabled");

  const AlertRuleStatus(this.value);
  final String value;

  static AlertRuleStatus fromValue(String value) {
    for (final item in AlertRuleStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AlertRuleStatus value: $value');
  }
}

