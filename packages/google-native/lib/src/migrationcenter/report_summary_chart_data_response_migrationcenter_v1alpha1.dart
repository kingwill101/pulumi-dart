// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_summary_chart_data_data_point_response_migrationcenter_v1alpha1.dart';

/// Describes a collection of data points rendered as a Chart.
class ReportSummaryChartDataResponseMigrationcenterV1alpha1 {
  /// Each data point in the chart is represented as a name-value pair with the name being the x-axis label, and the value being the y-axis value.
  final List<ReportSummaryChartDataDataPointResponseMigrationcenterV1alpha1>
      dataPoints;

  /// Creates a new [ReportSummaryChartDataResponseMigrationcenterV1alpha1].
  /// [dataPoints] Each data point in the chart is represented as a name-value pair with the name being the x-axis label, and the value being the y-axis value.
  ReportSummaryChartDataResponseMigrationcenterV1alpha1({
    required this.dataPoints,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataPoints'] = pulumi.Input.encodeList<
        ReportSummaryChartDataDataPointResponseMigrationcenterV1alpha1,
        Map<String, dynamic>>(dataPoints, (value) => value.toMap());
    return map;
  }

  factory ReportSummaryChartDataResponseMigrationcenterV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return ReportSummaryChartDataResponseMigrationcenterV1alpha1(
      dataPoints: pulumi.Input.decodeList<
              ReportSummaryChartDataDataPointResponseMigrationcenterV1alpha1>(
          map['dataPoints'],
          (value) =>
              ReportSummaryChartDataDataPointResponseMigrationcenterV1alpha1
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
