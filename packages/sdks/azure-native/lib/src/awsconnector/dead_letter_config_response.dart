// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of DeadLetterConfig
class DeadLetterConfigResponse {
  /// The Amazon Resource Name (ARN) of an Amazon SQS queue or Amazon SNS topic.
  final pulumi.Input<String>? targetArn;

  /// Creates a new [DeadLetterConfigResponse].
  /// [targetArn] The Amazon Resource Name (ARN) of an Amazon SQS queue or Amazon SNS topic.
  const DeadLetterConfigResponse({
    this.targetArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetArn': ?targetArn,
    };
  }

  factory DeadLetterConfigResponse.fromMap(Map<String, dynamic> map) {
    return DeadLetterConfigResponse(
      targetArn: (() { final guardedValue = map['targetArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
