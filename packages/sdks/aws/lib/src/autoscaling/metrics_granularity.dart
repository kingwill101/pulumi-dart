import 'package:pulumi/pulumi.dart' as pulumi;

/// See https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_EnableMetricsCollection.html
enum MetricsGranularity implements pulumi.PulumiEnum<String> {
  oneMinute("1Minute");

  const MetricsGranularity(this.wireValue);
  @override
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
