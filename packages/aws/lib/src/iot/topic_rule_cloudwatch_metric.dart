// ignore_for_file: unused_element, unnecessary_cast

class TopicRuleCloudwatchMetric {
  /// The CloudWatch metric name.
  final String metricName;

  /// The CloudWatch metric namespace name.
  final String metricNamespace;

  /// An optional Unix timestamp (http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/cloudwatch_concepts.html#about_timestamp).
  final String? metricTimestamp;

  /// The metric unit (supported units can be found here: http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/cloudwatch_concepts.html#Unit)
  final String metricUnit;

  /// The CloudWatch metric value.
  final String metricValue;

  /// The IAM role ARN that allows access to the CloudWatch metric.
  final String roleArn;

  /// Creates a new [TopicRuleCloudwatchMetric].
  /// [metricName] The CloudWatch metric name.
  /// [metricNamespace] The CloudWatch metric namespace name.
  /// [metricTimestamp] An optional Unix timestamp (http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/cloudwatch_concepts.html#about_timestamp).
  /// [metricUnit] The metric unit (supported units can be found here: http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/cloudwatch_concepts.html#Unit)
  /// [metricValue] The CloudWatch metric value.
  /// [roleArn] The IAM role ARN that allows access to the CloudWatch metric.
  TopicRuleCloudwatchMetric({
    required this.metricName,
    required this.metricNamespace,
    this.metricTimestamp,
    required this.metricUnit,
    required this.metricValue,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metricName'] = metricName;
    map['metricNamespace'] = metricNamespace;
    final metricTimestampValue = metricTimestamp;
    if (metricTimestampValue != null) {
      map['metricTimestamp'] = metricTimestampValue;
    }
    map['metricUnit'] = metricUnit;
    map['metricValue'] = metricValue;
    map['roleArn'] = roleArn;
    return map;
  }

  factory TopicRuleCloudwatchMetric.fromMap(Map<String, dynamic> map) {
    return TopicRuleCloudwatchMetric(
      metricName: map['metricName'] as String,
      metricNamespace: map['metricNamespace'] as String,
      metricTimestamp: map['metricTimestamp'] == null
          ? null
          : map['metricTimestamp'] as String,
      metricUnit: map['metricUnit'] as String,
      metricValue: map['metricValue'] as String,
      roleArn: map['roleArn'] as String,
    );
  }
}
