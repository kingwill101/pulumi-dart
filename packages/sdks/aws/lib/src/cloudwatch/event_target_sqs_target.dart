// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventTargetSqsTarget {
  /// The FIFO message group ID to use as the target.
  final pulumi.Input<String>? messageGroupId;

  /// Creates a new [EventTargetSqsTarget].
  /// [messageGroupId] The FIFO message group ID to use as the target.
  EventTargetSqsTarget({
    this.messageGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messageGroupId': ?messageGroupId,
    };
  }

  factory EventTargetSqsTarget.fromMap(Map<String, dynamic> map) {
    return EventTargetSqsTarget(
      messageGroupId: map['messageGroupId'] == null ? null : ((map['messageGroupId'] as String).input()).input(),
    );
  }
}

