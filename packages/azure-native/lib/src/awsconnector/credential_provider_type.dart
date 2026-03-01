/// Property value
enum CredentialProviderType {
  sECRETSMANAGER("SECRETS_MANAGER");

  const CredentialProviderType(this.value);
  final String value;

  static CredentialProviderType fromValue(String value) {
    for (final item in CredentialProviderType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CredentialProviderType value: $value');
  }
}

