import 'package:pulumi/pulumi.dart' as pulumi;

enum DataEncryptionType implements pulumi.PulumiEnum<String> {
  azureKeyVault("AzureKeyVault"),
  systemAssigned("SystemAssigned");

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
