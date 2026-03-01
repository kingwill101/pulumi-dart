// ignore_for_file: unused_element, unnecessary_cast

class ClassificationJobScheduleFrequency {
  /// Specifies a daily recurrence pattern for running the job.
  final bool? dailySchedule;

  /// Specifies a monthly recurrence pattern for running the job.
  final int? monthlySchedule;

  /// Specifies a weekly recurrence pattern for running the job.
  final String? weeklySchedule;

  /// Creates a new [ClassificationJobScheduleFrequency].
  /// [dailySchedule] Specifies a daily recurrence pattern for running the job.
  /// [monthlySchedule] Specifies a monthly recurrence pattern for running the job.
  /// [weeklySchedule] Specifies a weekly recurrence pattern for running the job.
  ClassificationJobScheduleFrequency({
    this.dailySchedule,
    this.monthlySchedule,
    this.weeklySchedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailySchedule': ?dailySchedule,
      'monthlySchedule': ?monthlySchedule,
      'weeklySchedule': ?weeklySchedule,
    };
  }

  factory ClassificationJobScheduleFrequency.fromMap(Map<String, dynamic> map) {
    return ClassificationJobScheduleFrequency(
      dailySchedule: map['dailySchedule'] == null
          ? null
          : map['dailySchedule'] as bool,
      monthlySchedule: map['monthlySchedule'] == null
          ? null
          : map['monthlySchedule'] as int,
      weeklySchedule: map['weeklySchedule'] == null
          ? null
          : map['weeklySchedule'] as String,
    );
  }
}
