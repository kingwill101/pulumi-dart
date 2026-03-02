// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertSchedule {
  /// Cron expression when type is Cron.
  final pulumi.Input<String>? cronExpression;
  /// Day of week when type is Weekly, including 0,1,2,3,4,5,6, 0 for Sunday, 1 for Monday
  final pulumi.Input<int>? dayOfWeek;
  final pulumi.Input<int>? delay;
  /// Hour of day when type is Weekly/Daily.
  final pulumi.Input<int>? hour;
  /// Execution interval. 60 seconds minimum, such as 60s, 1h. used when type is FixedRate.
  final pulumi.Input<String>? interval;
  final pulumi.Input<bool>? runImmediately;
  /// Time zone for schedule.
  final pulumi.Input<String>? timeZone;
  /// including FixedRate,Hourly,Daily,Weekly,Cron.
  final pulumi.Input<String> type;

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
      cronExpression: map['cronExpression'] == null ? null : (map['cronExpression']! as String).input(),
      dayOfWeek: map['dayOfWeek'] == null ? null : (map['dayOfWeek']! as int).input(),
      delay: map['delay'] == null ? null : (map['delay']! as int).input(),
      hour: map['hour'] == null ? null : (map['hour']! as int).input(),
      interval: map['interval'] == null ? null : (map['interval']! as String).input(),
      runImmediately: map['runImmediately'] == null ? null : (map['runImmediately']! as bool).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone']! as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

