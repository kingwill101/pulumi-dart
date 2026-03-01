/// Describes if the policy is in enabled or disabled state. Defaults to Enabled if not specified.
enum PolicyEnabledState {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const PolicyEnabledState(this.value);
  final String value;

  static PolicyEnabledState fromValue(String value) {
    for (final item in PolicyEnabledState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyEnabledState value: $value');
  }
}

