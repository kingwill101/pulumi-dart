/// Enables encryption for in-flight smb3 data. Only applicable for SMB/DualProtocol cache.
enum SmbEncryptionState {
  disabled("Disabled"),
  enabled("Enabled");

  const SmbEncryptionState(this.value);
  final String value;

  static SmbEncryptionState fromValue(String value) {
    for (final item in SmbEncryptionState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SmbEncryptionState value: $value');
  }
}

