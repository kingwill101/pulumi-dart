enum RequestMethodMatchValue {
  gET("GET"),
  hEAD("HEAD"),
  pOST("POST"),
  pUT("PUT"),
  dELETE("DELETE"),
  oPTIONS("OPTIONS"),
  tRACE("TRACE");

  const RequestMethodMatchValue(this.wireValue);
  final String wireValue;

  static RequestMethodMatchValue fromValue(String value) {
    for (final item in RequestMethodMatchValue.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RequestMethodMatchValue value: $value');
  }
}

