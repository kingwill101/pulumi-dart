/// Metric to use when displaying costs.
enum MetricType {
  valueActualCost("ActualCost"),
  valueAmortizedCost("AmortizedCost"),
  valueAHUB("AHUB");

  const MetricType(this.wireValue);
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

