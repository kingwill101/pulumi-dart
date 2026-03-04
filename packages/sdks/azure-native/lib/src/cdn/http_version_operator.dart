/// Describes operator to be matched
enum HttpVersionOperator {
  equal("Equal");

  const HttpVersionOperator(this.wireValue);
  final String wireValue;

  static HttpVersionOperator fromValue(String value) {
    for (final item in HttpVersionOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HttpVersionOperator value: $value');
  }
}
