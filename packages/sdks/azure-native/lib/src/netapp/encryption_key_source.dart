import 'package:pulumi/pulumi.dart' as pulumi;

/// Source of key used to encrypt data in volume. Applicable if NetApp account has encryption.keySource = 'Microsoft.KeyVault'. Possible values (case-insensitive) are: 'Microsoft.NetApp, Microsoft.KeyVault'
enum EncryptionKeySource implements pulumi.PulumiEnum<String> {
  valueMicrosoftNetApp("Microsoft.NetApp"),
  valueMicrosoftKeyVault("Microsoft.KeyVault");

  const EncryptionKeySource(this.wireValue);
  @override
  final String wireValue;

  static EncryptionKeySource fromValue(String value) {
    for (final item in EncryptionKeySource.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EncryptionKeySource value: $value');
  }
}
