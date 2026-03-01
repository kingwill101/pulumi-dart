/// Sets correlation protocol to use for Application Insights diagnostics.
enum HttpCorrelationProtocol {
  valueNone("None"),
  valueLegacy("Legacy"),
  valueW3C("W3C");

  const HttpCorrelationProtocol(this.value);
  final String value;

  static HttpCorrelationProtocol fromValue(String value) {
    for (final item in HttpCorrelationProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HttpCorrelationProtocol value: $value');
  }
}

