/// Secret name expected for Enterprise Cloud Engine (ECE) deployment.
enum EceSecrets {
  azureStackLCMUserCredential("AzureStackLCMUserCredential"),
  defaultARBApplication("DefaultARBApplication"),
  localAdminCredential("LocalAdminCredential"),
  witnessStorageKey("WitnessStorageKey");

  const EceSecrets(this.wireValue);
  final String wireValue;

  static EceSecrets fromValue(String value) {
    for (final item in EceSecrets.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EceSecrets value: $value');
  }
}
