// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Performance data class.
class PerformanceDataResponse {
  /// Percentile of the utilization data values to be considered while assessing
  /// machines.
  final pulumi.Input<String>? percentile;
  /// Gets or sets the end time to consider performance data for assessment.
  final pulumi.Input<String>? perfDataEndTime;
  /// Gets or sets the start time to consider performance data for assessment.
  final pulumi.Input<String>? perfDataStartTime;
  /// Time Range for which the historic utilization data should be considered for
  /// assessment.
  final pulumi.Input<String>? timeRange;

  /// Creates a new [PerformanceDataResponse].
  /// [percentile] Percentile of the utilization data values to be considered while assessing
  /// [perfDataEndTime] Gets or sets the end time to consider performance data for assessment.
  /// [perfDataStartTime] Gets or sets the start time to consider performance data for assessment.
  /// [timeRange] Time Range for which the historic utilization data should be considered for
  PerformanceDataResponse({
    this.percentile,
    this.perfDataEndTime,
    this.perfDataStartTime,
    this.timeRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percentile': ?percentile,
      'perfDataEndTime': ?perfDataEndTime,
      'perfDataStartTime': ?perfDataStartTime,
      'timeRange': ?timeRange,
    };
  }

  factory PerformanceDataResponse.fromMap(Map<String, dynamic> map) {
    return PerformanceDataResponse(
      percentile: map['percentile'] == null ? null : (map['percentile'] as String).input(),
      perfDataEndTime: map['perfDataEndTime'] == null ? null : (map['perfDataEndTime'] as String).input(),
      perfDataStartTime: map['perfDataStartTime'] == null ? null : (map['perfDataStartTime'] as String).input(),
      timeRange: map['timeRange'] == null ? null : (map['timeRange'] as String).input(),
    );
  }
}

