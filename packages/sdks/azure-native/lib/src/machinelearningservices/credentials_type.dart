/// [Required] Credential type used to authentication with storage.
enum CredentialsType {
  valueAccountKey("AccountKey"),
  valueCertificate("Certificate"),
  valueNone("None"),
  valueSas("Sas"),
  valueServicePrincipal("ServicePrincipal");

  const CredentialsType(this.wireValue);
  final String wireValue;

  static CredentialsType fromValue(String value) {
    for (final item in CredentialsType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CredentialsType value: $value');
  }
}

