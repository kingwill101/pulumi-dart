// ignore_for_file: unused_element, unnecessary_cast

class TopicRuleCloudwatchLog {
  /// The payload that contains a JSON array of records will be sent to CloudWatch via a batch call.
  final bool? batchMode;

  /// The CloudWatch log group name.
  final String logGroupName;

  /// The IAM role ARN that allows access to the CloudWatch alarm.
  final String roleArn;

  /// Creates a new [TopicRuleCloudwatchLog].
  /// [batchMode] The payload that contains a JSON array of records will be sent to CloudWatch via a batch call.
  /// [logGroupName] The CloudWatch log group name.
  /// [roleArn] The IAM role ARN that allows access to the CloudWatch alarm.
  TopicRuleCloudwatchLog({
    this.batchMode,
    required this.logGroupName,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final batchModeValue = batchMode;
    if (batchModeValue != null) {
      map['batchMode'] = batchModeValue;
    }
    map['logGroupName'] = logGroupName;
    map['roleArn'] = roleArn;
    return map;
  }

  factory TopicRuleCloudwatchLog.fromMap(Map<String, dynamic> map) {
    return TopicRuleCloudwatchLog(
      batchMode: map['batchMode'] == null ? null : map['batchMode'] as bool,
      logGroupName: map['logGroupName'] as String,
      roleArn: map['roleArn'] as String,
    );
  }
}
