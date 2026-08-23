/// Scalar function applied for filtering.
enum ScalarFunction {
  max("max"),
  min("min"),
  avg("avg"),
  sum("sum");

  const ScalarFunction(this.wireValue);
  final String wireValue;

  static ScalarFunction fromValue(String value) {
    for (final item in ScalarFunction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScalarFunction value: $value');
  }
}
