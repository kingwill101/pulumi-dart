// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'axis.dart';
import 'chart_options.dart';
import 'data_set.dart';
import 'threshold.dart';

/// A chart that displays data on a 2D (X and Y axes) plane.
class XyChart {
  /// Display options for the chart.
  final ChartOptions? chartOptions;

  /// The data displayed in this chart.
  final List<DataSet> dataSets;

  /// Threshold lines drawn horizontally across the chart.
  final List<Threshold>? thresholds;

  /// The duration used to display a comparison chart. A comparison chart simultaneously shows values from two similar-length time periods (e.g., week-over-week metrics). The duration must be positive, and it can only be applied to charts with data sets of LINE plot type.
  final String? timeshiftDuration;

  /// The properties applied to the x-axis.
  final Axis? xAxis;

  /// The properties applied to the y2-axis.
  final Axis? y2Axis;

  /// The properties applied to the y-axis.
  final Axis? yAxis;

  XyChart({
    this.chartOptions,
    required this.dataSets,
    this.thresholds,
    this.timeshiftDuration,
    this.xAxis,
    this.y2Axis,
    this.yAxis,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final chartOptionsValue = chartOptions;
    if (chartOptionsValue != null) {
      map['chartOptions'] = chartOptionsValue.toMap();
    }
    map['dataSets'] = pulumi.Input.encodeList<DataSet, Map<String, dynamic>>(
        dataSets, (value) => value.toMap());
    final thresholdsValue = thresholds;
    if (thresholdsValue != null) {
      map['thresholds'] =
          pulumi.Input.encodeList<Threshold, Map<String, dynamic>>(
              thresholdsValue, (value) => value.toMap());
    }
    final timeshiftDurationValue = timeshiftDuration;
    if (timeshiftDurationValue != null) {
      map['timeshiftDuration'] = timeshiftDurationValue;
    }
    final xAxisValue = xAxis;
    if (xAxisValue != null) {
      map['xAxis'] = xAxisValue.toMap();
    }
    final y2AxisValue = y2Axis;
    if (y2AxisValue != null) {
      map['y2Axis'] = y2AxisValue.toMap();
    }
    final yAxisValue = yAxis;
    if (yAxisValue != null) {
      map['yAxis'] = yAxisValue.toMap();
    }
    return map;
  }

  factory XyChart.fromMap(Map<String, dynamic> map) {
    return XyChart(
      chartOptions: map['chartOptions'] == null
          ? null
          : ChartOptions.fromMap(
              (map['chartOptions'] as Map).cast<String, dynamic>()),
      dataSets: pulumi.Input.decodeList<DataSet>(map['dataSets'],
          (value) => DataSet.fromMap((value as Map).cast<String, dynamic>())),
      thresholds: map['thresholds'] == null
          ? null
          : pulumi.Input.decodeList<Threshold>(
              map['thresholds'],
              (value) =>
                  Threshold.fromMap((value as Map).cast<String, dynamic>())),
      timeshiftDuration: map['timeshiftDuration'] == null
          ? null
          : map['timeshiftDuration'] as String,
      xAxis: map['xAxis'] == null
          ? null
          : Axis.fromMap((map['xAxis'] as Map).cast<String, dynamic>()),
      y2Axis: map['y2Axis'] == null
          ? null
          : Axis.fromMap((map['y2Axis'] as Map).cast<String, dynamic>()),
      yAxis: map['yAxis'] == null
          ? null
          : Axis.fromMap((map['yAxis'] as Map).cast<String, dynamic>()),
    );
  }
}
