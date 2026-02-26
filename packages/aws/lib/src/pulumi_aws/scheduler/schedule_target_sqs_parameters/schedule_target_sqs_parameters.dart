// ignore_for_file: unused_element, unnecessary_cast

class ScheduleTargetSqsParameters {
  /// FIFO message group ID to use as the target.
  final String? messageGroupId;

  ScheduleTargetSqsParameters({
    this.messageGroupId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final messageGroupIdValue = messageGroupId;
    if (messageGroupIdValue != null) {
      map['messageGroupId'] = messageGroupIdValue;
    }
    return map;
  }

  factory ScheduleTargetSqsParameters.fromMap(Map<String, dynamic> map) {
    return ScheduleTargetSqsParameters(
      messageGroupId: map['messageGroupId'] == null
          ? null
          : map['messageGroupId'] as String,
    );
  }
}
