// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'aggregation_response2.dart';
import 'forecast_options_response.dart';
import 'trigger_response.dart';

/// A condition type that compares a collection of time series against a threshold.
class MetricThresholdResponse {
  /// Specifies the alignment of data points in individual time series as well as how to combine the retrieved time series together (such as when aggregating multiple streams on each resource to a single stream for each resource or when aggregating streams across all members of a group of resources). Multiple aggregations are applied in the order specified.This field is similar to the one in the ListTimeSeries request (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.timeSeries/list). It is advisable to use the ListTimeSeries method when debugging this field.
  final List<AggregationResponse2> aggregations;

  /// The comparison to apply between the time series (indicated by filter and aggregation) and the threshold (indicated by threshold_value). The comparison is applied on each time series, with the time series on the left-hand side and the threshold on the right-hand side.Only COMPARISON_LT and COMPARISON_GT are supported currently.
  final String comparison;

  /// Specifies the alignment of data points in individual time series selected by denominatorFilter as well as how to combine the retrieved time series together (such as when aggregating multiple streams on each resource to a single stream for each resource or when aggregating streams across all members of a group of resources).When computing ratios, the aggregations and denominator_aggregations fields must use the same alignment period and produce time series that have the same periodicity and labels.
  final List<AggregationResponse2> denominatorAggregations;

  /// A filter (https://cloud.google.com/monitoring/api/v3/filters) that identifies a time series that should be used as the denominator of a ratio that will be compared with the threshold. If a denominator_filter is specified, the time series specified by the filter field will be used as the numerator.The filter must specify the metric type and optionally may contain restrictions on resource type, resource labels, and metric labels. This field may not exceed 2048 Unicode characters in length.
  final String denominatorFilter;

  /// The amount of time that a time series must violate the threshold to be considered failing. Currently, only values that are a multiple of a minute--e.g., 0, 60, 120, or 300 seconds--are supported. If an invalid value is given, an error will be returned. When choosing a duration, it is useful to keep in mind the frequency of the underlying time series data (which may also be affected by any alignments specified in the aggregations field); a good duration is long enough so that a single outlier does not generate spurious alerts, but short enough that unhealthy states are detected and alerted on quickly.
  final String duration;

  /// A condition control that determines how metric-threshold conditions are evaluated when data stops arriving.
  final String evaluationMissingData;

  /// A filter (https://cloud.google.com/monitoring/api/v3/filters) that identifies which time series should be compared with the threshold.The filter is similar to the one that is specified in the ListTimeSeries request (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.timeSeries/list) (that call is useful to verify the time series that will be retrieved / processed). The filter must specify the metric type and the resource type. Optionally, it can specify resource labels and metric labels. This field must not exceed 2048 Unicode characters in length.
  final String filter;

  /// When this field is present, the MetricThreshold condition forecasts whether the time series is predicted to violate the threshold within the forecast_horizon. When this field is not set, the MetricThreshold tests the current value of the timeseries against the threshold.
  final ForecastOptionsResponse forecastOptions;

  /// A value against which to compare the time series.
  final double thresholdValue;

  /// The number/percent of time series for which the comparison must hold in order for the condition to trigger. If unspecified, then the condition will trigger if the comparison is true for any of the time series that have been identified by filter and aggregations, or by the ratio, if denominator_filter and denominator_aggregations are specified.
  final TriggerResponse trigger;

  MetricThresholdResponse({
    required this.aggregations,
    required this.comparison,
    required this.denominatorAggregations,
    required this.denominatorFilter,
    required this.duration,
    required this.evaluationMissingData,
    required this.filter,
    required this.forecastOptions,
    required this.thresholdValue,
    required this.trigger,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['aggregations'] =
        Input.encodeList<AggregationResponse2, Map<String, dynamic>>(
            aggregations, (value) => value.toMap());
    map['comparison'] = comparison;
    map['denominatorAggregations'] =
        Input.encodeList<AggregationResponse2, Map<String, dynamic>>(
            denominatorAggregations, (value) => value.toMap());
    map['denominatorFilter'] = denominatorFilter;
    map['duration'] = duration;
    map['evaluationMissingData'] = evaluationMissingData;
    map['filter'] = filter;
    map['forecastOptions'] = forecastOptions.toMap();
    map['thresholdValue'] = thresholdValue;
    map['trigger'] = trigger.toMap();
    return map;
  }

  factory MetricThresholdResponse.fromMap(Map<String, dynamic> map) {
    return MetricThresholdResponse(
      aggregations: Input.decodeList<AggregationResponse2>(
          map['aggregations'],
          (value) => AggregationResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      comparison: map['comparison'] as String,
      denominatorAggregations: Input.decodeList<AggregationResponse2>(
          map['denominatorAggregations'],
          (value) => AggregationResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      denominatorFilter: map['denominatorFilter'] as String,
      duration: map['duration'] as String,
      evaluationMissingData: map['evaluationMissingData'] as String,
      filter: map['filter'] as String,
      forecastOptions: ForecastOptionsResponse.fromMap(
          (map['forecastOptions'] as Map).cast<String, dynamic>()),
      thresholdValue: map['thresholdValue'] as double,
      trigger: TriggerResponse.fromMap(
          (map['trigger'] as Map).cast<String, dynamic>()),
    );
  }
}
