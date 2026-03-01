// ignore_for_file: unused_element, unnecessary_cast


/// Data model of Performance Data Settings.
class PerfDataSettings {
  /// Gets percentile utilization for performance data.
  final String percentile;
  /// Gets or sets perf data end time.
  final String? perfDataEndTime;
  /// Gets or sets perf data start time.
  final String? perfDataStartTime;
  /// Gets perf data time range.
  final String timeRange;

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
      percentile: map['percentile'] as String,
      perfDataEndTime: map['perfDataEndTime'] == null ? null : map['perfDataEndTime'] as String,
      perfDataStartTime: map['perfDataStartTime'] == null ? null : map['perfDataStartTime'] as String,
      timeRange: map['timeRange'] as String,
    );
  }
}

