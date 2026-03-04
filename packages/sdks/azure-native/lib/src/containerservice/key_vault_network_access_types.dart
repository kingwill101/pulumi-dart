/// Network access of the key vault. Network access of key vault. The possible values are `Public` and `Private`. `Public` means the key vault allows public access from all networks. `Private` means the key vault disables public access and enables private link. The default value is `Public`.
enum KeyVaultNetworkAccessTypes {
  valuePublic("Public"),
  valuePrivate("Private");

  const KeyVaultNetworkAccessTypes(this.wireValue);
  final String wireValue;

  static KeyVaultNetworkAccessTypes fromValue(String value) {
    for (final item in KeyVaultNetworkAccessTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KeyVaultNetworkAccessTypes value: $value');
  }
}
