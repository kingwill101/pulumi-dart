/// Encryption state of the Backup Vault.
enum EncryptionState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled"),
  valueInconsistent("Inconsistent");

  const EncryptionState(this.wireValue);
  final String wireValue;

  static EncryptionState fromValue(String value) {
    for (final item in EncryptionState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EncryptionState value: $value');
  }
}

