enum RequestSchemeMatchValue {
  hTTP("HTTP"),
  hTTPS("HTTPS");

  const RequestSchemeMatchValue(this.wireValue);
  final String wireValue;

  static RequestSchemeMatchValue fromValue(String value) {
    for (final item in RequestSchemeMatchValue.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RequestSchemeMatchValue value: $value');
  }
}
