// ignore_for_file: unused_element, unnecessary_cast

/// A histogram bucket with a lower and upper bound, and a count of items with a field value between those bounds. The lower bound is inclusive and the upper bound is exclusive. Lower bound may be -infinity and upper bound may be infinity.
class ReportSummaryHistogramChartDataBucketResponse {
  /// Count of items in the bucket.
  final String count;

  /// Lower bound - inclusive.
  final String lowerBound;

  /// Upper bound - exclusive.
  final String upperBound;

  /// Creates a new [ReportSummaryHistogramChartDataBucketResponse].
  /// [count] Count of items in the bucket.
  /// [lowerBound] Lower bound - inclusive.
  /// [upperBound] Upper bound - exclusive.
  ReportSummaryHistogramChartDataBucketResponse({
    required this.count,
    required this.lowerBound,
    required this.upperBound,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'lowerBound': lowerBound,
      'upperBound': upperBound,
    };
  }

  factory ReportSummaryHistogramChartDataBucketResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ReportSummaryHistogramChartDataBucketResponse(
      count: map['count'] as String,
      lowerBound: map['lowerBound'] as String,
      upperBound: map['upperBound'] as String,
    );
  }
}
