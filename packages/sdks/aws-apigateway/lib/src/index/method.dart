enum Method {
  valueANY("ANY"),
  valueGET("GET"),
  valuePUT("PUT"),
  valuePOST("POST"),
  valueDELETE("DELETE"),
  valuePATCH("PATCH"),
  valueOPTIONS("OPTIONS"),
  valueHEAD("HEAD");

  const Method(this.wireValue);
  final String wireValue;

  static Method fromValue(String value) {
    for (final item in Method.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Method value: $value');
  }
}
