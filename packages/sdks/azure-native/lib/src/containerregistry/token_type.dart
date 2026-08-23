/// The type of Auth token.
enum TokenType {
  valuePAT("PAT"),
  valueOAuth("OAuth");

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
