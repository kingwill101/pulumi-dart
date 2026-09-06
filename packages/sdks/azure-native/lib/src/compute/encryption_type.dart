import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of key used to encrypt the data of the disk.
enum EncryptionType implements pulumi.PulumiEnum<String> {
  encryptionAtRestWithPlatformKey("EncryptionAtRestWithPlatformKey"),
  encryptionAtRestWithCustomerKey("EncryptionAtRestWithCustomerKey"),
  encryptionAtRestWithPlatformAndCustomerKeys("EncryptionAtRestWithPlatformAndCustomerKeys");

  const EncryptionType(this.wireValue);
  @override
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
