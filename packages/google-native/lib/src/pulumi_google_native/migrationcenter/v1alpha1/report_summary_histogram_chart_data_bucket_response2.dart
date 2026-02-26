// ignore_for_file: unused_element, unnecessary_cast

/// A histogram bucket with a lower and upper bound, and a count of items with a field value between those bounds. The lower bound is inclusive and the upper bound is exclusive. Lower bound may be -infinity and upper bound may be infinity.
class ReportSummaryHistogramChartDataBucketResponse2 {
  /// Count of items in the bucket.
  final String count;

  /// Lower bound - inclusive.
  final String lowerBound;

  /// Upper bound - exclusive.
  final String upperBound;

  ReportSummaryHistogramChartDataBucketResponse2({
    required this.count,
    required this.lowerBound,
    required this.upperBound,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['count'] = count;
    map['lowerBound'] = lowerBound;
    map['upperBound'] = upperBound;
    return map;
  }

  factory ReportSummaryHistogramChartDataBucketResponse2.fromMap(
      Map<String, dynamic> map) {
    return ReportSummaryHistogramChartDataBucketResponse2(
      count: map['count'] as String,
      lowerBound: map['lowerBound'] as String,
      upperBound: map['upperBound'] as String,
    );
  }
}
