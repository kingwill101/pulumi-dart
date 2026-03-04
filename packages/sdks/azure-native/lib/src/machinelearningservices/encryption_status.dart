/// Indicates whether or not the encryption is enabled for the workspace.
enum EncryptionStatus {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const EncryptionStatus(this.wireValue);
  final String wireValue;

  static EncryptionStatus fromValue(String value) {
    for (final item in EncryptionStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EncryptionStatus value: $value');
  }
}
