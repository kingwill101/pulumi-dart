/// Indicates whether or not the encryption is enabled for container registry.
enum EncryptionStatus {
  valueEnabled("enabled"),
  valueDisabled("disabled");

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

