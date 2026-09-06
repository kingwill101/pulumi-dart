import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the secret used for authentication.
enum SecretType implements pulumi.PulumiEnum<String> {
  keyVault("KeyVault"),
  sshPubKey("SshPubKey");

  const SecretType(this.wireValue);
  @override
  final String wireValue;

  static SecretType fromValue(String value) {
    for (final item in SecretType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecretType value: $value');
  }
}
