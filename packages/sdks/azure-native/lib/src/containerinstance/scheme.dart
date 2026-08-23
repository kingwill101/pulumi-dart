/// The scheme.
enum Scheme {
  valueHttp("http"),
  valueHttps("https");

  const Scheme(this.wireValue);
  final String wireValue;

  static Scheme fromValue(String value) {
    for (final item in Scheme.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Scheme value: $value');
  }
}
