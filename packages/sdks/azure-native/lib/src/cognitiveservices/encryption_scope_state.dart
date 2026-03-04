/// The encryptionScope state.
enum EncryptionScopeState {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const EncryptionScopeState(this.wireValue);
  final String wireValue;

  static EncryptionScopeState fromValue(String value) {
    for (final item in EncryptionScopeState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EncryptionScopeState value: $value');
  }
}
