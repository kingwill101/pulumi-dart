// ignore_for_file: unused_element, unnecessary_cast

import 'trigger_response.dart';

/// A condition type that allows alert policies to be defined using Monitoring Query Language (https://cloud.google.com/monitoring/mql).
class MonitoringQueryLanguageConditionResponse {
  /// The amount of time that a time series must violate the threshold to be considered failing. Currently, only values that are a multiple of a minute--e.g., 0, 60, 120, or 300 seconds--are supported. If an invalid value is given, an error will be returned. When choosing a duration, it is useful to keep in mind the frequency of the underlying time series data (which may also be affected by any alignments specified in the aggregations field); a good duration is long enough so that a single outlier does not generate spurious alerts, but short enough that unhealthy states are detected and alerted on quickly.
  final String duration;

  /// A condition control that determines how metric-threshold conditions are evaluated when data stops arriving.
  final String evaluationMissingData;

  /// Monitoring Query Language (https://cloud.google.com/monitoring/mql) query that outputs a boolean stream.
  final String query;

  /// The number/percent of time series for which the comparison must hold in order for the condition to trigger. If unspecified, then the condition will trigger if the comparison is true for any of the time series that have been identified by filter and aggregations, or by the ratio, if denominator_filter and denominator_aggregations are specified.
  final TriggerResponse trigger;

  /// Creates a new [MonitoringQueryLanguageConditionResponse].
  /// [duration] The amount of time that a time series must violate the threshold to be considered failing. Currently, only values that are a multiple of a minute--e.g., 0, 60, 120, or 300 seconds--are supported. If an invalid value is given, an error will be returned. When choosing a duration, it is useful to keep in mind the frequency of the underlying time series data (which may also be affected by any alignments specified in the aggregations field); a good duration is long enough so that a single outlier does not generate spurious alerts, but short enough that unhealthy states are detected and alerted on quickly.
  /// [evaluationMissingData] A condition control that determines how metric-threshold conditions are evaluated when data stops arriving.
  /// [query] Monitoring Query Language (https://cloud.google.com/monitoring/mql) query that outputs a boolean stream.
  /// [trigger] The number/percent of time series for which the comparison must hold in order for the condition to trigger. If unspecified, then the condition will trigger if the comparison is true for any of the time series that have been identified by filter and aggregations, or by the ratio, if denominator_filter and denominator_aggregations are specified.
  MonitoringQueryLanguageConditionResponse({
    required this.duration,
    required this.evaluationMissingData,
    required this.query,
    required this.trigger,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['duration'] = duration;
    map['evaluationMissingData'] = evaluationMissingData;
    map['query'] = query;
    map['trigger'] = trigger.toMap();
    return map;
  }

  factory MonitoringQueryLanguageConditionResponse.fromMap(
      Map<String, dynamic> map) {
    return MonitoringQueryLanguageConditionResponse(
      duration: map['duration'] as String,
      evaluationMissingData: map['evaluationMissingData'] as String,
      query: map['query'] as String,
      trigger: TriggerResponse.fromMap(
          (map['trigger'] as Map).cast<String, dynamic>()),
    );
  }
}
