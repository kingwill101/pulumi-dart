// ignore_for_file: unused_element, unnecessary_cast

class AnalyticsApplicationCloudwatchLoggingOptions {
  /// The ARN of the Kinesis Analytics Application.
  final String? id;

  /// The ARN of the CloudWatch Log Stream.
  final String logStreamArn;

  /// The ARN of the IAM Role used to send application messages.
  final String roleArn;

  /// Creates a new [AnalyticsApplicationCloudwatchLoggingOptions].
  /// [id] The ARN of the Kinesis Analytics Application.
  /// [logStreamArn] The ARN of the CloudWatch Log Stream.
  /// [roleArn] The ARN of the IAM Role used to send application messages.
  AnalyticsApplicationCloudwatchLoggingOptions({
    this.id,
    required this.logStreamArn,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    map['logStreamArn'] = logStreamArn;
    map['roleArn'] = roleArn;
    return map;
  }

  factory AnalyticsApplicationCloudwatchLoggingOptions.fromMap(
      Map<String, dynamic> map) {
    return AnalyticsApplicationCloudwatchLoggingOptions(
      id: map['id'] == null ? null : map['id'] as String,
      logStreamArn: map['logStreamArn'] as String,
      roleArn: map['roleArn'] as String,
    );
  }
}
