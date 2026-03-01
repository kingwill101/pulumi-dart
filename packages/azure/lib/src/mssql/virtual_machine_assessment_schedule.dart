// ignore_for_file: unused_element, unnecessary_cast


class VirtualMachineAssessmentSchedule {
  /// What day of the week the assessment will be run. Possible values are `Friday`, `Monday`, `Saturday`, `Sunday`, `Thursday`, `Tuesday` and `Wednesday`.
  final String dayOfWeek;
  /// How many months between assessment runs. Valid values are between `1` and `5`.
  ///
  /// > **Note:** Either one of `weekly_interval` or `monthly_occurrence` must be specified.
  final int? monthlyOccurrence;
  /// What time the assessment will be run. Must be in the format `HH:mm`.
  final String startTime;
  /// How many weeks between assessment runs. Valid values are between `1` and `6`.
  final int? weeklyInterval;

  /// Creates a new [VirtualMachineAssessmentSchedule].
  /// [dayOfWeek] What day of the week the assessment will be run. Possible values are `Friday`, `Monday`, `Saturday`, `Sunday`, `Thursday`, `Tuesday` and `Wednesday`.
  /// [monthlyOccurrence] How many months between assessment runs. Valid values are between `1` and `5`.
  /// [startTime] What time the assessment will be run. Must be in the format `HH:mm`.
  /// [weeklyInterval] How many weeks between assessment runs. Valid values are between `1` and `6`.
  VirtualMachineAssessmentSchedule({
    required this.dayOfWeek,
    this.monthlyOccurrence,
    required this.startTime,
    this.weeklyInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek,
      'monthlyOccurrence': ?monthlyOccurrence,
      'startTime': startTime,
      'weeklyInterval': ?weeklyInterval,
    };
  }

  factory VirtualMachineAssessmentSchedule.fromMap(Map<String, dynamic> map) {
    return VirtualMachineAssessmentSchedule(
      dayOfWeek: map['dayOfWeek'] as String,
      monthlyOccurrence: map['monthlyOccurrence'] == null ? null : map['monthlyOccurrence'] as int,
      startTime: map['startTime'] as String,
      weeklyInterval: map['weeklyInterval'] == null ? null : map['weeklyInterval'] as int,
    );
  }
}

