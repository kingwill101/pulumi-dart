/// Describes if the managed rule is in enabled or disabled state. Defaults to Disabled if not specified.
enum ManagedRuleEnabledState {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const ManagedRuleEnabledState(this.wireValue);
  final String wireValue;

  static ManagedRuleEnabledState fromValue(String value) {
    for (final item in ManagedRuleEnabledState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedRuleEnabledState value: $value');
  }
}

