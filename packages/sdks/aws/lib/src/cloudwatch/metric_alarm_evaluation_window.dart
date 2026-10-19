// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_alarm_evaluation_window_wall_clock_window.dart';

class MetricAlarmEvaluationWindow {
  /// Aligns the evaluated range to fixed clock boundaries that match the alarm's `period` (for example the top of the hour, midnight, or the start of the calendar week), instead of the default rolling sliding window. Only alarms with a `period` of `60`, `300`, `3600`, `86400`, or `604800` seconds support a wall clock window. See `wallClockWindow` below.
  final pulumi.Input<MetricAlarmEvaluationWindowWallClockWindow> wallClockWindow;

  /// Creates a new [MetricAlarmEvaluationWindow].
  /// [wallClockWindow] Aligns the evaluated range to fixed clock boundaries that match the alarm's `period` (for example the top of the hour, midnight, or the start of the calendar week), instead of the default rolling sliding window. Only alarms with a `period` of `60`, `300`, `3600`, `86400`, or `604800` seconds support a wall clock window. See `wallClockWindow` below.
  const MetricAlarmEvaluationWindow({
    required this.wallClockWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'wallClockWindow': pulumi.Input.mapInputValue<MetricAlarmEvaluationWindowWallClockWindow, Map<String, dynamic>>(wallClockWindow, (value) => value.toMap()),
    };
  }

  factory MetricAlarmEvaluationWindow.fromMap(Map<String, dynamic> map) {
    return MetricAlarmEvaluationWindow(
      wallClockWindow: pulumi.Input.fromValue(MetricAlarmEvaluationWindowWallClockWindow.fromMap((map['wallClockWindow']! as Map).cast<String, dynamic>())),
    );
  }
}
