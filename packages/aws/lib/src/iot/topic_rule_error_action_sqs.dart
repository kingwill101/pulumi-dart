// ignore_for_file: unused_element, unnecessary_cast

class TopicRuleErrorActionSqs {
  /// The URL of the Amazon SQS queue.
  final String queueUrl;

  /// The ARN of the IAM role that grants access.
  final String roleArn;

  /// Specifies whether to use Base64 encoding.
  final bool useBase64;

  /// Creates a new [TopicRuleErrorActionSqs].
  /// [queueUrl] The URL of the Amazon SQS queue.
  /// [roleArn] The ARN of the IAM role that grants access.
  /// [useBase64] Specifies whether to use Base64 encoding.
  TopicRuleErrorActionSqs({
    required this.queueUrl,
    required this.roleArn,
    required this.useBase64,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['queueUrl'] = queueUrl;
    map['roleArn'] = roleArn;
    map['useBase64'] = useBase64;
    return map;
  }

  factory TopicRuleErrorActionSqs.fromMap(Map<String, dynamic> map) {
    return TopicRuleErrorActionSqs(
      queueUrl: map['queueUrl'] as String,
      roleArn: map['roleArn'] as String,
      useBase64: map['useBase64'] as bool,
    );
  }
}
