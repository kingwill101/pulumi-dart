/// See https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_EnableMetricsCollection.html
enum MetricsGranularity {
  oneMinute("1Minute");

  const MetricsGranularity(this.wireValue);
  final String wireValue;

  static MetricsGranularity fromValue(String value) {
    for (final item in MetricsGranularity.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MetricsGranularity value: $value');
  }
}

