// ignore_for_file: unused_element, unnecessary_cast


/// The workflow trigger cron for ComputeStartStop schedule type.
class Cron {
  /// [Required] Specifies cron expression of schedule.
  /// The expression should follow NCronTab format.
  final String? expression;
  /// The start time in yyyy-MM-ddTHH:mm:ss format.
  final String? startTime;
  /// Specifies time zone in which the schedule runs.
  /// TimeZone should follow Windows time zone format. Refer: https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/default-time-zones?view=windows-11
  final String? timeZone;

  /// Creates a new [Cron].
  /// [expression] [Required] Specifies cron expression of schedule.
  /// [startTime] The start time in yyyy-MM-ddTHH:mm:ss format.
  /// [timeZone] Specifies time zone in which the schedule runs.
  Cron({
    this.expression,
    this.startTime,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': ?expression,
      'startTime': ?startTime,
      'timeZone': ?timeZone,
    };
  }

  factory Cron.fromMap(Map<String, dynamic> map) {
    return Cron(
      expression: map['expression'] == null ? null : map['expression'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
    );
  }
}

