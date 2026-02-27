// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../alert_policy_condition_condition_threshold_aggregation/alert_policy_condition_condition_threshold_aggregation.dart';
import '../alert_policy_condition_condition_threshold_denominator_aggregation/alert_policy_condition_condition_threshold_denominator_aggregation.dart';
import '../alert_policy_condition_condition_threshold_forecast_options/alert_policy_condition_condition_threshold_forecast_options.dart';
import '../alert_policy_condition_condition_threshold_trigger/alert_policy_condition_condition_threshold_trigger.dart';

class AlertPolicyConditionConditionThreshold {
  /// Specifies the alignment of data points in
  /// individual time series as well as how to
  /// combine the retrieved time series together
  /// (such as when aggregating multiple streams
  /// on each resource to a single stream for each
  /// resource or when aggregating streams across
  /// all members of a group of resources).
  /// Multiple aggregations are applied in the
  /// order specified.This field is similar to the
  /// one in the MetricService.ListTimeSeries
  /// request. It is advisable to use the
  /// ListTimeSeries method when debugging this
  /// field.
  /// Structure is documented below.
  final List<AlertPolicyConditionConditionThresholdAggregation>? aggregations;

  /// The comparison to apply between the time
  /// series (indicated by filter and aggregation)
  /// and the threshold (indicated by
  /// threshold_value). The comparison is applied
  /// on each time series, with the time series on
  /// the left-hand side and the threshold on the
  /// right-hand side. Only COMPARISON_LT and
  /// COMPARISON_GT are supported currently.
  /// Possible values are: `COMPARISON_GT`, `COMPARISON_GE`, `COMPARISON_LT`, `COMPARISON_LE`, `COMPARISON_EQ`, `COMPARISON_NE`.
  final String comparison;

  /// Specifies the alignment of data points in
  /// individual time series selected by
  /// denominatorFilter as well as how to combine
  /// the retrieved time series together (such as
  /// when aggregating multiple streams on each
  /// resource to a single stream for each
  /// resource or when aggregating streams across
  /// all members of a group of resources).When
  /// computing ratios, the aggregations and
  /// denominator_aggregations fields must use the
  /// same alignment period and produce time
  /// series that have the same periodicity and
  /// labels.This field is similar to the one in
  /// the MetricService.ListTimeSeries request. It
  /// is advisable to use the ListTimeSeries
  /// method when debugging this field.
  /// Structure is documented below.
  final List<AlertPolicyConditionConditionThresholdDenominatorAggregation>?
      denominatorAggregations;

  /// A filter that identifies a time series that
  /// should be used as the denominator of a ratio
  /// that will be compared with the threshold. If
  /// a denominator_filter is specified, the time
  /// series specified by the filter field will be
  /// used as the numerator.The filter is similar
  /// to the one that is specified in the
  /// MetricService.ListTimeSeries request (that
  /// call is useful to verify the time series
  /// that will be retrieved / processed) and must
  /// specify the metric type and optionally may
  /// contain restrictions on resource type,
  /// resource labels, and metric labels. This
  /// field may not exceed 2048 Unicode characters
  /// in length.
  final String? denominatorFilter;

  /// The amount of time that a time series must
  /// violate the threshold to be considered
  /// failing. Currently, only values that are a
  /// multiple of a minute--e.g., 0, 60, 120, or
  /// 300 seconds--are supported. If an invalid
  /// value is given, an error will be returned.
  /// When choosing a duration, it is useful to
  /// keep in mind the frequency of the underlying
  /// time series data (which may also be affected
  /// by any alignments specified in the
  /// aggregations field); a good duration is long
  /// enough so that a single outlier does not
  /// generate spurious alerts, but short enough
  /// that unhealthy states are detected and
  /// alerted on quickly.
  final String duration;

  /// A condition control that determines how
  /// metric-threshold conditions are evaluated when
  /// data stops arriving.
  /// Possible values are: `EVALUATION_MISSING_DATA_INACTIVE`, `EVALUATION_MISSING_DATA_ACTIVE`, `EVALUATION_MISSING_DATA_NO_OP`.
  final String? evaluationMissingData;

  /// A filter that identifies which time series
  /// should be compared with the threshold.The
  /// filter is similar to the one that is
  /// specified in the
  /// MetricService.ListTimeSeries request (that
  /// call is useful to verify the time series
  /// that will be retrieved / processed) and must
  /// specify the metric type and optionally may
  /// contain restrictions on resource type,
  /// resource labels, and metric labels. This
  /// field may not exceed 2048 Unicode characters
  /// in length.
  final String? filter;

  /// When this field is present, the `MetricThreshold`
  /// condition forecasts whether the time series is
  /// predicted to violate the threshold within the
  /// `forecastHorizon`. When this field is not set, the
  /// `MetricThreshold` tests the current value of the
  /// timeseries against the threshold.
  /// Structure is documented below.
  final AlertPolicyConditionConditionThresholdForecastOptions? forecastOptions;

  /// A value against which to compare the time
  /// series.
  final double? thresholdValue;

  /// The number/percent of time series for which
  /// the comparison must hold in order for the
  /// condition to trigger. If unspecified, then
  /// the condition will trigger if the comparison
  /// is true for any of the time series that have
  /// been identified by filter and aggregations,
  /// or by the ratio, if denominator_filter and
  /// denominator_aggregations are specified.
  /// Structure is documented below.
  final AlertPolicyConditionConditionThresholdTrigger? trigger;

  AlertPolicyConditionConditionThreshold({
    this.aggregations,
    required this.comparison,
    this.denominatorAggregations,
    this.denominatorFilter,
    required this.duration,
    this.evaluationMissingData,
    this.filter,
    this.forecastOptions,
    this.thresholdValue,
    this.trigger,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aggregationsValue = aggregations;
    if (aggregationsValue != null) {
      map['aggregations'] = Input.encodeList<
          AlertPolicyConditionConditionThresholdAggregation,
          Map<String, dynamic>>(aggregationsValue, (value) => value.toMap());
    }
    map['comparison'] = comparison;
    final denominatorAggregationsValue = denominatorAggregations;
    if (denominatorAggregationsValue != null) {
      map['denominatorAggregations'] = Input.encodeList<
              AlertPolicyConditionConditionThresholdDenominatorAggregation,
              Map<String, dynamic>>(
          denominatorAggregationsValue, (value) => value.toMap());
    }
    final denominatorFilterValue = denominatorFilter;
    if (denominatorFilterValue != null) {
      map['denominatorFilter'] = denominatorFilterValue;
    }
    map['duration'] = duration;
    final evaluationMissingDataValue = evaluationMissingData;
    if (evaluationMissingDataValue != null) {
      map['evaluationMissingData'] = evaluationMissingDataValue;
    }
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
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

  factory AlertPolicyConditionConditionThreshold.fromMap(
      Map<String, dynamic> map) {
    return AlertPolicyConditionConditionThreshold(
      aggregations: map['aggregations'] == null
          ? null
          : Input.decodeList<AlertPolicyConditionConditionThresholdAggregation>(
              map['aggregations'],
              (value) =>
                  AlertPolicyConditionConditionThresholdAggregation.fromMap(
                      (value as Map).cast<String, dynamic>())),
      comparison: map['comparison'] as String,
      denominatorAggregations: map['denominatorAggregations'] == null
          ? null
          : Input.decodeList<
                  AlertPolicyConditionConditionThresholdDenominatorAggregation>(
              map['denominatorAggregations'],
              (value) =>
                  AlertPolicyConditionConditionThresholdDenominatorAggregation
                      .fromMap((value as Map).cast<String, dynamic>())),
      denominatorFilter: map['denominatorFilter'] == null
          ? null
          : map['denominatorFilter'] as String,
      duration: map['duration'] as String,
      evaluationMissingData: map['evaluationMissingData'] == null
          ? null
          : map['evaluationMissingData'] as String,
      filter: map['filter'] == null ? null : map['filter'] as String,
      forecastOptions: map['forecastOptions'] == null
          ? null
          : AlertPolicyConditionConditionThresholdForecastOptions.fromMap(
              (map['forecastOptions'] as Map).cast<String, dynamic>()),
      thresholdValue: map['thresholdValue'] == null
          ? null
          : map['thresholdValue'] as double,
      trigger: map['trigger'] == null
          ? null
          : AlertPolicyConditionConditionThresholdTrigger.fromMap(
              (map['trigger'] as Map).cast<String, dynamic>()),
    );
  }
}
