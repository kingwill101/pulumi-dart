// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of DeadLetterConfig
class DeadLetterConfig {
  /// The Amazon Resource Name (ARN) of an Amazon SQS queue or Amazon SNS topic.
  final pulumi.Input<String?>? targetArn;

  /// Creates a new [DeadLetterConfig].
  /// [targetArn] The Amazon Resource Name (ARN) of an Amazon SQS queue or Amazon SNS topic.
  const DeadLetterConfig({
    this.targetArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetArn': ?targetArn,
    };
  }

  factory DeadLetterConfig.fromMap(Map<String, dynamic> map) {
    return DeadLetterConfig(
      targetArn: (() { final guardedValue = map['targetArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
