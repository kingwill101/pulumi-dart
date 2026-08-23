// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlarmMuteRuleRuleSchedule {
  /// Duration of the mute period in [ISO 8601 duration format](https://en.wikipedia.org/wiki/ISO_8601#Durations) (e.g., `PT4H` for 4 hours).
  final pulumi.Input<String> duration;
  /// Schedule expression. Supports `cron()` and `at()` formats. For example, `cron(0 2 * * *)` for daily at 2:00 AM or `at(2026-01-01T00:00)` for a one-time mute. See [Defining alarm mute rules](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/alarm-mute-rules.html#defining-alarm-mute-rules) for details.
  final pulumi.Input<String> expression;
  /// Timezone for the schedule expression (e.g., `Asia/Tokyo`). Defaults to UTC.
  final pulumi.Input<String>? timezone;

  /// Creates a new [AlarmMuteRuleRuleSchedule].
  /// [duration] Duration of the mute period in [ISO 8601 duration format](https://en.wikipedia.org/wiki/ISO_8601#Durations) (e.g., `PT4H` for 4 hours).
  /// [expression] Schedule expression. Supports `cron()` and `at()` formats. For example, `cron(0 2 * * *)` for daily at 2:00 AM or `at(2026-01-01T00:00)` for a one-time mute. See [Defining alarm mute rules](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/alarm-mute-rules.html#defining-alarm-mute-rules) for details.
  /// [timezone] Timezone for the schedule expression (e.g., `Asia/Tokyo`). Defaults to UTC.
  const AlarmMuteRuleRuleSchedule({
    required this.duration,
    required this.expression,
    this.timezone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': duration,
      'expression': expression,
      'timezone': ?timezone,
    };
  }

  factory AlarmMuteRuleRuleSchedule.fromMap(Map<String, dynamic> map) {
    return AlarmMuteRuleRuleSchedule(
      duration: pulumi.Input.fromValue(map['duration'] as String),
      expression: pulumi.Input.fromValue(map['expression'] as String),
      timezone: (() { final guardedValue = map['timezone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
