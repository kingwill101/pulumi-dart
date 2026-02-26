// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'pie_chart_chart_type.dart';
import 'pie_chart_data_set.dart';

/// A widget that displays timeseries data as a pie or a donut.
class PieChart {
  /// Indicates the visualization type for the PieChart.
  final PieChartChartType chartType;

  /// The queries for the chart's data.
  final List<PieChartDataSet> dataSets;

  /// Optional. Indicates whether or not the pie chart should show slices' labels
  final bool? showLabels;

  PieChart({
    required this.chartType,
    required this.dataSets,
    this.showLabels,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['chartType'] = chartType.value;
    map['dataSets'] = Input.encodeList<PieChartDataSet, Map<String, dynamic>>(
        dataSets, (value) => value.toMap());
    final showLabelsValue = showLabels;
    if (showLabelsValue != null) {
      map['showLabels'] = showLabelsValue;
    }
    return map;
  }

  factory PieChart.fromMap(Map<String, dynamic> map) {
    return PieChart(
      chartType: PieChartChartType.fromValue(map['chartType'] as String),
      dataSets: Input.decodeList<PieChartDataSet>(
          map['dataSets'],
          (value) =>
              PieChartDataSet.fromMap((value as Map).cast<String, dynamic>())),
      showLabels: map['showLabels'] == null ? null : map['showLabels'] as bool,
    );
  }
}
