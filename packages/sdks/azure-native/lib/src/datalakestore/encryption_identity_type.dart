import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of encryption being used. Currently the only supported type is 'SystemAssigned'.
enum EncryptionIdentityType implements pulumi.PulumiEnum<String> {
  valueSystemAssigned("SystemAssigned");

  const EncryptionIdentityType(this.wireValue);
  @override
  final String wireValue;

  static EncryptionIdentityType fromValue(String value) {
    for (final item in EncryptionIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EncryptionIdentityType value: $value');
  }
}
