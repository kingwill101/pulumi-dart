/// The status of the database transparent data encryption.
enum TransparentDataEncryptionStatus {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const TransparentDataEncryptionStatus(this.value);
  final String value;

  static TransparentDataEncryptionStatus fromValue(String value) {
    for (final item in TransparentDataEncryptionStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TransparentDataEncryptionStatus value: $value');
  }
}

