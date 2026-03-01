/// The scheme.
enum Scheme {
  valueHttp("http"),
  valueHttps("https");

  const Scheme(this.value);
  final String value;

  static Scheme fromValue(String value) {
    for (final item in Scheme.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Scheme value: $value');
  }
}

