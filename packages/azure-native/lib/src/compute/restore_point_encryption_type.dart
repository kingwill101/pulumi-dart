/// The type of key used to encrypt the data of the disk restore point.
enum RestorePointEncryptionType {
  encryptionAtRestWithPlatformKey("EncryptionAtRestWithPlatformKey"),
  encryptionAtRestWithCustomerKey("EncryptionAtRestWithCustomerKey"),
  encryptionAtRestWithPlatformAndCustomerKeys("EncryptionAtRestWithPlatformAndCustomerKeys");

  const RestorePointEncryptionType(this.value);
  final String value;

  static RestorePointEncryptionType fromValue(String value) {
    for (final item in RestorePointEncryptionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RestorePointEncryptionType value: $value');
  }
}

