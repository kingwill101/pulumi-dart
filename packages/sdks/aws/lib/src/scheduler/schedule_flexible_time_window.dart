// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduleFlexibleTimeWindow {
  /// Maximum time window during which a schedule can be invoked. Ranges from `1` to `1440` minutes.
  final pulumi.Input<int>? maximumWindowInMinutes;

  /// Determines whether the schedule is invoked within a flexible time window. One of: `OFF`, `FLEXIBLE`.
  final pulumi.Input<String> mode;

  /// Creates a new [ScheduleFlexibleTimeWindow].
  /// [maximumWindowInMinutes] Maximum time window during which a schedule can be invoked. Ranges from `1` to `1440` minutes.
  /// [mode] Determines whether the schedule is invoked within a flexible time window. One of: `OFF`, `FLEXIBLE`.
  ScheduleFlexibleTimeWindow({this.maximumWindowInMinutes, required this.mode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maximumWindowInMinutes': ?maximumWindowInMinutes,
      'mode': mode,
    };
  }

  factory ScheduleFlexibleTimeWindow.fromMap(Map<String, dynamic> map) {
    return ScheduleFlexibleTimeWindow(
      maximumWindowInMinutes: (() {
        final guardedValue = map['maximumWindowInMinutes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
