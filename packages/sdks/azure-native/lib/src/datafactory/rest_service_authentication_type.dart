/// Type of authentication used to connect to the REST service.
enum RestServiceAuthenticationType {
  anonymous("Anonymous"),
  basic("Basic"),
  aadServicePrincipal("AadServicePrincipal"),
  managedServiceIdentity("ManagedServiceIdentity"),
  oAuth2ClientCredential("OAuth2ClientCredential");

  const RestServiceAuthenticationType(this.wireValue);
  final String wireValue;

  static RestServiceAuthenticationType fromValue(String value) {
    for (final item in RestServiceAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RestServiceAuthenticationType value: $value');
  }
}
