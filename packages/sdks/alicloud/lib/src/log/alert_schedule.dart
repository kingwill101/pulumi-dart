// ignore_for_file: unused_element, unnecessary_cast


class AlertSchedule {
  /// Cron expression when type is Cron.
  final String? cronExpression;
  /// Day of week when type is Weekly, including 0,1,2,3,4,5,6, 0 for Sunday, 1 for Monday
  final int? dayOfWeek;
  final int? delay;
  /// Hour of day when type is Weekly/Daily.
  final int? hour;
  /// Execution interval. 60 seconds minimum, such as 60s, 1h. used when type is FixedRate.
  final String? interval;
  final bool? runImmediately;
  /// Time zone for schedule.
  final String? timeZone;
  /// including FixedRate,Hourly,Daily,Weekly,Cron.
  final String type;

  /// Creates a new [AlertSchedule].
  /// [cronExpression] Cron expression when type is Cron.
  /// [dayOfWeek] Day of week when type is Weekly, including 0,1,2,3,4,5,6, 0 for Sunday, 1 for Monday
  /// [delay] Optional.
  /// [hour] Hour of day when type is Weekly/Daily.
  /// [interval] Execution interval. 60 seconds minimum, such as 60s, 1h. used when type is FixedRate.
  /// [runImmediately] Optional.
  /// [timeZone] Time zone for schedule.
  /// [type] including FixedRate,Hourly,Daily,Weekly,Cron.
  AlertSchedule({
    this.cronExpression,
    this.dayOfWeek,
    this.delay,
    this.hour,
    this.interval,
    this.runImmediately,
    this.timeZone,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cronExpression': ?cronExpression,
      'dayOfWeek': ?dayOfWeek,
      'delay': ?delay,
      'hour': ?hour,
      'interval': ?interval,
      'runImmediately': ?runImmediately,
      'timeZone': ?timeZone,
      'type': type,
    };
  }

  factory AlertSchedule.fromMap(Map<String, dynamic> map) {
    return AlertSchedule(
      cronExpression: map['cronExpression'] == null ? null : map['cronExpression'] as String,
      dayOfWeek: map['dayOfWeek'] == null ? null : map['dayOfWeek'] as int,
      delay: map['delay'] == null ? null : map['delay'] as int,
      hour: map['hour'] == null ? null : map['hour'] as int,
      interval: map['interval'] == null ? null : map['interval'] as String,
      runImmediately: map['runImmediately'] == null ? null : map['runImmediately'] as bool,
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
      type: map['type'] as String,
    );
  }
}

