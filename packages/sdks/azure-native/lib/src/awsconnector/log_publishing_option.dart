// ignore_for_file: unused_element, unnecessary_cast


/// Definition of LogPublishingOption
class LogPublishingOption {
  /// <p>The Amazon Resource Name (ARN) of the CloudWatch Logs group to publish logs to.</p>
  final String? cloudWatchLogsLogGroupArn;
  /// <p>Whether the log should be published.</p>
  final bool? enabled;

  /// Creates a new [LogPublishingOption].
  /// [cloudWatchLogsLogGroupArn] <p>The Amazon Resource Name (ARN) of the CloudWatch Logs group to publish logs to.</p>
  /// [enabled] <p>Whether the log should be published.</p>
  LogPublishingOption({
    this.cloudWatchLogsLogGroupArn,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudWatchLogsLogGroupArn': ?cloudWatchLogsLogGroupArn,
      'enabled': ?enabled,
    };
  }

  factory LogPublishingOption.fromMap(Map<String, dynamic> map) {
    return LogPublishingOption(
      cloudWatchLogsLogGroupArn: map['cloudWatchLogsLogGroupArn'] == null ? null : map['cloudWatchLogsLogGroupArn'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

