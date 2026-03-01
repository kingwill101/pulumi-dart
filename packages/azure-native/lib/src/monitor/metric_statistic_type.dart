/// the metric statistic type. How the metrics from multiple instances are combined.
enum MetricStatisticType {
  valueAverage("Average"),
  valueMin("Min"),
  valueMax("Max"),
  valueSum("Sum"),
  valueCount("Count");

  const MetricStatisticType(this.value);
  final String value;

  static MetricStatisticType fromValue(String value) {
    for (final item in MetricStatisticType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MetricStatisticType value: $value');
  }
}

