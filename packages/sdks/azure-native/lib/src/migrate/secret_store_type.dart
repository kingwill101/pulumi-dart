import 'package:pulumi/pulumi.dart' as pulumi;

enum SecretStoreType implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueKubeSecret("KubeSecret"),
  valueKeyVaultSecret("KeyVaultSecret"),
  valueAppServiceAppSettings("AppServiceAppSettings");

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
