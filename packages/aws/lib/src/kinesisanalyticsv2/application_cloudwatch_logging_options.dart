// ignore_for_file: unused_element, unnecessary_cast

class ApplicationCloudwatchLoggingOptions {
  final String? cloudwatchLoggingOptionId;

  /// The ARN of the CloudWatch log stream to receive application messages.
  final String logStreamArn;

  /// Creates a new [ApplicationCloudwatchLoggingOptions].
  /// [cloudwatchLoggingOptionId] Optional.
  /// [logStreamArn] The ARN of the CloudWatch log stream to receive application messages.
  ApplicationCloudwatchLoggingOptions({
    this.cloudwatchLoggingOptionId,
    required this.logStreamArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudwatchLoggingOptionIdValue = cloudwatchLoggingOptionId;
    if (cloudwatchLoggingOptionIdValue != null) {
      map['cloudwatchLoggingOptionId'] = cloudwatchLoggingOptionIdValue;
    }
    map['logStreamArn'] = logStreamArn;
    return map;
  }

  factory ApplicationCloudwatchLoggingOptions.fromMap(
      Map<String, dynamic> map) {
    return ApplicationCloudwatchLoggingOptions(
      cloudwatchLoggingOptionId: map['cloudwatchLoggingOptionId'] == null
          ? null
          : map['cloudwatchLoggingOptionId'] as String,
      logStreamArn: map['logStreamArn'] as String,
    );
  }
}
