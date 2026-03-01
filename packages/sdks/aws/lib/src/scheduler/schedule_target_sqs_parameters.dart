// ignore_for_file: unused_element, unnecessary_cast


class ScheduleTargetSqsParameters {
  /// FIFO message group ID to use as the target.
  final String? messageGroupId;

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
      messageGroupId: map['messageGroupId'] == null ? null : map['messageGroupId'] as String,
    );
  }
}

