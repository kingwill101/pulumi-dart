/// The type of Auth token.
enum TokenType {
  valuePAT("PAT"),
  valueOAuth("OAuth");

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

