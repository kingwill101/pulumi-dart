import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of key used to encrypt the data of the disk.
enum DiskEncryptionSetType implements pulumi.PulumiEnum<String> {
  encryptionAtRestWithCustomerKey("EncryptionAtRestWithCustomerKey"),
  encryptionAtRestWithPlatformAndCustomerKeys("EncryptionAtRestWithPlatformAndCustomerKeys"),
  confidentialVmEncryptedWithCustomerKey("ConfidentialVmEncryptedWithCustomerKey");

  const DiskEncryptionSetType(this.wireValue);
  @override
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
