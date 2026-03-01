/// OAuth2 grant type options
enum OAuth2GrantType {
  authorizationCode("AuthorizationCode"),
  clientCredentials("ClientCredentials");

  const OAuth2GrantType(this.value);
  final String value;

  static OAuth2GrantType fromValue(String value) {
    for (final item in OAuth2GrantType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OAuth2GrantType value: $value');
  }
}

