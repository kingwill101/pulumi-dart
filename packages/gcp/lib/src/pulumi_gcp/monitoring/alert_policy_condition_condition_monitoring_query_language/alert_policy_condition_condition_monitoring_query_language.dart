// ignore_for_file: unused_element, unnecessary_cast

import '../alert_policy_condition_condition_monitoring_query_language_trigger/alert_policy_condition_condition_monitoring_query_language_trigger.dart';

class AlertPolicyConditionConditionMonitoringQueryLanguage {
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

  /// Monitoring Query Language query that outputs a boolean stream.
  final String query;

  /// The number/percent of time series for which
  /// the comparison must hold in order for the
  /// condition to trigger. If unspecified, then
  /// the condition will trigger if the comparison
  /// is true for any of the time series that have
  /// been identified by filter and aggregations,
  /// or by the ratio, if<span pulumi-lang-nodejs=" denominatorFilter " pulumi-lang-dotnet=" DenominatorFilter " pulumi-lang-go=" denominatorFilter " pulumi-lang-python=" denominator_filter " pulumi-lang-yaml=" denominatorFilter " pulumi-lang-java=" denominatorFilter "> denominator_filter </span>and<span pulumi-lang-nodejs="
  /// denominatorAggregations " pulumi-lang-dotnet="
  /// DenominatorAggregations " pulumi-lang-go="
  /// denominatorAggregations " pulumi-lang-python="
  /// denominator_aggregations " pulumi-lang-yaml="
  /// denominatorAggregations " pulumi-lang-java="
  /// denominatorAggregations ">
  /// denominator_aggregations </span>are specified.
  /// Structure is documented below.
  final AlertPolicyConditionConditionMonitoringQueryLanguageTrigger? trigger;

  AlertPolicyConditionConditionMonitoringQueryLanguage({
    required this.duration,
    this.evaluationMissingData,
    required this.query,
    this.trigger,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['duration'] = duration;
    final evaluationMissingDataValue = evaluationMissingData;
    if (evaluationMissingDataValue != null) {
      map['evaluationMissingData'] = evaluationMissingDataValue;
    }
    map['query'] = query;
    final triggerValue = trigger;
    if (triggerValue != null) {
      map['trigger'] = triggerValue.toMap();
    }
    return map;
  }

  factory AlertPolicyConditionConditionMonitoringQueryLanguage.fromMap(
      Map<String, dynamic> map) {
    return AlertPolicyConditionConditionMonitoringQueryLanguage(
      duration: map['duration'] as String,
      evaluationMissingData: map['evaluationMissingData'] == null
          ? null
          : map['evaluationMissingData'] as String,
      query: map['query'] as String,
      trigger: map['trigger'] == null
          ? null
          : AlertPolicyConditionConditionMonitoringQueryLanguageTrigger.fromMap(
              (map['trigger'] as Map).cast<String, dynamic>()),
    );
  }
}
