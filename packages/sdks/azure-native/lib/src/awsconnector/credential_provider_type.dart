/// Property value
enum CredentialProviderType {
  sECRETSMANAGER("SECRETS_MANAGER");

  const CredentialProviderType(this.wireValue);
  final String wireValue;

  static CredentialProviderType fromValue(String value) {
    for (final item in CredentialProviderType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CredentialProviderType value: $value');
  }
}
