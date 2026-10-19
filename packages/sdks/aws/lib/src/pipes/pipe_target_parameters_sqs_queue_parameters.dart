// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipeTargetParametersSqsQueueParameters {
  /// Token used for deduplication of sent messages. This parameter applies only to FIFO (first-in-first-out) queues.
  final pulumi.Input<String?>? messageDeduplicationId;
  /// FIFO message group ID to use as the target.
  final pulumi.Input<String?>? messageGroupId;

  /// Creates a new [PipeTargetParametersSqsQueueParameters].
  /// [messageDeduplicationId] Token used for deduplication of sent messages. This parameter applies only to FIFO (first-in-first-out) queues.
  /// [messageGroupId] FIFO message group ID to use as the target.
  const PipeTargetParametersSqsQueueParameters({
    this.messageDeduplicationId,
    this.messageGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messageDeduplicationId': ?messageDeduplicationId,
      'messageGroupId': ?messageGroupId,
    };
  }

  factory PipeTargetParametersSqsQueueParameters.fromMap(Map<String, dynamic> map) {
    return PipeTargetParametersSqsQueueParameters(
      messageDeduplicationId: (() { final guardedValue = map['messageDeduplicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      messageGroupId: (() { final guardedValue = map['messageGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
