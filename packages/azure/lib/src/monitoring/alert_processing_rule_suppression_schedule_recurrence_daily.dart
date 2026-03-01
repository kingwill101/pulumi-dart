// ignore_for_file: unused_element, unnecessary_cast


class AlertProcessingRuleSuppressionScheduleRecurrenceDaily {
  /// Specifies the recurrence end time (H:M:S).
  final String endTime;
  /// Specifies the recurrence start time (H:M:S).
  final String startTime;

  /// Creates a new [AlertProcessingRuleSuppressionScheduleRecurrenceDaily].
  /// [endTime] Specifies the recurrence end time (H:M:S).
  /// [startTime] Specifies the recurrence start time (H:M:S).
  AlertProcessingRuleSuppressionScheduleRecurrenceDaily({
    required this.endTime,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'startTime': startTime,
    };
  }

  factory AlertProcessingRuleSuppressionScheduleRecurrenceDaily.fromMap(Map<String, dynamic> map) {
    return AlertProcessingRuleSuppressionScheduleRecurrenceDaily(
      endTime: map['endTime'] as String,
      startTime: map['startTime'] as String,
    );
  }
}

