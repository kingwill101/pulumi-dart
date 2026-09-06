// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of QueryLoggingConfig
class QueryLoggingConfigResponse {
  /// The Amazon Resource Name (ARN) of the CloudWatch Logs log group that Amazon Route 53 is publishing logs to.
  final pulumi.Input<String?>? cloudWatchLogsLogGroupArn;

  /// Creates a new [QueryLoggingConfigResponse].
  /// [cloudWatchLogsLogGroupArn] The Amazon Resource Name (ARN) of the CloudWatch Logs log group that Amazon Route 53 is publishing logs to.
  const QueryLoggingConfigResponse({
    this.cloudWatchLogsLogGroupArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudWatchLogsLogGroupArn': ?cloudWatchLogsLogGroupArn,
    };
  }

  factory QueryLoggingConfigResponse.fromMap(Map<String, dynamic> map) {
    return QueryLoggingConfigResponse(
      cloudWatchLogsLogGroupArn: (() { final guardedValue = map['cloudWatchLogsLogGroupArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
