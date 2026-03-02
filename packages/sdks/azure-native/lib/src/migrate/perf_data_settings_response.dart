// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Data model of Performance Data Settings.
class PerfDataSettingsResponse {
  /// Gets percentile utilization for performance data.
  final pulumi.Input<String> percentile;
  /// Gets or sets perf data end time.
  final pulumi.Input<String>? perfDataEndTime;
  /// Gets or sets perf data start time.
  final pulumi.Input<String>? perfDataStartTime;
  /// Gets perf data time range.
  final pulumi.Input<String> timeRange;

  /// Creates a new [PerfDataSettingsResponse].
  /// [percentile] Gets percentile utilization for performance data.
  /// [perfDataEndTime] Gets or sets perf data end time.
  /// [perfDataStartTime] Gets or sets perf data start time.
  /// [timeRange] Gets perf data time range.
  PerfDataSettingsResponse({
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

  factory PerfDataSettingsResponse.fromMap(Map<String, dynamic> map) {
    return PerfDataSettingsResponse(
      percentile: (map['percentile'] as String).input(),
      perfDataEndTime: map['perfDataEndTime'] == null ? null : (map['perfDataEndTime'] as String).input(),
      perfDataStartTime: map['perfDataStartTime'] == null ? null : (map['perfDataStartTime'] as String).input(),
      timeRange: (map['timeRange'] as String).input(),
    );
  }
}

