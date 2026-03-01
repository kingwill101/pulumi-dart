/// Indicates whether or not the encryption is enabled for the workspace.
enum EncryptionStatus {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const EncryptionStatus(this.value);
  final String value;

  static EncryptionStatus fromValue(String value) {
    for (final item in EncryptionStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EncryptionStatus value: $value');
  }
}

