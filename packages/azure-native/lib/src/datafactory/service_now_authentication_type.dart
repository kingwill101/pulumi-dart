/// The authentication type to use.
enum ServiceNowAuthenticationType {
  valueBasic("Basic"),
  valueOAuth2("OAuth2");

  const ServiceNowAuthenticationType(this.value);
  final String value;

  static ServiceNowAuthenticationType fromValue(String value) {
    for (final item in ServiceNowAuthenticationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceNowAuthenticationType value: $value');
  }
}

