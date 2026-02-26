// ignore_for_file: unused_element, unnecessary_cast

import 'ops_analytics_query_response.dart';
import 'time_series_filter_ratio_response.dart';
import 'time_series_filter_response.dart';

/// TimeSeriesQuery collects the set of supported methods for querying time series data from the Stackdriver metrics API.
class TimeSeriesQueryResponse {
  /// Preview: A query used to fetch a time series, category series, or numeric series with SQL. This is a preview feature and may be subject to change before final release.
  final OpsAnalyticsQueryResponse opsAnalyticsQuery;

  /// Optional. If set, Cloud Monitoring will treat the full query duration as the alignment period so that there will be only 1 output value.*Note: This could override the configured alignment period except for the cases where a series of data points are expected, like - XyChart - Scorecard's spark chart
  final bool outputFullDuration;

  /// A query used to fetch time series with PromQL.
  final String prometheusQuery;

  /// Filter parameters to fetch time series.
  final TimeSeriesFilterResponse timeSeriesFilter;

  /// Parameters to fetch a ratio between two time series filters.
  final TimeSeriesFilterRatioResponse timeSeriesFilterRatio;

  /// A query used to fetch time series with MQL.
  final String timeSeriesQueryLanguage;

  /// The unit of data contained in fetched time series. If non-empty, this unit will override any unit that accompanies fetched data. The format is the same as the unit (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.metricDescriptors) field in MetricDescriptor.
  final String unitOverride;

  TimeSeriesQueryResponse({
    required this.opsAnalyticsQuery,
    required this.outputFullDuration,
    required this.prometheusQuery,
    required this.timeSeriesFilter,
    required this.timeSeriesFilterRatio,
    required this.timeSeriesQueryLanguage,
    required this.unitOverride,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['opsAnalyticsQuery'] = opsAnalyticsQuery.toMap();
    map['outputFullDuration'] = outputFullDuration;
    map['prometheusQuery'] = prometheusQuery;
    map['timeSeriesFilter'] = timeSeriesFilter.toMap();
    map['timeSeriesFilterRatio'] = timeSeriesFilterRatio.toMap();
    map['timeSeriesQueryLanguage'] = timeSeriesQueryLanguage;
    map['unitOverride'] = unitOverride;
    return map;
  }

  factory TimeSeriesQueryResponse.fromMap(Map<String, dynamic> map) {
    return TimeSeriesQueryResponse(
      opsAnalyticsQuery: OpsAnalyticsQueryResponse.fromMap(
          (map['opsAnalyticsQuery'] as Map).cast<String, dynamic>()),
      outputFullDuration: map['outputFullDuration'] as bool,
      prometheusQuery: map['prometheusQuery'] as String,
      timeSeriesFilter: TimeSeriesFilterResponse.fromMap(
          (map['timeSeriesFilter'] as Map).cast<String, dynamic>()),
      timeSeriesFilterRatio: TimeSeriesFilterRatioResponse.fromMap(
          (map['timeSeriesFilterRatio'] as Map).cast<String, dynamic>()),
      timeSeriesQueryLanguage: map['timeSeriesQueryLanguage'] as String,
      unitOverride: map['unitOverride'] as String,
    );
  }
}
