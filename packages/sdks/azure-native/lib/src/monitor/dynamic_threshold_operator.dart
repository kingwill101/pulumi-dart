import 'package:pulumi/pulumi.dart' as pulumi;

/// The operator used to compare the metric value against the threshold.
enum DynamicThresholdOperator implements pulumi.PulumiEnum<String> {
  valueGreaterThan("GreaterThan"),
  valueLessThan("LessThan"),
  valueGreaterOrLessThan("GreaterOrLessThan");

  const DynamicThresholdOperator(this.wireValue);
  @override
  final String wireValue;

  static DynamicThresholdOperator fromValue(String value) {
    for (final item in DynamicThresholdOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DynamicThresholdOperator value: $value');
  }
}
