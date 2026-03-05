/// describes if the policy is in enabled state or disabled state
enum PolicyEnabledState {
  disabled("Disabled"),
  enabled("Enabled");

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

