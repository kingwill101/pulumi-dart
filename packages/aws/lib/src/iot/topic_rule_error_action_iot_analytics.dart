// ignore_for_file: unused_element, unnecessary_cast

class TopicRuleErrorActionIotAnalytics {
  /// The payload that contains a JSON array of records will be sent to IoT Analytics via a batch call.
  final bool? batchMode;

  /// Name of AWS IOT Analytics channel.
  final String channelName;

  /// The ARN of the IAM role that grants access.
  final String roleArn;

  /// Creates a new [TopicRuleErrorActionIotAnalytics].
  /// [batchMode] The payload that contains a JSON array of records will be sent to IoT Analytics via a batch call.
  /// [channelName] Name of AWS IOT Analytics channel.
  /// [roleArn] The ARN of the IAM role that grants access.
  TopicRuleErrorActionIotAnalytics({
    this.batchMode,
    required this.channelName,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final batchModeValue = batchMode;
    if (batchModeValue != null) {
      map['batchMode'] = batchModeValue;
    }
    map['channelName'] = channelName;
    map['roleArn'] = roleArn;
    return map;
  }

  factory TopicRuleErrorActionIotAnalytics.fromMap(Map<String, dynamic> map) {
    return TopicRuleErrorActionIotAnalytics(
      batchMode: map['batchMode'] == null ? null : map['batchMode'] as bool,
      channelName: map['channelName'] as String,
      roleArn: map['roleArn'] as String,
    );
  }
}
