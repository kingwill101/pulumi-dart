/// Describes if the custom rule is in enabled or disabled state. Defaults to Enabled if not specified.
enum CustomRuleEnabledState {
  disabled("Disabled"),
  enabled("Enabled");

  const CustomRuleEnabledState(this.wireValue);
  final String wireValue;

  static CustomRuleEnabledState fromValue(String value) {
    for (final item in CustomRuleEnabledState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CustomRuleEnabledState value: $value');
  }
}

