/// Type of the secret used for authentication.
enum SecretType {
  keyVault("KeyVault"),
  sshPubKey("SshPubKey");

  const SecretType(this.value);
  final String value;

  static SecretType fromValue(String value) {
    for (final item in SecretType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecretType value: $value');
  }
}

