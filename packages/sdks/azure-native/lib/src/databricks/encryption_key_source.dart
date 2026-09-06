import 'package:pulumi/pulumi.dart' as pulumi;

/// The encryption keySource (provider). Possible values (case-insensitive):  Microsoft.Keyvault
enum EncryptionKeySource implements pulumi.PulumiEnum<String> {
  microsoftKeyvault("Microsoft.Keyvault");

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
