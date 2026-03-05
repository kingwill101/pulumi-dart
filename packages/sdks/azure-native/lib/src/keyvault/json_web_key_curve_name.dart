/// The elliptic curve name. For valid values, see JsonWebKeyCurveName. Default for EC and EC-HSM keys is P-256
enum JsonWebKeyCurveName {
  valueP256("P-256"),
  valueP384("P-384"),
  valueP521("P-521"),
  valueP256K("P-256K");

  const JsonWebKeyCurveName(this.wireValue);
  final String wireValue;

  static JsonWebKeyCurveName fromValue(String value) {
    for (final item in JsonWebKeyCurveName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JsonWebKeyCurveName value: $value');
  }
}

