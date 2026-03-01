/// Type of aggregation to apply to the metric
enum MetricAggregationType {
  none("None"),
  average("Average"),
  count("Count"),
  minimum("Minimum"),
  maximum("Maximum"),
  total("Total");

  const MetricAggregationType(this.value);
  final String value;

  static MetricAggregationType fromValue(String value) {
    for (final item in MetricAggregationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MetricAggregationType value: $value');
  }
}

