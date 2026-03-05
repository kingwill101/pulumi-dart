// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduleTargetSqsParameters {
  /// FIFO message group ID to use as the target.
  final pulumi.Input<String>? messageGroupId;

  /// Creates a new [ScheduleTargetSqsParameters].
  /// [messageGroupId] FIFO message group ID to use as the target.
  ScheduleTargetSqsParameters({
    this.messageGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messageGroupId': ?messageGroupId,
    };
  }

  factory ScheduleTargetSqsParameters.fromMap(Map<String, dynamic> map) {
    return ScheduleTargetSqsParameters(
      messageGroupId: (() { final guardedValue = map['messageGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

