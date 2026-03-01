/// Describes operator to be matched
enum HttpVersionOperator {
  equal("Equal");

  const HttpVersionOperator(this.value);
  final String value;

  static HttpVersionOperator fromValue(String value) {
    for (final item in HttpVersionOperator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HttpVersionOperator value: $value');
  }
}

