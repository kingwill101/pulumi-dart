enum Method {
  valueANY("ANY"),
  valueGET("GET"),
  valuePUT("PUT"),
  valuePOST("POST"),
  valueDELETE("DELETE"),
  valuePATCH("PATCH"),
  valueOPTIONS("OPTIONS"),
  valueHEAD("HEAD");

  const Method(this.value);
  final String value;

  static Method fromValue(String value) {
    for (final item in Method.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Method value: $value');
  }
}

