/// Metric to use when displaying costs.
enum MetricType {
  valueActualCost("ActualCost"),
  valueAmortizedCost("AmortizedCost"),
  valueAHUB("AHUB");

  const MetricType(this.value);
  final String value;

  static MetricType fromValue(String value) {
    for (final item in MetricType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MetricType value: $value');
  }
}

