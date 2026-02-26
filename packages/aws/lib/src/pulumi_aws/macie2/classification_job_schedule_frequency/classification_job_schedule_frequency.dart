// ignore_for_file: unused_element, unnecessary_cast

class ClassificationJobScheduleFrequency {
  /// Specifies a daily recurrence pattern for running the job.
  final bool? dailySchedule;

  /// Specifies a monthly recurrence pattern for running the job.
  final int? monthlySchedule;

  /// Specifies a weekly recurrence pattern for running the job.
  final String? weeklySchedule;

  ClassificationJobScheduleFrequency({
    this.dailySchedule,
    this.monthlySchedule,
    this.weeklySchedule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dailyScheduleValue = dailySchedule;
    if (dailyScheduleValue != null) {
      map['dailySchedule'] = dailyScheduleValue;
    }
    final monthlyScheduleValue = monthlySchedule;
    if (monthlyScheduleValue != null) {
      map['monthlySchedule'] = monthlyScheduleValue;
    }
    final weeklyScheduleValue = weeklySchedule;
    if (weeklyScheduleValue != null) {
      map['weeklySchedule'] = weeklyScheduleValue;
    }
    return map;
  }

  factory ClassificationJobScheduleFrequency.fromMap(Map<String, dynamic> map) {
    return ClassificationJobScheduleFrequency(
      dailySchedule:
          map['dailySchedule'] == null ? null : map['dailySchedule'] as bool,
      monthlySchedule:
          map['monthlySchedule'] == null ? null : map['monthlySchedule'] as int,
      weeklySchedule: map['weeklySchedule'] == null
          ? null
          : map['weeklySchedule'] as String,
    );
  }
}
