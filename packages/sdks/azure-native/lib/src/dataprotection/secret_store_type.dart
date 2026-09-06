import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the type of secret store
enum SecretStoreType implements pulumi.PulumiEnum<String> {
  valueInvalid("Invalid"),
  valueAzureKeyVault("AzureKeyVault");

  const SecretStoreType(this.wireValue);
  @override
  final String wireValue;

  static SecretStoreType fromValue(String value) {
    for (final item in SecretStoreType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecretStoreType value: $value');
  }
}
