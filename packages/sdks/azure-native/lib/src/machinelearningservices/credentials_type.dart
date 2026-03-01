/// [Required] Credential type used to authentication with storage.
enum CredentialsType {
  valueAccountKey("AccountKey"),
  valueCertificate("Certificate"),
  valueNone("None"),
  valueSas("Sas"),
  valueServicePrincipal("ServicePrincipal");

  const CredentialsType(this.value);
  final String value;

  static CredentialsType fromValue(String value) {
    for (final item in CredentialsType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CredentialsType value: $value');
  }
}

