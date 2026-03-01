enum EnhancedSecurityState {
  valueInvalid("Invalid"),
  valueEnabled("Enabled"),
  valueDisabled("Disabled"),
  valueAlwaysON("AlwaysON");

  const EnhancedSecurityState(this.value);
  final String value;

  static EnhancedSecurityState fromValue(String value) {
    for (final item in EnhancedSecurityState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnhancedSecurityState value: $value');
  }
}

