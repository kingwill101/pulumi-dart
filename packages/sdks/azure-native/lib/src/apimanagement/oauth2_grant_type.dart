/// OAuth2 grant type options
enum OAuth2GrantType {
  authorizationCode("AuthorizationCode"),
  clientCredentials("ClientCredentials");

  const OAuth2GrantType(this.wireValue);
  final String wireValue;

  static OAuth2GrantType fromValue(String value) {
    for (final item in OAuth2GrantType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OAuth2GrantType value: $value');
  }
}

