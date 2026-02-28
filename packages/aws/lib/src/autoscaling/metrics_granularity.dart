/// See https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_EnableMetricsCollection.html
enum MetricsGranularity {
  oneMinute("1Minute");

  const MetricsGranularity(this.value);
  final String value;

  static MetricsGranularity fromValue(String value) {
    for (final item in MetricsGranularity.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MetricsGranularity value: $value');
  }
}
