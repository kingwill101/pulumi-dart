/// The type of key used to encrypt the data of the disk restore point.
enum RestorePointEncryptionType {
  encryptionAtRestWithPlatformKey("EncryptionAtRestWithPlatformKey"),
  encryptionAtRestWithCustomerKey("EncryptionAtRestWithCustomerKey"),
  encryptionAtRestWithPlatformAndCustomerKeys(
    "EncryptionAtRestWithPlatformAndCustomerKeys",
  );

  const RestorePointEncryptionType(this.wireValue);
  final String wireValue;

  static RestorePointEncryptionType fromValue(String value) {
    for (final item in RestorePointEncryptionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RestorePointEncryptionType value: $value');
  }
}
