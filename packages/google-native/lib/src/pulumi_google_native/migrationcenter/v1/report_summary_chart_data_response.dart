// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'report_summary_chart_data_data_point_response.dart';

/// Describes a collection of data points rendered as a Chart.
class ReportSummaryChartDataResponse {
  /// Each data point in the chart is represented as a name-value pair with the name being the x-axis label, and the value being the y-axis value.
  final List<ReportSummaryChartDataDataPointResponse> dataPoints;

  ReportSummaryChartDataResponse({
    required this.dataPoints,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataPoints'] = Input.encodeList<
        ReportSummaryChartDataDataPointResponse,
        Map<String, dynamic>>(dataPoints, (value) => value.toMap());
    return map;
  }

  factory ReportSummaryChartDataResponse.fromMap(Map<String, dynamic> map) {
    return ReportSummaryChartDataResponse(
      dataPoints: Input.decodeList<ReportSummaryChartDataDataPointResponse>(
          map['dataPoints'],
          (value) => ReportSummaryChartDataDataPointResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
