// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertSchedule {
  /// Cron expression, the minimum accuracy is minutes, 24 hours. For example, 0 0/1 * * * means that the check is conducted every 1 hour from 00:00. When type is set to Cron, cronExpression must be set.
  final pulumi.Input<String>? cronExpression;
  /// Timed task execution delay (unit: s).
  final pulumi.Input<int>? delay;
  /// Fixed interval for scheduling.
  final pulumi.Input<String>? interval;
  /// Dispatch immediately.
  final pulumi.Input<bool>? runImmdiately;
  /// The time zone where the Cron expression is located. The default value is null, indicating the eighth zone in the east.
  final pulumi.Input<String>? timeZone;
  /// Check the frequency type. Log Service checks the query and analysis results according to the frequency you configured. The values are as follows: Fixedate: checks query and analysis results at regular intervals. Cron: specifies the time interval by using the Cron expression, and checks the query and analysis results at the specified time interval.
  final pulumi.Input<String>? type;

  /// Creates a new [AlertSchedule].
  /// [cronExpression] Cron expression, the minimum accuracy is minutes, 24 hours. For example, 0 0/1 * * * means that the check is conducted every 1 hour from 00:00. When type is set to Cron, cronExpression must be set.
  /// [delay] Timed task execution delay (unit: s).
  /// [interval] Fixed interval for scheduling.
  /// [runImmdiately] Dispatch immediately.
  /// [timeZone] The time zone where the Cron expression is located. The default value is null, indicating the eighth zone in the east.
  /// [type] Check the frequency type. Log Service checks the query and analysis results according to the frequency you configured. The values are as follows: Fixedate: checks query and analysis results at regular intervals. Cron: specifies the time interval by using the Cron expression, and checks the query and analysis results at the specified time interval.
  AlertSchedule({
    this.cronExpression,
    this.delay,
    this.interval,
    this.runImmdiately,
    this.timeZone,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cronExpression': ?cronExpression,
      'delay': ?delay,
      'interval': ?interval,
      'runImmdiately': ?runImmdiately,
      'timeZone': ?timeZone,
      'type': ?type,
    };
  }

  factory AlertSchedule.fromMap(Map<String, dynamic> map) {
    return AlertSchedule(
      cronExpression: map['cronExpression'] == null ? null : (map['cronExpression'] as String).input(),
      delay: map['delay'] == null ? null : (map['delay'] as int).input(),
      interval: map['interval'] == null ? null : (map['interval'] as String).input(),
      runImmdiately: map['runImmdiately'] == null ? null : (map['runImmdiately'] as bool).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

