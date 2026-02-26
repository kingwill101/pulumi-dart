// ignore_for_file: unused_element, unnecessary_cast

/// A TimeSeriesRatio specifies two TimeSeries to use for computing the good_service / total_service ratio. The specified TimeSeries must have ValueType = DOUBLE or ValueType = INT64 and must have MetricKind = DELTA or MetricKind = CUMULATIVE. The TimeSeriesRatio must specify exactly two of good, bad, and total, and the relationship good_service + bad_service = total_service will be assumed.
class TimeSeriesRatioResponse {
  /// A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) specifying a TimeSeries quantifying bad service, either demanded service that was not provided or demanded service that was of inadequate quality. Must have ValueType = DOUBLE or ValueType = INT64 and must have MetricKind = DELTA or MetricKind = CUMULATIVE.
  final String badServiceFilter;

  /// A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) specifying a TimeSeries quantifying good service provided. Must have ValueType = DOUBLE or ValueType = INT64 and must have MetricKind = DELTA or MetricKind = CUMULATIVE.
  final String goodServiceFilter;

  /// A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) specifying a TimeSeries quantifying total demanded service. Must have ValueType = DOUBLE or ValueType = INT64 and must have MetricKind = DELTA or MetricKind = CUMULATIVE.
  final String totalServiceFilter;

  TimeSeriesRatioResponse({
    required this.badServiceFilter,
    required this.goodServiceFilter,
    required this.totalServiceFilter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['badServiceFilter'] = badServiceFilter;
    map['goodServiceFilter'] = goodServiceFilter;
    map['totalServiceFilter'] = totalServiceFilter;
    return map;
  }

  factory TimeSeriesRatioResponse.fromMap(Map<String, dynamic> map) {
    return TimeSeriesRatioResponse(
      badServiceFilter: map['badServiceFilter'] as String,
      goodServiceFilter: map['goodServiceFilter'] as String,
      totalServiceFilter: map['totalServiceFilter'] as String,
    );
  }
}
