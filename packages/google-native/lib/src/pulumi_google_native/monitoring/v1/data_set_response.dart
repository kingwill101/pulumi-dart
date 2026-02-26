// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'breakdown_response.dart';
import 'dimension_response.dart';
import 'measure_response.dart';
import 'time_series_query_response.dart';

/// Groups a time series query definition with charting options.
class DataSetResponse {
  /// Optional. The collection of breakdowns to be applied to the dataset.
  final List<BreakdownResponse> breakdowns;

  /// Optional. A collection of dimension columns.
  final List<DimensionResponse> dimensions;

  /// A template string for naming TimeSeries in the resulting data set. This should be a string with interpolations of the form ${label_name}, which will resolve to the label's value.
  final String legendTemplate;

  /// Optional. A collection of measures.
  final List<MeasureResponse> measures;

  /// Optional. The lower bound on data point frequency for this data set, implemented by specifying the minimum alignment period to use in a time series query For example, if the data is published once every 10 minutes, the min_alignment_period should be at least 10 minutes. It would not make sense to fetch and align data at one minute intervals.
  final String minAlignmentPeriod;

  /// How this data should be plotted on the chart.
  final String plotType;

  /// Optional. The target axis to use for plotting the metric.
  final String targetAxis;

  /// Fields for querying time series data from the Stackdriver metrics API.
  final TimeSeriesQueryResponse timeSeriesQuery;

  DataSetResponse({
    required this.breakdowns,
    required this.dimensions,
    required this.legendTemplate,
    required this.measures,
    required this.minAlignmentPeriod,
    required this.plotType,
    required this.targetAxis,
    required this.timeSeriesQuery,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['breakdowns'] =
        Input.encodeList<BreakdownResponse, Map<String, dynamic>>(
            breakdowns, (value) => value.toMap());
    map['dimensions'] =
        Input.encodeList<DimensionResponse, Map<String, dynamic>>(
            dimensions, (value) => value.toMap());
    map['legendTemplate'] = legendTemplate;
    map['measures'] = Input.encodeList<MeasureResponse, Map<String, dynamic>>(
        measures, (value) => value.toMap());
    map['minAlignmentPeriod'] = minAlignmentPeriod;
    map['plotType'] = plotType;
    map['targetAxis'] = targetAxis;
    map['timeSeriesQuery'] = timeSeriesQuery.toMap();
    return map;
  }

  factory DataSetResponse.fromMap(Map<String, dynamic> map) {
    return DataSetResponse(
      breakdowns: Input.decodeList<BreakdownResponse>(
          map['breakdowns'],
          (value) => BreakdownResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      dimensions: Input.decodeList<DimensionResponse>(
          map['dimensions'],
          (value) => DimensionResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      legendTemplate: map['legendTemplate'] as String,
      measures: Input.decodeList<MeasureResponse>(
          map['measures'],
          (value) =>
              MeasureResponse.fromMap((value as Map).cast<String, dynamic>())),
      minAlignmentPeriod: map['minAlignmentPeriod'] as String,
      plotType: map['plotType'] as String,
      targetAxis: map['targetAxis'] as String,
      timeSeriesQuery: TimeSeriesQueryResponse.fromMap(
          (map['timeSeriesQuery'] as Map).cast<String, dynamic>()),
    );
  }
}
