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
      cronExpression: (() { final guardedValue = map['cronExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dayOfWeek: (() { final guardedValue = map['dayOfWeek']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      delay: (() { final guardedValue = map['delay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      hour: (() { final guardedValue = map['hour']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runImmediately: (() { final guardedValue = map['runImmediately']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

