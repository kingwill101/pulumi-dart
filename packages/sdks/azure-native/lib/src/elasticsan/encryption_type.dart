/// Type of encryption
enum EncryptionType {
  valueEncryptionAtRestWithPlatformKey("EncryptionAtRestWithPlatformKey"),
  valueEncryptionAtRestWithCustomerManagedKey(
    "EncryptionAtRestWithCustomerManagedKey",
  );

  const EncryptionType(this.wireValue);
  final String wireValue;

  static EncryptionType fromValue(String value) {
    for (final item in EncryptionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EncryptionType value: $value');
  }
}
