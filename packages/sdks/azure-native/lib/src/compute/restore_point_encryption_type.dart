import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of key used to encrypt the data of the disk restore point.
enum RestorePointEncryptionType implements pulumi.PulumiEnum<String> {
  encryptionAtRestWithPlatformKey("EncryptionAtRestWithPlatformKey"),
  encryptionAtRestWithCustomerKey("EncryptionAtRestWithCustomerKey"),
  encryptionAtRestWithPlatformAndCustomerKeys("EncryptionAtRestWithPlatformAndCustomerKeys");

  const RestorePointEncryptionType(this.wireValue);
  @override
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
