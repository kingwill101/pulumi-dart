/// Describes operator to be matched
enum RequestMethodOperator {
  equal("Equal");

  const RequestMethodOperator(this.wireValue);
  final String wireValue;

  static RequestMethodOperator fromValue(String value) {
    for (final item in RequestMethodOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RequestMethodOperator value: $value');
  }
}
