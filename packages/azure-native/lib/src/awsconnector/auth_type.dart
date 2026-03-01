/// Property value
enum AuthType {
  bASICAUTH("BASIC_AUTH"),
  cODECONNECTIONS("CODECONNECTIONS"),
  oAUTH("OAUTH"),
  pERSONALACCESSTOKEN("PERSONAL_ACCESS_TOKEN");

  const AuthType(this.value);
  final String value;

  static AuthType fromValue(String value) {
    for (final item in AuthType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthType value: $value');
  }
}

