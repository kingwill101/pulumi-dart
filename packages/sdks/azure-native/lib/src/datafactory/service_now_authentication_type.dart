/// The authentication type to use.
enum ServiceNowAuthenticationType {
  basic("Basic"),
  oAuth2("OAuth2");

  const ServiceNowAuthenticationType(this.wireValue);
  final String wireValue;

  static ServiceNowAuthenticationType fromValue(String value) {
    for (final item in ServiceNowAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceNowAuthenticationType value: $value');
  }
}
