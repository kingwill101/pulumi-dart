/// Authentication mode for Geneva Actions
enum GenevaActionAuthenticationMode {
  oAuth("OAuth"),
  wSTrust("WS-Trust");

  const GenevaActionAuthenticationMode(this.wireValue);
  final String wireValue;

  static GenevaActionAuthenticationMode fromValue(String value) {
    for (final item in GenevaActionAuthenticationMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GenevaActionAuthenticationMode value: $value');
  }
}
