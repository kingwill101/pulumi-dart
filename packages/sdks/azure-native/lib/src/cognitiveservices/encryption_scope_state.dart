/// The encryptionScope state.
enum EncryptionScopeState {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const EncryptionScopeState(this.value);
  final String value;

  static EncryptionScopeState fromValue(String value) {
    for (final item in EncryptionScopeState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EncryptionScopeState value: $value');
  }
}

