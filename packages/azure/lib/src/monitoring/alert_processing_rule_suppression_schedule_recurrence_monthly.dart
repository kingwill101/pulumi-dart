// ignore_for_file: unused_element, unnecessary_cast


class AlertProcessingRuleSuppressionScheduleRecurrenceMonthly {
  /// Specifies a list of dayOfMonth to recurrence. Possible values are integers between `1` - `31`.
  final List<int> daysOfMonths;
  /// Specifies the recurrence end time (H:M:S).
  final String? endTime;
  /// Specifies the recurrence start time (H:M:S).
  final String? startTime;

  /// Creates a new [AlertProcessingRuleSuppressionScheduleRecurrenceMonthly].
  /// [daysOfMonths] Specifies a list of dayOfMonth to recurrence. Possible values are integers between `1` - `31`.
  /// [endTime] Specifies the recurrence end time (H:M:S).
  /// [startTime] Specifies the recurrence start time (H:M:S).
  AlertProcessingRuleSuppressionScheduleRecurrenceMonthly({
    required this.daysOfMonths,
    this.endTime,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysOfMonths': daysOfMonths,
      'endTime': ?endTime,
      'startTime': ?startTime,
    };
  }

  factory AlertProcessingRuleSuppressionScheduleRecurrenceMonthly.fromMap(Map<String, dynamic> map) {
    return AlertProcessingRuleSuppressionScheduleRecurrenceMonthly(
      daysOfMonths: (map['daysOfMonths'] as List).cast<int>(),
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}

