import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of encryption configuration being used. Currently the only supported types are 'UserManaged' and 'ServiceManaged'.
enum EncryptionConfigType implements pulumi.PulumiEnum<String> {
  valueUserManaged("UserManaged"),
  valueServiceManaged("ServiceManaged");

  const EncryptionConfigType(this.wireValue);
  @override
  final String wireValue;

  static EncryptionConfigType fromValue(String value) {
    for (final item in EncryptionConfigType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EncryptionConfigType value: $value');
  }
}
