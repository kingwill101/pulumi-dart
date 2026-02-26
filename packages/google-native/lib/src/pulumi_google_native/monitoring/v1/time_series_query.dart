// ignore_for_file: unused_element, unnecessary_cast

import 'ops_analytics_query.dart';
import 'time_series_filter.dart';
import 'time_series_filter_ratio.dart';

/// TimeSeriesQuery collects the set of supported methods for querying time series data from the Stackdriver metrics API.
class TimeSeriesQuery {
  /// Preview: A query used to fetch a time series, category series, or numeric series with SQL. This is a preview feature and may be subject to change before final release.
  final OpsAnalyticsQuery? opsAnalyticsQuery;

  /// Optional. If set, Cloud Monitoring will treat the full query duration as the alignment period so that there will be only 1 output value.*Note: This could override the configured alignment period except for the cases where a series of data points are expected, like - XyChart - Scorecard's spark chart
  final bool? outputFullDuration;

  /// A query used to fetch time series with PromQL.
  final String? prometheusQuery;

  /// Filter parameters to fetch time series.
  final TimeSeriesFilter? timeSeriesFilter;

  /// Parameters to fetch a ratio between two time series filters.
  final TimeSeriesFilterRatio? timeSeriesFilterRatio;

  /// A query used to fetch time series with MQL.
  final String? timeSeriesQueryLanguage;

  /// The unit of data contained in fetched time series. If non-empty, this unit will override any unit that accompanies fetched data. The format is the same as the unit (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.metricDescriptors) field in MetricDescriptor.
  final String? unitOverride;

  TimeSeriesQuery({
    this.opsAnalyticsQuery,
    this.outputFullDuration,
    this.prometheusQuery,
    this.timeSeriesFilter,
    this.timeSeriesFilterRatio,
    this.timeSeriesQueryLanguage,
    this.unitOverride,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final opsAnalyticsQueryValue = opsAnalyticsQuery;
    if (opsAnalyticsQueryValue != null) {
      map['opsAnalyticsQuery'] = opsAnalyticsQueryValue.toMap();
    }
    final outputFullDurationValue = outputFullDuration;
    if (outputFullDurationValue != null) {
      map['outputFullDuration'] = outputFullDurationValue;
    }
    final prometheusQueryValue = prometheusQuery;
    if (prometheusQueryValue != null) {
      map['prometheusQuery'] = prometheusQueryValue;
    }
    final timeSeriesFilterValue = timeSeriesFilter;
    if (timeSeriesFilterValue != null) {
      map['timeSeriesFilter'] = timeSeriesFilterValue.toMap();
    }
    final timeSeriesFilterRatioValue = timeSeriesFilterRatio;
    if (timeSeriesFilterRatioValue != null) {
      map['timeSeriesFilterRatio'] = timeSeriesFilterRatioValue.toMap();
    }
    final timeSeriesQueryLanguageValue = timeSeriesQueryLanguage;
    if (timeSeriesQueryLanguageValue != null) {
      map['timeSeriesQueryLanguage'] = timeSeriesQueryLanguageValue;
    }
    final unitOverrideValue = unitOverride;
    if (unitOverrideValue != null) {
      map['unitOverride'] = unitOverrideValue;
    }
    return map;
  }

  factory TimeSeriesQuery.fromMap(Map<String, dynamic> map) {
    return TimeSeriesQuery(
      opsAnalyticsQuery: map['opsAnalyticsQuery'] == null
          ? null
          : OpsAnalyticsQuery.fromMap(
              (map['opsAnalyticsQuery'] as Map).cast<String, dynamic>()),
      outputFullDuration: map['outputFullDuration'] == null
          ? null
          : map['outputFullDuration'] as bool,
      prometheusQuery: map['prometheusQuery'] == null
          ? null
          : map['prometheusQuery'] as String,
      timeSeriesFilter: map['timeSeriesFilter'] == null
          ? null
          : TimeSeriesFilter.fromMap(
              (map['timeSeriesFilter'] as Map).cast<String, dynamic>()),
      timeSeriesFilterRatio: map['timeSeriesFilterRatio'] == null
          ? null
          : TimeSeriesFilterRatio.fromMap(
              (map['timeSeriesFilterRatio'] as Map).cast<String, dynamic>()),
      timeSeriesQueryLanguage: map['timeSeriesQueryLanguage'] == null
          ? null
          : map['timeSeriesQueryLanguage'] as String,
      unitOverride:
          map['unitOverride'] == null ? null : map['unitOverride'] as String,
    );
  }
}
