// ignore_for_file: unused_element, unnecessary_cast

/// Utilization Chart is a specific type of visualization which displays a metric classified into "Used" and "Free" buckets.
class ReportSummaryUtilizationChartDataResponse2 {
  /// Aggregate value which falls into the "Free" bucket.
  final String free;

  /// Aggregate value which falls into the "Used" bucket.
  final String used;

  ReportSummaryUtilizationChartDataResponse2({
    required this.free,
    required this.used,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['free'] = free;
    map['used'] = used;
    return map;
  }

  factory ReportSummaryUtilizationChartDataResponse2.fromMap(
      Map<String, dynamic> map) {
    return ReportSummaryUtilizationChartDataResponse2(
      free: map['free'] as String,
      used: map['used'] as String,
    );
  }
}
