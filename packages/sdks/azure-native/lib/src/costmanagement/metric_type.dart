import 'package:pulumi/pulumi.dart' as pulumi;

/// Metric to use when displaying costs.
enum MetricType implements pulumi.PulumiEnum<String> {
  valueActualCost("ActualCost"),
  valueAmortizedCost("AmortizedCost"),
  valueAHUB("AHUB");

  const MetricType(this.wireValue);
  @override
  final String wireValue;

  static MetricType fromValue(String value) {
    for (final item in MetricType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MetricType value: $value');
  }
}
