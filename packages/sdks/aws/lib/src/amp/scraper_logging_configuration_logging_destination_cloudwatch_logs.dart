// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScraperLoggingConfigurationLoggingDestinationCloudwatchLogs {
  /// ARN of the CloudWatch Logs log group. Must end with `:*`.
  final pulumi.Input<String> logGroupArn;

  /// Creates a new [ScraperLoggingConfigurationLoggingDestinationCloudwatchLogs].
  /// [logGroupArn] ARN of the CloudWatch Logs log group. Must end with `:*`.
  const ScraperLoggingConfigurationLoggingDestinationCloudwatchLogs({
    required this.logGroupArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logGroupArn': logGroupArn,
    };
  }

  factory ScraperLoggingConfigurationLoggingDestinationCloudwatchLogs.fromMap(Map<String, dynamic> map) {
    return ScraperLoggingConfigurationLoggingDestinationCloudwatchLogs(
      logGroupArn: pulumi.Input.fromValue(map['logGroupArn'] as String),
    );
  }
}
