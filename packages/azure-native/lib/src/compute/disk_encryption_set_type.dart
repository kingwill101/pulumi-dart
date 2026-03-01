/// The type of key used to encrypt the data of the disk.
enum DiskEncryptionSetType {
  encryptionAtRestWithCustomerKey("EncryptionAtRestWithCustomerKey"),
  encryptionAtRestWithPlatformAndCustomerKeys("EncryptionAtRestWithPlatformAndCustomerKeys"),
  confidentialVmEncryptedWithCustomerKey("ConfidentialVmEncryptedWithCustomerKey");

  const DiskEncryptionSetType(this.value);
  final String value;

  static DiskEncryptionSetType fromValue(String value) {
    for (final item in DiskEncryptionSetType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskEncryptionSetType value: $value');
  }
}

