/// the metric statistic type. How the metrics from multiple instances are combined.
enum MetricStatisticType {
  valueAverage("Average"),
  valueMin("Min"),
  valueMax("Max"),
  valueSum("Sum"),
  valueCount("Count");

  const MetricStatisticType(this.wireValue);
  final String wireValue;

  static MetricStatisticType fromValue(String value) {
    for (final item in MetricStatisticType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MetricStatisticType value: $value');
  }
}

