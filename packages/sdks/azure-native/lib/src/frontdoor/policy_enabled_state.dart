/// Describes if the policy is in enabled or disabled state. Defaults to Enabled if not specified.
enum PolicyEnabledState {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const PolicyEnabledState(this.wireValue);
  final String wireValue;

  static PolicyEnabledState fromValue(String value) {
    for (final item in PolicyEnabledState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyEnabledState value: $value');
  }
}
