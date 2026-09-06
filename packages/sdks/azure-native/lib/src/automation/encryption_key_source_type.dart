import 'package:pulumi/pulumi.dart' as pulumi;

/// Encryption Key Source
enum EncryptionKeySourceType implements pulumi.PulumiEnum<String> {
  microsoftAutomation("Microsoft.Automation"),
  microsoftKeyvault("Microsoft.Keyvault");

  const EncryptionKeySourceType(this.wireValue);
  @override
  final String wireValue;

  static EncryptionKeySourceType fromValue(String value) {
    for (final item in EncryptionKeySourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EncryptionKeySourceType value: $value');
  }
}
