// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of QueryLoggingConfig
class QueryLoggingConfig {
  /// The Amazon Resource Name (ARN) of the CloudWatch Logs log group that Amazon Route 53 is publishing logs to.
  final pulumi.Input<String>? cloudWatchLogsLogGroupArn;

  /// Creates a new [QueryLoggingConfig].
  /// [cloudWatchLogsLogGroupArn] The Amazon Resource Name (ARN) of the CloudWatch Logs log group that Amazon Route 53 is publishing logs to.
  QueryLoggingConfig({
    this.cloudWatchLogsLogGroupArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudWatchLogsLogGroupArn': ?cloudWatchLogsLogGroupArn,
    };
  }

  factory QueryLoggingConfig.fromMap(Map<String, dynamic> map) {
    return QueryLoggingConfig(
      cloudWatchLogsLogGroupArn: map['cloudWatchLogsLogGroupArn'] == null ? null : (map['cloudWatchLogsLogGroupArn'] as String).input(),
    );
  }
}

