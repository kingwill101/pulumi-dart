enum SecretStoreType {
  valueNone("None"),
  valueKubeSecret("KubeSecret"),
  valueKeyVaultSecret("KeyVaultSecret"),
  valueAppServiceAppSettings("AppServiceAppSettings");

  const SecretStoreType(this.value);
  final String value;

  static SecretStoreType fromValue(String value) {
    for (final item in SecretStoreType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecretStoreType value: $value');
  }
}

