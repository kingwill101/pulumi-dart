/// The type of key used to encrypt the data of the disk.
enum EncryptionType {
  encryptionAtRestWithPlatformKey("EncryptionAtRestWithPlatformKey"),
  encryptionAtRestWithCustomerKey("EncryptionAtRestWithCustomerKey"),
  encryptionAtRestWithPlatformAndCustomerKeys("EncryptionAtRestWithPlatformAndCustomerKeys");

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

