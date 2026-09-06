import 'package:pulumi/pulumi.dart' as pulumi;

/// Target aggregate function.
enum TargetAggregationFunction implements pulumi.PulumiEnum<String> {
  none("None"),
  sum("Sum"),
  max("Max"),
  min("Min"),
  mean("Mean");

  const TargetAggregationFunction(this.wireValue);
  @override
  final String wireValue;

  static TargetAggregationFunction fromValue(String value) {
    for (final item in TargetAggregationFunction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetAggregationFunction value: $value');
  }
}
