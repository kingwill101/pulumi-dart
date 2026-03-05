// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TopicRuleErrorActionCloudwatchMetric {
  /// The CloudWatch metric name.
  final pulumi.Input<String> metricName;
  /// The CloudWatch metric namespace name.
  final pulumi.Input<String> metricNamespace;
  /// An optional Unix timestamp (http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/cloudwatch_concepts.html#about_timestamp).
  final pulumi.Input<String>? metricTimestamp;
  /// The metric unit (supported units can be found here: http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/cloudwatch_concepts.html#Unit)
  final pulumi.Input<String> metricUnit;
  /// The CloudWatch metric value.
  final pulumi.Input<String> metricValue;
  /// The IAM role ARN that allows access to the CloudWatch metric.
  final pulumi.Input<String> roleArn;

  /// Creates a new [TopicRuleErrorActionCloudwatchMetric].
  /// [metricName] The CloudWatch metric name.
  /// [metricNamespace] The CloudWatch metric namespace name.
  /// [metricTimestamp] An optional Unix timestamp (http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/cloudwatch_concepts.html#about_timestamp).
  /// [metricUnit] The metric unit (supported units can be found here: http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/cloudwatch_concepts.html#Unit)
  /// [metricValue] The CloudWatch metric value.
  /// [roleArn] The IAM role ARN that allows access to the CloudWatch metric.
  TopicRuleErrorActionCloudwatchMetric({
    required this.metricName,
    required this.metricNamespace,
    this.metricTimestamp,
    required this.metricUnit,
    required this.metricValue,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricName': metricName,
      'metricNamespace': metricNamespace,
      'metricTimestamp': ?metricTimestamp,
      'metricUnit': metricUnit,
      'metricValue': metricValue,
      'roleArn': roleArn,
    };
  }

  factory TopicRuleErrorActionCloudwatchMetric.fromMap(Map<String, dynamic> map) {
    return TopicRuleErrorActionCloudwatchMetric(
      metricName: pulumi.Input.fromValue(map['metricName'] as String),
      metricNamespace: pulumi.Input.fromValue(map['metricNamespace'] as String),
      metricTimestamp: (() { final guardedValue = map['metricTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metricUnit: pulumi.Input.fromValue(map['metricUnit'] as String),
      metricValue: pulumi.Input.fromValue(map['metricValue'] as String),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
    );
  }
}

