// ignore_for_file: unused_element, unnecessary_cast


/// Performance data class.
class PerformanceDataResponse {
  /// Percentile of the utilization data values to be considered while assessing
  /// machines.
  final String? percentile;
  /// Gets or sets the end time to consider performance data for assessment.
  final String? perfDataEndTime;
  /// Gets or sets the start time to consider performance data for assessment.
  final String? perfDataStartTime;
  /// Time Range for which the historic utilization data should be considered for
  /// assessment.
  final String? timeRange;

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
      percentile: map['percentile'] == null ? null : map['percentile'] as String,
      perfDataEndTime: map['perfDataEndTime'] == null ? null : map['perfDataEndTime'] as String,
      perfDataStartTime: map['perfDataStartTime'] == null ? null : map['perfDataStartTime'] as String,
      timeRange: map['timeRange'] == null ? null : map['timeRange'] as String,
    );
  }
}

