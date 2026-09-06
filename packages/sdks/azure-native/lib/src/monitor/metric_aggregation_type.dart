import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of aggregation to apply to the metric
enum MetricAggregationType implements pulumi.PulumiEnum<String> {
  none("None"),
  average("Average"),
  count("Count"),
  minimum("Minimum"),
  maximum("Maximum"),
  total("Total");

  const MetricAggregationType(this.wireValue);
  @override
  final String wireValue;

  static MetricAggregationType fromValue(String value) {
    for (final item in MetricAggregationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MetricAggregationType value: $value');
  }
}
