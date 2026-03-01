/// Type of authentication used to connect to the REST service.
enum RestServiceAuthenticationType {
  valueAnonymous("Anonymous"),
  valueBasic("Basic"),
  valueAadServicePrincipal("AadServicePrincipal"),
  valueManagedServiceIdentity("ManagedServiceIdentity"),
  valueOAuth2ClientCredential("OAuth2ClientCredential");

  const RestServiceAuthenticationType(this.value);
  final String value;

  static RestServiceAuthenticationType fromValue(String value) {
    for (final item in RestServiceAuthenticationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RestServiceAuthenticationType value: $value');
  }
}

