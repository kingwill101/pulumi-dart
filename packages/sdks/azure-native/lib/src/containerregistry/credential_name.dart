/// The name of the credential.
enum CredentialName {
  valueCredential1("Credential1");

  const CredentialName(this.value);
  final String value;

  static CredentialName fromValue(String value) {
    for (final item in CredentialName.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CredentialName value: $value');
  }
}

