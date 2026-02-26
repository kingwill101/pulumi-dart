// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'breakdown.dart';
import 'data_set_plot_type.dart';
import 'data_set_target_axis.dart';
import 'dimension.dart';
import 'measure.dart';
import 'time_series_query.dart';

/// Groups a time series query definition with charting options.
class DataSet {
  /// Optional. The collection of breakdowns to be applied to the dataset.
  final List<Breakdown>? breakdowns;

  /// Optional. A collection of dimension columns.
  final List<Dimension>? dimensions;

  /// A template string for naming TimeSeries in the resulting data set. This should be a string with interpolations of the form ${label_name}, which will resolve to the label's value.
  final String? legendTemplate;

  /// Optional. A collection of measures.
  final List<Measure>? measures;

  /// Optional. The lower bound on data point frequency for this data set, implemented by specifying the minimum alignment period to use in a time series query For example, if the data is published once every 10 minutes, the min_alignment_period should be at least 10 minutes. It would not make sense to fetch and align data at one minute intervals.
  final String? minAlignmentPeriod;

  /// How this data should be plotted on the chart.
  final DataSetPlotType? plotType;

  /// Optional. The target axis to use for plotting the metric.
  final DataSetTargetAxis? targetAxis;

  /// Fields for querying time series data from the Stackdriver metrics API.
  final TimeSeriesQuery timeSeriesQuery;

  DataSet({
    this.breakdowns,
    this.dimensions,
    this.legendTemplate,
    this.measures,
    this.minAlignmentPeriod,
    this.plotType,
    this.targetAxis,
    required this.timeSeriesQuery,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final breakdownsValue = breakdowns;
    if (breakdownsValue != null) {
      map['breakdowns'] = Input.encodeList<Breakdown, Map<String, dynamic>>(
          breakdownsValue, (value) => value.toMap());
    }
    final dimensionsValue = dimensions;
    if (dimensionsValue != null) {
      map['dimensions'] = Input.encodeList<Dimension, Map<String, dynamic>>(
          dimensionsValue, (value) => value.toMap());
    }
    final legendTemplateValue = legendTemplate;
    if (legendTemplateValue != null) {
      map['legendTemplate'] = legendTemplateValue;
    }
    final measuresValue = measures;
    if (measuresValue != null) {
      map['measures'] = Input.encodeList<Measure, Map<String, dynamic>>(
          measuresValue, (value) => value.toMap());
    }
    final minAlignmentPeriodValue = minAlignmentPeriod;
    if (minAlignmentPeriodValue != null) {
      map['minAlignmentPeriod'] = minAlignmentPeriodValue;
    }
    final plotTypeValue = plotType;
    if (plotTypeValue != null) {
      map['plotType'] = plotTypeValue.value;
    }
    final targetAxisValue = targetAxis;
    if (targetAxisValue != null) {
      map['targetAxis'] = targetAxisValue.value;
    }
    map['timeSeriesQuery'] = timeSeriesQuery.toMap();
    return map;
  }

  factory DataSet.fromMap(Map<String, dynamic> map) {
    return DataSet(
      breakdowns: map['breakdowns'] == null
          ? null
          : Input.decodeList<Breakdown>(
              map['breakdowns'],
              (value) =>
                  Breakdown.fromMap((value as Map).cast<String, dynamic>())),
      dimensions: map['dimensions'] == null
          ? null
          : Input.decodeList<Dimension>(
              map['dimensions'],
              (value) =>
                  Dimension.fromMap((value as Map).cast<String, dynamic>())),
      legendTemplate: map['legendTemplate'] == null
          ? null
          : map['legendTemplate'] as String,
      measures: map['measures'] == null
          ? null
          : Input.decodeList<Measure>(
              map['measures'],
              (value) =>
                  Measure.fromMap((value as Map).cast<String, dynamic>())),
      minAlignmentPeriod: map['minAlignmentPeriod'] == null
          ? null
          : map['minAlignmentPeriod'] as String,
      plotType: map['plotType'] == null
          ? null
          : DataSetPlotType.fromValue(map['plotType'] as String),
      targetAxis: map['targetAxis'] == null
          ? null
          : DataSetTargetAxis.fromValue(map['targetAxis'] as String),
      timeSeriesQuery: TimeSeriesQuery.fromMap(
          (map['timeSeriesQuery'] as Map).cast<String, dynamic>()),
    );
  }
}
