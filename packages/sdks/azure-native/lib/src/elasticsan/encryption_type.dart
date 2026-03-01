/// Type of encryption
enum EncryptionType {
  valueEncryptionAtRestWithPlatformKey("EncryptionAtRestWithPlatformKey"),
  valueEncryptionAtRestWithCustomerManagedKey("EncryptionAtRestWithCustomerManagedKey");

  const EncryptionType(this.value);
  final String value;

  static EncryptionType fromValue(String value) {
    for (final item in EncryptionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EncryptionType value: $value');
  }
}

