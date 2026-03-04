/// The type of key used to encrypt the data of the disk.
enum EncryptionType {
  encryptionAtRestWithPlatformKey("EncryptionAtRestWithPlatformKey"),
  encryptionAtRestWithCustomerKey("EncryptionAtRestWithCustomerKey"),
  encryptionAtRestWithPlatformAndCustomerKeys(
    "EncryptionAtRestWithPlatformAndCustomerKeys",
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
