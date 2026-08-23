/// [Required] Credential type used to authentication with storage.
enum SecretsType {
  accountKey("AccountKey"),
  certificate("Certificate"),
  sas("Sas"),
  servicePrincipal("ServicePrincipal");

  const SecretsType(this.wireValue);
  final String wireValue;

  static SecretsType fromValue(String value) {
    for (final item in SecretsType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecretsType value: $value');
  }
}
