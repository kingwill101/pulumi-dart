// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Data model of Performance Data Settings.
class PerfDataSettings {
  /// Gets percentile utilization for performance data.
  final pulumi.Input<String> percentile;

  /// Gets or sets perf data end time.
  final pulumi.Input<String>? perfDataEndTime;

  /// Gets or sets perf data start time.
  final pulumi.Input<String>? perfDataStartTime;

  /// Gets perf data time range.
  final pulumi.Input<String> timeRange;

  /// Creates a new [PerfDataSettings].
  /// [percentile] Gets percentile utilization for performance data.
  /// [perfDataEndTime] Gets or sets perf data end time.
  /// [perfDataStartTime] Gets or sets perf data start time.
  /// [timeRange] Gets perf data time range.
  PerfDataSettings({
    required this.percentile,
    this.perfDataEndTime,
    this.perfDataStartTime,
    required this.timeRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percentile': percentile,
      'perfDataEndTime': ?perfDataEndTime,
      'perfDataStartTime': ?perfDataStartTime,
      'timeRange': timeRange,
    };
  }

  factory PerfDataSettings.fromMap(Map<String, dynamic> map) {
    return PerfDataSettings(
      percentile: pulumi.Input.fromValue(map['percentile'] as String),
      perfDataEndTime: (() {
        final guardedValue = map['perfDataEndTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      perfDataStartTime: (() {
        final guardedValue = map['perfDataStartTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeRange: pulumi.Input.fromValue(map['timeRange'] as String),
    );
  }
}
