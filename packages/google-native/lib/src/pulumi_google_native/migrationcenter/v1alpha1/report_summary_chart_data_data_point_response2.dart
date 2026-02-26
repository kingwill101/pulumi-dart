// ignore_for_file: unused_element, unnecessary_cast

/// Describes a single data point in the Chart.
class ReportSummaryChartDataDataPointResponse2 {
  /// The X-axis label for this data point.
  final String label;

  /// The Y-axis value for this data point.
  final double value;

  ReportSummaryChartDataDataPointResponse2({
    required this.label,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['label'] = label;
    map['value'] = value;
    return map;
  }

  factory ReportSummaryChartDataDataPointResponse2.fromMap(
      Map<String, dynamic> map) {
    return ReportSummaryChartDataDataPointResponse2(
      label: map['label'] as String,
      value: map['value'] as double,
    );
  }
}
