enum RequestSchemeMatchValue {
  hTTP("HTTP"),
  hTTPS("HTTPS");

  const RequestSchemeMatchValue(this.value);
  final String value;

  static RequestSchemeMatchValue fromValue(String value) {
    for (final item in RequestSchemeMatchValue.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RequestSchemeMatchValue value: $value');
  }
}

