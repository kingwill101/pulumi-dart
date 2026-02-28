// ignore_for_file: unused_element, unnecessary_cast


/// Utilization Chart is a specific type of visualization which displays a metric classified into "Used" and "Free" buckets.
class ReportSummaryUtilizationChartDataResponseMigrationcenterV1alpha1 {
  /// Aggregate value which falls into the "Free" bucket.
  final String free;
  /// Aggregate value which falls into the "Used" bucket.
  final String used;

  /// Creates a new [ReportSummaryUtilizationChartDataResponseMigrationcenterV1alpha1].
  /// [free] Aggregate value which falls into the "Free" bucket.
  /// [used] Aggregate value which falls into the "Used" bucket.
  ReportSummaryUtilizationChartDataResponseMigrationcenterV1alpha1({
    required this.free,
    required this.used,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'free': free,
      'used': used,
    };
  }

  factory ReportSummaryUtilizationChartDataResponseMigrationcenterV1alpha1.fromMap(Map<String, dynamic> map) {
    return ReportSummaryUtilizationChartDataResponseMigrationcenterV1alpha1(
      free: map['free'] as String,
      used: map['used'] as String,
    );
  }
}

