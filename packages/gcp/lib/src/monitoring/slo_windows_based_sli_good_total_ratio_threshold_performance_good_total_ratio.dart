// ignore_for_file: unused_element, unnecessary_cast


class SloWindowsBasedSliGoodTotalRatioThresholdPerformanceGoodTotalRatio {
  /// A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
  /// quantifying bad service provided, either demanded service that
  /// was not provided or demanded service that was of inadequate
  /// quality. Exactly two of
  /// good, bad, or total service filter must be defined (where
  /// good + bad = total is assumed)
  /// Must have ValueType = DOUBLE or ValueType = INT64 and
  /// must have MetricKind = DELTA or MetricKind = CUMULATIVE.
  final String? badServiceFilter;
  /// A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
  /// quantifying good service provided. Exactly two of
  /// good, bad, or total service filter must be defined (where
  /// good + bad = total is assumed)
  /// Must have ValueType = DOUBLE or ValueType = INT64 and
  /// must have MetricKind = DELTA or MetricKind = CUMULATIVE.
  final String? goodServiceFilter;
  /// A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
  /// quantifying total demanded service. Exactly two of
  /// good, bad, or total service filter must be defined (where
  /// good + bad = total is assumed)
  /// Must have ValueType = DOUBLE or ValueType = INT64 and
  /// must have MetricKind = DELTA or MetricKind = CUMULATIVE.
  final String? totalServiceFilter;

  /// Creates a new [SloWindowsBasedSliGoodTotalRatioThresholdPerformanceGoodTotalRatio].
  /// [badServiceFilter] A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
  /// [goodServiceFilter] A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
  /// [totalServiceFilter] A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
  SloWindowsBasedSliGoodTotalRatioThresholdPerformanceGoodTotalRatio({
    this.badServiceFilter,
    this.goodServiceFilter,
    this.totalServiceFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'badServiceFilter': ?badServiceFilter,
      'goodServiceFilter': ?goodServiceFilter,
      'totalServiceFilter': ?totalServiceFilter,
    };
  }

  factory SloWindowsBasedSliGoodTotalRatioThresholdPerformanceGoodTotalRatio.fromMap(Map<String, dynamic> map) {
    return SloWindowsBasedSliGoodTotalRatioThresholdPerformanceGoodTotalRatio(
      badServiceFilter: map['badServiceFilter'] == null ? null : map['badServiceFilter'] as String,
      goodServiceFilter: map['goodServiceFilter'] == null ? null : map['goodServiceFilter'] as String,
      totalServiceFilter: map['totalServiceFilter'] == null ? null : map['totalServiceFilter'] as String,
    );
  }
}

