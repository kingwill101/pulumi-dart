/// Describes if the custom rule is in enabled or disabled state. Defaults to Enabled if not specified.
enum CustomRuleEnabledState {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const CustomRuleEnabledState(this.value);
  final String value;

  static CustomRuleEnabledState fromValue(String value) {
    for (final item in CustomRuleEnabledState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CustomRuleEnabledState value: $value');
  }
}

