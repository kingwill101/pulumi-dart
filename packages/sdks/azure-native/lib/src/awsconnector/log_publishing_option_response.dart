// ignore_for_file: unused_element, unnecessary_cast


/// Definition of LogPublishingOption
class LogPublishingOptionResponse {
  /// <p>The Amazon Resource Name (ARN) of the CloudWatch Logs group to publish logs to.</p>
  final String? cloudWatchLogsLogGroupArn;
  /// <p>Whether the log should be published.</p>
  final bool? enabled;

  /// Creates a new [LogPublishingOptionResponse].
  /// [cloudWatchLogsLogGroupArn] <p>The Amazon Resource Name (ARN) of the CloudWatch Logs group to publish logs to.</p>
  /// [enabled] <p>Whether the log should be published.</p>
  LogPublishingOptionResponse({
    this.cloudWatchLogsLogGroupArn,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudWatchLogsLogGroupArn': ?cloudWatchLogsLogGroupArn,
      'enabled': ?enabled,
    };
  }

  factory LogPublishingOptionResponse.fromMap(Map<String, dynamic> map) {
    return LogPublishingOptionResponse(
      cloudWatchLogsLogGroupArn: map['cloudWatchLogsLogGroupArn'] == null ? null : map['cloudWatchLogsLogGroupArn'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

