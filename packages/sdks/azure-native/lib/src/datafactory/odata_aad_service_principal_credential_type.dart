/// Specify the credential type (key or cert) is used for service principal.
enum ODataAadServicePrincipalCredentialType {
  valueServicePrincipalKey("ServicePrincipalKey"),
  valueServicePrincipalCert("ServicePrincipalCert");

  const ODataAadServicePrincipalCredentialType(this.wireValue);
  final String wireValue;

  static ODataAadServicePrincipalCredentialType fromValue(String value) {
    for (final item in ODataAadServicePrincipalCredentialType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ODataAadServicePrincipalCredentialType value: $value');
  }
}

