/// Encryption state of the Backup Vault.
enum EncryptionState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled"),
  valueInconsistent("Inconsistent");

  const EncryptionState(this.value);
  final String value;

  static EncryptionState fromValue(String value) {
    for (final item in EncryptionState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EncryptionState value: $value');
  }
}

