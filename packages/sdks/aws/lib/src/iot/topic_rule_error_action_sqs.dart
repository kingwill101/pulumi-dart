// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TopicRuleErrorActionSqs {
  /// The URL of the Amazon SQS queue.
  final pulumi.Input<String> queueUrl;
  /// The ARN of the IAM role that grants access.
  final pulumi.Input<String> roleArn;
  /// Specifies whether to use Base64 encoding.
  final pulumi.Input<bool> useBase64;

  /// Creates a new [TopicRuleErrorActionSqs].
  /// [queueUrl] The URL of the Amazon SQS queue.
  /// [roleArn] The ARN of the IAM role that grants access.
  /// [useBase64] Specifies whether to use Base64 encoding.
  const TopicRuleErrorActionSqs({
    required this.queueUrl,
    required this.roleArn,
    required this.useBase64,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queueUrl': queueUrl,
      'roleArn': roleArn,
      'useBase64': useBase64,
    };
  }

  factory TopicRuleErrorActionSqs.fromMap(Map<String, dynamic> map) {
    return TopicRuleErrorActionSqs(
      queueUrl: pulumi.Input.fromValue(map['queueUrl'] as String),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      useBase64: pulumi.Input.fromValue(map['useBase64'] as bool),
    );
  }
}

