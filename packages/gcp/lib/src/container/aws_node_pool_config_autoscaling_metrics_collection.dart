// ignore_for_file: unused_element, unnecessary_cast

class AwsNodePoolConfigAutoscalingMetricsCollection {
  /// The frequency at which EC2 Auto Scaling sends aggregated data to AWS CloudWatch. The only valid value is "1Minute".
  final String granularity;

  /// The metrics to enable. For a list of valid metrics, see https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_EnableMetricsCollection.html. If you specify granularity and don't specify any metrics, all metrics are enabled.
  final List<String>? metrics;

  /// Creates a new [AwsNodePoolConfigAutoscalingMetricsCollection].
  /// [granularity] The frequency at which EC2 Auto Scaling sends aggregated data to AWS CloudWatch. The only valid value is "1Minute".
  /// [metrics] The metrics to enable. For a list of valid metrics, see https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_EnableMetricsCollection.html. If you specify granularity and don't specify any metrics, all metrics are enabled.
  AwsNodePoolConfigAutoscalingMetricsCollection({
    required this.granularity,
    this.metrics,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['granularity'] = granularity;
    final metricsValue = metrics;
    if (metricsValue != null) {
      map['metrics'] = metricsValue;
    }
    return map;
  }

  factory AwsNodePoolConfigAutoscalingMetricsCollection.fromMap(
      Map<String, dynamic> map) {
    return AwsNodePoolConfigAutoscalingMetricsCollection(
      granularity: map['granularity'] as String,
      metrics: map['metrics'] == null
          ? null
          : (map['metrics'] as List).cast<String>(),
    );
  }
}
