/// The authentication type.
enum AuthType {
  valueSystemAssignedIdentity("systemAssignedIdentity"),
  valueUserAssignedIdentity("userAssignedIdentity"),
  valueServicePrincipalSecret("servicePrincipalSecret"),
  valueServicePrincipalCertificate("servicePrincipalCertificate"),
  valueSecret("secret"),
  valueAccessKey("accessKey"),
  valueUserAccount("userAccount"),
  valueEasyAuthMicrosoftEntraID("easyAuthMicrosoftEntraID");

  const AuthType(this.value);
  final String value;

  static AuthType fromValue(String value) {
    for (final item in AuthType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthType value: $value');
  }
}

