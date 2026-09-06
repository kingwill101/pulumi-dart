import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of encryption
enum EncryptionType implements pulumi.PulumiEnum<String> {
  valueEncryptionAtRestWithPlatformKey("EncryptionAtRestWithPlatformKey"),
  valueEncryptionAtRestWithCustomerManagedKey("EncryptionAtRestWithCustomerManagedKey");

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
