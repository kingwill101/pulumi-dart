/// Type of aggregation to apply to the metric
enum MetricAggregationType {
  none("None"),
  average("Average"),
  count("Count"),
  minimum("Minimum"),
  maximum("Maximum"),
  total("Total");

  const MetricAggregationType(this.wireValue);
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

