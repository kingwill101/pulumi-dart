/// Indicates whether or not the encryption is enabled for container registry.
enum EncryptionStatus {
  valueEnabled("enabled"),
  valueDisabled("disabled");

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

