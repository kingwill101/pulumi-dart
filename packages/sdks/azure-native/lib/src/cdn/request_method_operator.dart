/// Describes operator to be matched
enum RequestMethodOperator {
  equal("Equal");

  const RequestMethodOperator(this.value);
  final String value;

  static RequestMethodOperator fromValue(String value) {
    for (final item in RequestMethodOperator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RequestMethodOperator value: $value');
  }
}

