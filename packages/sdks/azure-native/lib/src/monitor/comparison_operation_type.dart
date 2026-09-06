import 'package:pulumi/pulumi.dart' as pulumi;

/// the operator that is used to compare the metric data and the threshold.
enum ComparisonOperationType implements pulumi.PulumiEnum<String> {
  valueEquals("Equals"),
  valueNotEquals("NotEquals"),
  valueGreaterThan("GreaterThan"),
  valueGreaterThanOrEqual("GreaterThanOrEqual"),
  valueLessThan("LessThan"),
  valueLessThanOrEqual("LessThanOrEqual");

  const ComparisonOperationType(this.wireValue);
  @override
  final String wireValue;

  static ComparisonOperationType fromValue(String value) {
    for (final item in ComparisonOperationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComparisonOperationType value: $value');
  }
}
