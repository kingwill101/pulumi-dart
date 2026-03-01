/// The alert rule state.
enum AlertRuleState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const AlertRuleState(this.value);
  final String value;

  static AlertRuleState fromValue(String value) {
    for (final item in AlertRuleState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AlertRuleState value: $value');
  }
}

