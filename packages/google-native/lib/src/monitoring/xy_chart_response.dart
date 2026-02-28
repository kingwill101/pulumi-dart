// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'axis_response.dart';
import 'chart_options_response.dart';
import 'data_set_response.dart';
import 'threshold_response.dart';

/// A chart that displays data on a 2D (X and Y axes) plane.
class XyChartResponse {
  /// Display options for the chart.
  final ChartOptionsResponse chartOptions;

  /// The data displayed in this chart.
  final List<DataSetResponse> dataSets;

  /// Threshold lines drawn horizontally across the chart.
  final List<ThresholdResponse> thresholds;

  /// The duration used to display a comparison chart. A comparison chart simultaneously shows values from two similar-length time periods (e.g., week-over-week metrics). The duration must be positive, and it can only be applied to charts with data sets of LINE plot type.
  final String timeshiftDuration;

  /// The properties applied to the x-axis.
  final AxisResponse xAxis;

  /// The properties applied to the y2-axis.
  final AxisResponse y2Axis;

  /// The properties applied to the y-axis.
  final AxisResponse yAxis;

  /// Creates a new [XyChartResponse].
  /// [chartOptions] Display options for the chart.
  /// [dataSets] The data displayed in this chart.
  /// [thresholds] Threshold lines drawn horizontally across the chart.
  /// [timeshiftDuration] The duration used to display a comparison chart. A comparison chart simultaneously shows values from two similar-length time periods (e.g., week-over-week metrics). The duration must be positive, and it can only be applied to charts with data sets of LINE plot type.
  /// [xAxis] The properties applied to the x-axis.
  /// [y2Axis] The properties applied to the y2-axis.
  /// [yAxis] The properties applied to the y-axis.
  XyChartResponse({
    required this.chartOptions,
    required this.dataSets,
    required this.thresholds,
    required this.timeshiftDuration,
    required this.xAxis,
    required this.y2Axis,
    required this.yAxis,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['chartOptions'] = chartOptions.toMap();
    map['dataSets'] =
        pulumi.Input.encodeList<DataSetResponse, Map<String, dynamic>>(
            dataSets, (value) => value.toMap());
    map['thresholds'] =
        pulumi.Input.encodeList<ThresholdResponse, Map<String, dynamic>>(
            thresholds, (value) => value.toMap());
    map['timeshiftDuration'] = timeshiftDuration;
    map['xAxis'] = xAxis.toMap();
    map['y2Axis'] = y2Axis.toMap();
    map['yAxis'] = yAxis.toMap();
    return map;
  }

  factory XyChartResponse.fromMap(Map<String, dynamic> map) {
    return XyChartResponse(
      chartOptions: ChartOptionsResponse.fromMap(
          (map['chartOptions'] as Map).cast<String, dynamic>()),
      dataSets: pulumi.Input.decodeList<DataSetResponse>(
          map['dataSets'],
          (value) =>
              DataSetResponse.fromMap((value as Map).cast<String, dynamic>())),
      thresholds: pulumi.Input.decodeList<ThresholdResponse>(
          map['thresholds'],
          (value) => ThresholdResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      timeshiftDuration: map['timeshiftDuration'] as String,
      xAxis:
          AxisResponse.fromMap((map['xAxis'] as Map).cast<String, dynamic>()),
      y2Axis:
          AxisResponse.fromMap((map['y2Axis'] as Map).cast<String, dynamic>()),
      yAxis:
          AxisResponse.fromMap((map['yAxis'] as Map).cast<String, dynamic>()),
    );
  }
}
