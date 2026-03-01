// ignore_for_file: unused_element, unnecessary_cast


/// Definition of QueryLoggingConfig
class QueryLoggingConfigResponse {
  /// The Amazon Resource Name (ARN) of the CloudWatch Logs log group that Amazon Route 53 is publishing logs to.
  final String? cloudWatchLogsLogGroupArn;

  /// Creates a new [QueryLoggingConfigResponse].
  /// [cloudWatchLogsLogGroupArn] The Amazon Resource Name (ARN) of the CloudWatch Logs log group that Amazon Route 53 is publishing logs to.
  QueryLoggingConfigResponse({
    this.cloudWatchLogsLogGroupArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudWatchLogsLogGroupArn': ?cloudWatchLogsLogGroupArn,
    };
  }

  factory QueryLoggingConfigResponse.fromMap(Map<String, dynamic> map) {
    return QueryLoggingConfigResponse(
      cloudWatchLogsLogGroupArn: map['cloudWatchLogsLogGroupArn'] == null ? null : map['cloudWatchLogsLogGroupArn'] as String,
    );
  }
}

