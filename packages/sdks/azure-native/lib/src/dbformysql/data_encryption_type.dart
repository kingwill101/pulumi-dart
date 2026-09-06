import 'package:pulumi/pulumi.dart' as pulumi;

/// The key type, AzureKeyVault for enable cmk, SystemManaged for disable cmk.
enum DataEncryptionType implements pulumi.PulumiEnum<String> {
  valueAzureKeyVault("AzureKeyVault"),
  valueSystemManaged("SystemManaged");

  const DataEncryptionType(this.wireValue);
  @override
  final String wireValue;

  static DataEncryptionType fromValue(String value) {
    for (final item in DataEncryptionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataEncryptionType value: $value');
  }
}
