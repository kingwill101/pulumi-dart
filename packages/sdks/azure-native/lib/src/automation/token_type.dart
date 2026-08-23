/// The token type. Must be either PersonalAccessToken or Oauth.
enum TokenType {
  personalAccessToken("PersonalAccessToken"),
  oauth("Oauth");

  const TokenType(this.wireValue);
  final String wireValue;

  static TokenType fromValue(String value) {
    for (final item in TokenType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TokenType value: $value');
  }
}
