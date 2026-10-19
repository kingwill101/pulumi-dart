// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MetricAlarmEvaluationWindowWallClockWindow {
  /// Time zone to align the window to. Accepts an IANA time zone name (for example `America/New_York`), a fixed UTC offset (for example `+05:30`), or an offset-prefixed identifier (for example `UTC+05:30`). The offset must be a multiple of 5 minutes. Defaults to UTC. Only IANA time zone names observe daylight saving time.
  final pulumi.Input<String?>? timezone;

  /// Creates a new [MetricAlarmEvaluationWindowWallClockWindow].
  /// [timezone] Time zone to align the window to. Accepts an IANA time zone name (for example `America/New_York`), a fixed UTC offset (for example `+05:30`), or an offset-prefixed identifier (for example `UTC+05:30`). The offset must be a multiple of 5 minutes. Defaults to UTC. Only IANA time zone names observe daylight saving time.
  const MetricAlarmEvaluationWindowWallClockWindow({
    this.timezone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'timezone': ?timezone,
    };
  }

  factory MetricAlarmEvaluationWindowWallClockWindow.fromMap(Map<String, dynamic> map) {
    return MetricAlarmEvaluationWindowWallClockWindow(
      timezone: (() { final guardedValue = map['timezone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
