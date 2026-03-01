// ignore_for_file: unused_element, unnecessary_cast

class TopicRuleErrorActionSns {
  /// The message format of the message to publish. Accepted values are "JSON" and "RAW".
  final String? messageFormat;

  /// The ARN of the IAM role that grants access.
  final String roleArn;

  /// The ARN of the SNS topic.
  final String targetArn;

  /// Creates a new [TopicRuleErrorActionSns].
  /// [messageFormat] The message format of the message to publish. Accepted values are "JSON" and "RAW".
  /// [roleArn] The ARN of the IAM role that grants access.
  /// [targetArn] The ARN of the SNS topic.
  TopicRuleErrorActionSns({
    this.messageFormat,
    required this.roleArn,
    required this.targetArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messageFormat': ?messageFormat,
      'roleArn': roleArn,
      'targetArn': targetArn,
    };
  }

  factory TopicRuleErrorActionSns.fromMap(Map<String, dynamic> map) {
    return TopicRuleErrorActionSns(
      messageFormat: map['messageFormat'] == null
          ? null
          : map['messageFormat'] as String,
      roleArn: map['roleArn'] as String,
      targetArn: map['targetArn'] as String,
    );
  }
}
