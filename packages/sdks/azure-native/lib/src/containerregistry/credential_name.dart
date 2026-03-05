/// The name of the credential.
enum CredentialName {
  valueCredential1("Credential1");

  const CredentialName(this.wireValue);
  final String wireValue;

  static CredentialName fromValue(String value) {
    for (final item in CredentialName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CredentialName value: $value');
  }
}

