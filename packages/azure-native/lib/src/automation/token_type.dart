/// The token type. Must be either PersonalAccessToken or Oauth.
enum TokenType {
  valuePersonalAccessToken("PersonalAccessToken"),
  valueOauth("Oauth");

  const TokenType(this.value);
  final String value;

  static TokenType fromValue(String value) {
    for (final item in TokenType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TokenType value: $value');
  }
}

