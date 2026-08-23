/// [Required] Credential type used to authentication with storage.
enum CredentialsType {
  accountKey("AccountKey"),
  certificate("Certificate"),
  none("None"),
  sas("Sas"),
  servicePrincipal("ServicePrincipal");

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
