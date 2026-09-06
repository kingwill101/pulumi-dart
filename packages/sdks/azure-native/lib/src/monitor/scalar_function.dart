import 'package:pulumi/pulumi.dart' as pulumi;

/// Scalar function applied for filtering.
enum ScalarFunction implements pulumi.PulumiEnum<String> {
  max("max"),
  min("min"),
  avg("avg"),
  sum("sum");

  const ScalarFunction(this.wireValue);
  @override
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
