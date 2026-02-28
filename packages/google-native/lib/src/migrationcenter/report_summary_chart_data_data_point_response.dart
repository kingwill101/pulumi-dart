// ignore_for_file: unused_element, unnecessary_cast


/// Describes a single data point in the Chart.
class ReportSummaryChartDataDataPointResponse {
  /// The X-axis label for this data point.
  final String label;
  /// The Y-axis value for this data point.
  final double value;

  /// Creates a new [ReportSummaryChartDataDataPointResponse].
  /// [label] The X-axis label for this data point.
  /// [value] The Y-axis value for this data point.
  ReportSummaryChartDataDataPointResponse({
    required this.label,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': label,
      'value': value,
    };
  }

  factory ReportSummaryChartDataDataPointResponse.fromMap(Map<String, dynamic> map) {
    return ReportSummaryChartDataDataPointResponse(
      label: map['label'] as String,
      value: map['value'] as double,
    );
  }
}

