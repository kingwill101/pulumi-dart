// ignore_for_file: unused_element, unnecessary_cast

import 'log_match_response.dart';
import 'metric_absence_response.dart';
import 'metric_threshold_response.dart';
import 'monitoring_query_language_condition_response.dart';
import 'prometheus_query_language_condition_response.dart';

/// A condition is a true/false test that determines when an alerting policy should open an incident. If a condition evaluates to true, it signifies that something is wrong.
class ConditionResponseMonitoringV3 {
  /// A condition that checks that a time series continues to receive new data points.
  final MetricAbsenceResponse conditionAbsent;

  /// A condition that checks for log messages matching given constraints. If set, no other conditions can be present.
  final LogMatchResponse conditionMatchedLog;

  /// A condition that uses the Monitoring Query Language to define alerts.
  final MonitoringQueryLanguageConditionResponse
      conditionMonitoringQueryLanguage;

  /// A condition that uses the Prometheus query language to define alerts.
  final PrometheusQueryLanguageConditionResponse
      conditionPrometheusQueryLanguage;

  /// A condition that compares a time series against a threshold.
  final MetricThresholdResponse conditionThreshold;

  /// A short name or phrase used to identify the condition in dashboards, notifications, and incidents. To avoid confusion, don't use the same display name for multiple conditions in the same policy.
  final String displayName;

  /// Required if the condition exists. The unique resource name for this condition. Its format is: projects/[PROJECT_ID_OR_NUMBER]/alertPolicies/[POLICY_ID]/conditions/[CONDITION_ID] [CONDITION_ID] is assigned by Cloud Monitoring when the condition is created as part of a new or updated alerting policy.When calling the alertPolicies.create method, do not include the name field in the conditions of the requested alerting policy. Cloud Monitoring creates the condition identifiers and includes them in the new policy.When calling the alertPolicies.update method to update a policy, including a condition name causes the existing condition to be updated. Conditions without names are added to the updated policy. Existing conditions are deleted if they are not updated.Best practice is to preserve [CONDITION_ID] if you make only small changes, such as those to condition thresholds, durations, or trigger values. Otherwise, treat the change as a new condition and let the existing condition be deleted.
  final String name;

  ConditionResponseMonitoringV3({
    required this.conditionAbsent,
    required this.conditionMatchedLog,
    required this.conditionMonitoringQueryLanguage,
    required this.conditionPrometheusQueryLanguage,
    required this.conditionThreshold,
    required this.displayName,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['conditionAbsent'] = conditionAbsent.toMap();
    map['conditionMatchedLog'] = conditionMatchedLog.toMap();
    map['conditionMonitoringQueryLanguage'] =
        conditionMonitoringQueryLanguage.toMap();
    map['conditionPrometheusQueryLanguage'] =
        conditionPrometheusQueryLanguage.toMap();
    map['conditionThreshold'] = conditionThreshold.toMap();
    map['displayName'] = displayName;
    map['name'] = name;
    return map;
  }

  factory ConditionResponseMonitoringV3.fromMap(Map<String, dynamic> map) {
    return ConditionResponseMonitoringV3(
      conditionAbsent: MetricAbsenceResponse.fromMap(
          (map['conditionAbsent'] as Map).cast<String, dynamic>()),
      conditionMatchedLog: LogMatchResponse.fromMap(
          (map['conditionMatchedLog'] as Map).cast<String, dynamic>()),
      conditionMonitoringQueryLanguage:
          MonitoringQueryLanguageConditionResponse.fromMap(
              (map['conditionMonitoringQueryLanguage'] as Map)
                  .cast<String, dynamic>()),
      conditionPrometheusQueryLanguage:
          PrometheusQueryLanguageConditionResponse.fromMap(
              (map['conditionPrometheusQueryLanguage'] as Map)
                  .cast<String, dynamic>()),
      conditionThreshold: MetricThresholdResponse.fromMap(
          (map['conditionThreshold'] as Map).cast<String, dynamic>()),
      displayName: map['displayName'] as String,
      name: map['name'] as String,
    );
  }
}
