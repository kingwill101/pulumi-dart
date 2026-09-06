import 'package:pulumi/pulumi.dart' as pulumi;

/// Secret name expected for Enterprise Cloud Engine (ECE) deployment.
enum EceSecrets implements pulumi.PulumiEnum<String> {
  azureStackLCMUserCredential("AzureStackLCMUserCredential"),
  defaultARBApplication("DefaultARBApplication"),
  localAdminCredential("LocalAdminCredential"),
  witnessStorageKey("WitnessStorageKey");

  const EceSecrets(this.wireValue);
  @override
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
