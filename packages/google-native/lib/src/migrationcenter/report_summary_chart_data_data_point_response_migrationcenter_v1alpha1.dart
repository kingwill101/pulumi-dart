// ignore_for_file: unused_element, unnecessary_cast


/// Describes a single data point in the Chart.
class ReportSummaryChartDataDataPointResponseMigrationcenterV1alpha1 {
  /// The X-axis label for this data point.
  final String label;
  /// The Y-axis value for this data point.
  final double value;

  /// Creates a new [ReportSummaryChartDataDataPointResponseMigrationcenterV1alpha1].
  /// [label] The X-axis label for this data point.
  /// [value] The Y-axis value for this data point.
  ReportSummaryChartDataDataPointResponseMigrationcenterV1alpha1({
    required this.label,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': label,
      'value': value,
    };
  }

  factory ReportSummaryChartDataDataPointResponseMigrationcenterV1alpha1.fromMap(Map<String, dynamic> map) {
    return ReportSummaryChartDataDataPointResponseMigrationcenterV1alpha1(
      label: map['label'] as String,
      value: map['value'] as double,
    );
  }
}

