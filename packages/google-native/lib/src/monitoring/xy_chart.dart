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

  /// Creates a new [XyChart].
  /// [chartOptions] Display options for the chart.
  /// [dataSets] The data displayed in this chart.
  /// [thresholds] Threshold lines drawn horizontally across the chart.
  /// [timeshiftDuration] The duration used to display a comparison chart. A comparison chart simultaneously shows values from two similar-length time periods (e.g., week-over-week metrics). The duration must be positive, and it can only be applied to charts with data sets of LINE plot type.
  /// [xAxis] The properties applied to the x-axis.
  /// [y2Axis] The properties applied to the y2-axis.
  /// [yAxis] The properties applied to the y-axis.
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
    return <String, dynamic>{
      'chartOptions': ?chartOptions == null ? null : chartOptions!.toMap(),
      'dataSets': pulumi.Input.encodeList<DataSet, Map<String, dynamic>>(
        dataSets,
        (value) => value.toMap(),
      ),
      'thresholds': ?thresholds == null
          ? null
          : pulumi.Input.encodeList<Threshold, Map<String, dynamic>>(
              thresholds!,
              (value) => value.toMap(),
            ),
      'timeshiftDuration': ?timeshiftDuration,
      'xAxis': ?xAxis == null ? null : xAxis!.toMap(),
      'y2Axis': ?y2Axis == null ? null : y2Axis!.toMap(),
      'yAxis': ?yAxis == null ? null : yAxis!.toMap(),
    };
  }

  factory XyChart.fromMap(Map<String, dynamic> map) {
    return XyChart(
      chartOptions: map['chartOptions'] == null
          ? null
          : ChartOptions.fromMap(
              (map['chartOptions'] as Map).cast<String, dynamic>(),
            ),
      dataSets: pulumi.Input.decodeList<DataSet>(
        map['dataSets'],
        (value) => DataSet.fromMap((value as Map).cast<String, dynamic>()),
      ),
      thresholds: map['thresholds'] == null
          ? null
          : pulumi.Input.decodeList<Threshold>(
              map['thresholds'],
              (value) =>
                  Threshold.fromMap((value as Map).cast<String, dynamic>()),
            ),
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
