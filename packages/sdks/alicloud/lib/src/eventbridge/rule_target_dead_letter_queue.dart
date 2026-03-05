// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleTargetDeadLetterQueue {
  /// The Alibaba Cloud Resource Name (ARN) of the dead letter queue. Events that are not processed or whose maximum retries are exceeded are written to the dead-letter queue. The ARN feature is supported by the following queue types: MNS and Message Queue for Apache RocketMQ.
  final pulumi.Input<String>? arn;

  /// Creates a new [RuleTargetDeadLetterQueue].
  /// [arn] The Alibaba Cloud Resource Name (ARN) of the dead letter queue. Events that are not processed or whose maximum retries are exceeded are written to the dead-letter queue. The ARN feature is supported by the following queue types: MNS and Message Queue for Apache RocketMQ.
  RuleTargetDeadLetterQueue({
    this.arn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
    };
  }

  factory RuleTargetDeadLetterQueue.fromMap(Map<String, dynamic> map) {
    return RuleTargetDeadLetterQueue(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

