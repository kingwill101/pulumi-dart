// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduledSqlSchedule {
  /// Cron expression with a minimum precision of minutes in 24-hour format. For example, 0 0/1 * * * means checking once every hour starting from 00:00. When type is set to Cron, cronExpression must be specified.
  final pulumi.Input<String>? cronExpression;
  /// Delay duration.
  final pulumi.Input<int>? delay;
  /// Time interval, such as 5m or 1h.
  final pulumi.Input<String>? interval;
  /// Specifies whether to run the OSS import job immediately after it is created.
  final pulumi.Input<bool>? runImmediately;
  /// Time zone.
  final pulumi.Input<String>? timeZone;
  /// The check frequency type. Log Service checks query and analysis results based on the frequency you configure. Valid values:
  /// FixedRate: Checks query and analysis results at fixed intervals.
  /// Cron: Uses a cron expression to specify the interval and checks query and analysis results accordingly.
  /// Weekly: Checks query and analysis results once at a fixed time on a specific day of the week.
  /// Daily: Checks query and analysis results once at a fixed time each day.
  /// Hourly: Checks query and analysis results once every hour.
  final pulumi.Input<String>? type;

  /// Creates a new [ScheduledSqlSchedule].
  /// [cronExpression] Cron expression with a minimum precision of minutes in 24-hour format. For example, 0 0/1 * * * means checking once every hour starting from 00:00. When type is set to Cron, cronExpression must be specified.
  /// [delay] Delay duration.
  /// [interval] Time interval, such as 5m or 1h.
  /// [runImmediately] Specifies whether to run the OSS import job immediately after it is created.
  /// [timeZone] Time zone.
  /// [type] The check frequency type. Log Service checks query and analysis results based on the frequency you configure. Valid values:
  ScheduledSqlSchedule({
    this.cronExpression,
    this.delay,
    this.interval,
    this.runImmediately,
    this.timeZone,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cronExpression': ?cronExpression,
      'delay': ?delay,
      'interval': ?interval,
      'runImmediately': ?runImmediately,
      'timeZone': ?timeZone,
      'type': ?type,
    };
  }

  factory ScheduledSqlSchedule.fromMap(Map<String, dynamic> map) {
    return ScheduledSqlSchedule(
      cronExpression: map['cronExpression'] == null ? null : (map['cronExpression'] as String).input(),
      delay: map['delay'] == null ? null : (map['delay'] as int).input(),
      interval: map['interval'] == null ? null : (map['interval'] as String).input(),
      runImmediately: map['runImmediately'] == null ? null : (map['runImmediately'] as bool).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

