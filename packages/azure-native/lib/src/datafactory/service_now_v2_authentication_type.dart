/// The authentication type to use.
enum ServiceNowV2AuthenticationType {
  valueBasic("Basic"),
  valueOAuth2("OAuth2");

  const ServiceNowV2AuthenticationType(this.value);
  final String value;

  static ServiceNowV2AuthenticationType fromValue(String value) {
    for (final item in ServiceNowV2AuthenticationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceNowV2AuthenticationType value: $value');
  }
}

