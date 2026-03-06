// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TopicRuleErrorActionSns {
  /// The message format of the message to publish. Accepted values are "JSON" and "RAW".
  final pulumi.Input<String>? messageFormat;
  /// The ARN of the IAM role that grants access.
  final pulumi.Input<String> roleArn;
  /// The ARN of the SNS topic.
  final pulumi.Input<String> targetArn;

  /// Creates a new [TopicRuleErrorActionSns].
  /// [messageFormat] The message format of the message to publish. Accepted values are "JSON" and "RAW".
  /// [roleArn] The ARN of the IAM role that grants access.
  /// [targetArn] The ARN of the SNS topic.
  const TopicRuleErrorActionSns({
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
      messageFormat: (() { final guardedValue = map['messageFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      targetArn: pulumi.Input.fromValue(map['targetArn'] as String),
    );
  }
}

