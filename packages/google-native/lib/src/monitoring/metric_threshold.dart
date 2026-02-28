// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aggregation_monitoring_v3.dart';
import 'forecast_options.dart';
import 'metric_threshold_comparison.dart';
import 'metric_threshold_evaluation_missing_data.dart';
import 'trigger.dart';

/// A condition type that compares a collection of time series against a threshold.
class MetricThreshold {
  /// Specifies the alignment of data points in individual time series as well as how to combine the retrieved time series together (such as when aggregating multiple streams on each resource to a single stream for each resource or when aggregating streams across all members of a group of resources). Multiple aggregations are applied in the order specified.This field is similar to the one in the ListTimeSeries request (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.timeSeries/list). It is advisable to use the ListTimeSeries method when debugging this field.
  final List<AggregationMonitoringV3>? aggregations;

  /// The comparison to apply between the time series (indicated by filter and aggregation) and the threshold (indicated by threshold_value). The comparison is applied on each time series, with the time series on the left-hand side and the threshold on the right-hand side.Only COMPARISON_LT and COMPARISON_GT are supported currently.
  final MetricThresholdComparison? comparison;

  /// Specifies the alignment of data points in individual time series selected by denominatorFilter as well as how to combine the retrieved time series together (such as when aggregating multiple streams on each resource to a single stream for each resource or when aggregating streams across all members of a group of resources).When computing ratios, the aggregations and denominator_aggregations fields must use the same alignment period and produce time series that have the same periodicity and labels.
  final List<AggregationMonitoringV3>? denominatorAggregations;

  /// A filter (https://cloud.google.com/monitoring/api/v3/filters) that identifies a time series that should be used as the denominator of a ratio that will be compared with the threshold. If a denominator_filter is specified, the time series specified by the filter field will be used as the numerator.The filter must specify the metric type and optionally may contain restrictions on resource type, resource labels, and metric labels. This field may not exceed 2048 Unicode characters in length.
  final String? denominatorFilter;

  /// The amount of time that a time series must violate the threshold to be considered failing. Currently, only values that are a multiple of a minute--e.g., 0, 60, 120, or 300 seconds--are supported. If an invalid value is given, an error will be returned. When choosing a duration, it is useful to keep in mind the frequency of the underlying time series data (which may also be affected by any alignments specified in the aggregations field); a good duration is long enough so that a single outlier does not generate spurious alerts, but short enough that unhealthy states are detected and alerted on quickly.
  final String? duration;

  /// A condition control that determines how metric-threshold conditions are evaluated when data stops arriving.
  final MetricThresholdEvaluationMissingData? evaluationMissingData;

  /// A filter (https://cloud.google.com/monitoring/api/v3/filters) that identifies which time series should be compared with the threshold.The filter is similar to the one that is specified in the ListTimeSeries request (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.timeSeries/list) (that call is useful to verify the time series that will be retrieved / processed). The filter must specify the metric type and the resource type. Optionally, it can specify resource labels and metric labels. This field must not exceed 2048 Unicode characters in length.
  final String filter;

  /// When this field is present, the MetricThreshold condition forecasts whether the time series is predicted to violate the threshold within the forecast_horizon. When this field is not set, the MetricThreshold tests the current value of the timeseries against the threshold.
  final ForecastOptions? forecastOptions;

  /// A value against which to compare the time series.
  final double? thresholdValue;

  /// The number/percent of time series for which the comparison must hold in order for the condition to trigger. If unspecified, then the condition will trigger if the comparison is true for any of the time series that have been identified by filter and aggregations, or by the ratio, if denominator_filter and denominator_aggregations are specified.
  final Trigger? trigger;

  /// Creates a new [MetricThreshold].
  /// [aggregations] Specifies the alignment of data points in individual time series as well as how to combine the retrieved time series together (such as when aggregating multiple streams on each resource to a single stream for each resource or when aggregating streams across all members of a group of resources). Multiple aggregations are applied in the order specified.This field is similar to the one in the ListTimeSeries request (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.timeSeries/list). It is advisable to use the ListTimeSeries method when debugging this field.
  /// [comparison] The comparison to apply between the time series (indicated by filter and aggregation) and the threshold (indicated by threshold_value). The comparison is applied on each time series, with the time series on the left-hand side and the threshold on the right-hand side.Only COMPARISON_LT and COMPARISON_GT are supported currently.
  /// [denominatorAggregations] Specifies the alignment of data points in individual time series selected by denominatorFilter as well as how to combine the retrieved time series together (such as when aggregating multiple streams on each resource to a single stream for each resource or when aggregating streams across all members of a group of resources).When computing ratios, the aggregations and denominator_aggregations fields must use the same alignment period and produce time series that have the same periodicity and labels.
  /// [denominatorFilter] A filter (https://cloud.google.com/monitoring/api/v3/filters) that identifies a time series that should be used as the denominator of a ratio that will be compared with the threshold. If a denominator_filter is specified, the time series specified by the filter field will be used as the numerator.The filter must specify the metric type and optionally may contain restrictions on resource type, resource labels, and metric labels. This field may not exceed 2048 Unicode characters in length.
  /// [duration] The amount of time that a time series must violate the threshold to be considered failing. Currently, only values that are a multiple of a minute--e.g., 0, 60, 120, or 300 seconds--are supported. If an invalid value is given, an error will be returned. When choosing a duration, it is useful to keep in mind the frequency of the underlying time series data (which may also be affected by any alignments specified in the aggregations field); a good duration is long enough so that a single outlier does not generate spurious alerts, but short enough that unhealthy states are detected and alerted on quickly.
  /// [evaluationMissingData] A condition control that determines how metric-threshold conditions are evaluated when data stops arriving.
  /// [filter] A filter (https://cloud.google.com/monitoring/api/v3/filters) that identifies which time series should be compared with the threshold.The filter is similar to the one that is specified in the ListTimeSeries request (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.timeSeries/list) (that call is useful to verify the time series that will be retrieved / processed). The filter must specify the metric type and the resource type. Optionally, it can specify resource labels and metric labels. This field must not exceed 2048 Unicode characters in length.
  /// [forecastOptions] When this field is present, the MetricThreshold condition forecasts whether the time series is predicted to violate the threshold within the forecast_horizon. When this field is not set, the MetricThreshold tests the current value of the timeseries against the threshold.
  /// [thresholdValue] A value against which to compare the time series.
  /// [trigger] The number/percent of time series for which the comparison must hold in order for the condition to trigger. If unspecified, then the condition will trigger if the comparison is true for any of the time series that have been identified by filter and aggregations, or by the ratio, if denominator_filter and denominator_aggregations are specified.
  MetricThreshold({
    this.aggregations,
    this.comparison,
    this.denominatorAggregations,
    this.denominatorFilter,
    this.duration,
    this.evaluationMissingData,
    required this.filter,
    this.forecastOptions,
    this.thresholdValue,
    this.trigger,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aggregationsValue = aggregations;
    if (aggregationsValue != null) {
      map['aggregations'] = pulumi.Input.encodeList<AggregationMonitoringV3,
          Map<String, dynamic>>(aggregationsValue, (value) => value.toMap());
    }
    final comparisonValue = comparison;
    if (comparisonValue != null) {
      map['comparison'] = comparisonValue.value;
    }
    final denominatorAggregationsValue = denominatorAggregations;
    if (denominatorAggregationsValue != null) {
      map['denominatorAggregations'] = pulumi.Input.encodeList<
              AggregationMonitoringV3, Map<String, dynamic>>(
          denominatorAggregationsValue, (value) => value.toMap());
    }
    final denominatorFilterValue = denominatorFilter;
    if (denominatorFilterValue != null) {
      map['denominatorFilter'] = denominatorFilterValue;
    }
    final durationValue = duration;
    if (durationValue != null) {
      map['duration'] = durationValue;
    }
    final evaluationMissingDataValue = evaluationMissingData;
    if (evaluationMissingDataValue != null) {
      map['evaluationMissingData'] = evaluationMissingDataValue.value;
    }
    map['filter'] = filter;
    final forecastOptionsValue = forecastOptions;
    if (forecastOptionsValue != null) {
      map['forecastOptions'] = forecastOptionsValue.toMap();
    }
    final thresholdValueValue = thresholdValue;
    if (thresholdValueValue != null) {
      map['thresholdValue'] = thresholdValueValue;
    }
    final triggerValue = trigger;
    if (triggerValue != null) {
      map['trigger'] = triggerValue.toMap();
    }
    return map;
  }

  factory MetricThreshold.fromMap(Map<String, dynamic> map) {
    return MetricThreshold(
      aggregations: map['aggregations'] == null
          ? null
          : pulumi.Input.decodeList<AggregationMonitoringV3>(
              map['aggregations'],
              (value) => AggregationMonitoringV3.fromMap(
                  (value as Map).cast<String, dynamic>())),
      comparison: map['comparison'] == null
          ? null
          : MetricThresholdComparison.fromValue(map['comparison'] as String),
      denominatorAggregations: map['denominatorAggregations'] == null
          ? null
          : pulumi.Input.decodeList<AggregationMonitoringV3>(
              map['denominatorAggregations'],
              (value) => AggregationMonitoringV3.fromMap(
                  (value as Map).cast<String, dynamic>())),
      denominatorFilter: map['denominatorFilter'] == null
          ? null
          : map['denominatorFilter'] as String,
      duration: map['duration'] == null ? null : map['duration'] as String,
      evaluationMissingData: map['evaluationMissingData'] == null
          ? null
          : MetricThresholdEvaluationMissingData.fromValue(
              map['evaluationMissingData'] as String),
      filter: map['filter'] as String,
      forecastOptions: map['forecastOptions'] == null
          ? null
          : ForecastOptions.fromMap(
              (map['forecastOptions'] as Map).cast<String, dynamic>()),
      thresholdValue: map['thresholdValue'] == null
          ? null
          : map['thresholdValue'] as double,
      trigger: map['trigger'] == null
          ? null
          : Trigger.fromMap((map['trigger'] as Map).cast<String, dynamic>()),
    );
  }
}
