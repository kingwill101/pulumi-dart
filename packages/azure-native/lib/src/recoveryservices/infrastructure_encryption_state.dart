/// Enabling/Disabling the Double Encryption state
enum InfrastructureEncryptionState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const InfrastructureEncryptionState(this.value);
  final String value;

  static InfrastructureEncryptionState fromValue(String value) {
    for (final item in InfrastructureEncryptionState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InfrastructureEncryptionState value: $value');
  }
}

