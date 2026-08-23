/// The alert rule state.
enum AlertRuleState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const AlertRuleState(this.wireValue);
  final String wireValue;

  static AlertRuleState fromValue(String value) {
    for (final item in AlertRuleState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AlertRuleState value: $value');
  }
}
