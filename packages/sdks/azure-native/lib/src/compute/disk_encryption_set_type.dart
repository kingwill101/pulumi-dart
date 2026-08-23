/// The type of key used to encrypt the data of the disk.
enum DiskEncryptionSetType {
  encryptionAtRestWithCustomerKey("EncryptionAtRestWithCustomerKey"),
  encryptionAtRestWithPlatformAndCustomerKeys("EncryptionAtRestWithPlatformAndCustomerKeys"),
  confidentialVmEncryptedWithCustomerKey("ConfidentialVmEncryptedWithCustomerKey");

  const DiskEncryptionSetType(this.wireValue);
  final String wireValue;

  static DiskEncryptionSetType fromValue(String value) {
    for (final item in DiskEncryptionSetType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskEncryptionSetType value: $value');
  }
}
