/// Property value
enum AuthenticationMode {
  aPI("API"),
  aPIANDCONFIGMAP("API_AND_CONFIG_MAP"),
  cONFIGMAP("CONFIG_MAP");

  const AuthenticationMode(this.wireValue);
  final String wireValue;

  static AuthenticationMode fromValue(String value) {
    for (final item in AuthenticationMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthenticationMode value: $value');
  }
}
