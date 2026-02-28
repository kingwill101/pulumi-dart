// ignore_for_file: unused_element, unnecessary_cast

import 'log_match.dart';
import 'metric_absence.dart';
import 'metric_threshold.dart';
import 'monitoring_query_language_condition.dart';
import 'prometheus_query_language_condition.dart';

/// A condition is a true/false test that determines when an alerting policy should open an incident. If a condition evaluates to true, it signifies that something is wrong.
class Condition {
  /// A condition that checks that a time series continues to receive new data points.
  final MetricAbsence? conditionAbsent;
  /// A condition that checks for log messages matching given constraints. If set, no other conditions can be present.
  final LogMatch? conditionMatchedLog;
  /// A condition that uses the Monitoring Query Language to define alerts.
  final MonitoringQueryLanguageCondition? conditionMonitoringQueryLanguage;
  /// A condition that uses the Prometheus query language to define alerts.
  final PrometheusQueryLanguageCondition? conditionPrometheusQueryLanguage;
  /// A condition that compares a time series against a threshold.
  final MetricThreshold? conditionThreshold;
  /// A short name or phrase used to identify the condition in dashboards, notifications, and incidents. To avoid confusion, don't use the same display name for multiple conditions in the same policy.
  final String? displayName;
  /// Required if the condition exists. The unique resource name for this condition. Its format is: projects/[PROJECT_ID_OR_NUMBER]/alertPolicies/[POLICY_ID]/conditions/[CONDITION_ID] [CONDITION_ID] is assigned by Cloud Monitoring when the condition is created as part of a new or updated alerting policy.When calling the alertPolicies.create method, do not include the name field in the conditions of the requested alerting policy. Cloud Monitoring creates the condition identifiers and includes them in the new policy.When calling the alertPolicies.update method to update a policy, including a condition name causes the existing condition to be updated. Conditions without names are added to the updated policy. Existing conditions are deleted if they are not updated.Best practice is to preserve [CONDITION_ID] if you make only small changes, such as those to condition thresholds, durations, or trigger values. Otherwise, treat the change as a new condition and let the existing condition be deleted.
  final String? name;

  /// Creates a new [Condition].
  /// [conditionAbsent] A condition that checks that a time series continues to receive new data points.
  /// [conditionMatchedLog] A condition that checks for log messages matching given constraints. If set, no other conditions can be present.
  /// [conditionMonitoringQueryLanguage] A condition that uses the Monitoring Query Language to define alerts.
  /// [conditionPrometheusQueryLanguage] A condition that uses the Prometheus query language to define alerts.
  /// [conditionThreshold] A condition that compares a time series against a threshold.
  /// [displayName] A short name or phrase used to identify the condition in dashboards, notifications, and incidents. To avoid confusion, don't use the same display name for multiple conditions in the same policy.
  /// [name] Required if the condition exists. The unique resource name for this condition. Its format is: projects/[PROJECT_ID_OR_NUMBER]/alertPolicies/[POLICY_ID]/conditions/[CONDITION_ID] [CONDITION_ID] is assigned by Cloud Monitoring when the condition is created as part of a new or updated alerting policy.When calling the alertPolicies.create method, do not include the name field in the conditions of the requested alerting policy. Cloud Monitoring creates the condition identifiers and includes them in the new policy.When calling the alertPolicies.update method to update a policy, including a condition name causes the existing condition to be updated. Conditions without names are added to the updated policy. Existing conditions are deleted if they are not updated.Best practice is to preserve [CONDITION_ID] if you make only small changes, such as those to condition thresholds, durations, or trigger values. Otherwise, treat the change as a new condition and let the existing condition be deleted.
  Condition({
    this.conditionAbsent,
    this.conditionMatchedLog,
    this.conditionMonitoringQueryLanguage,
    this.conditionPrometheusQueryLanguage,
    this.conditionThreshold,
    this.displayName,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionAbsent': ?conditionAbsent == null ? null : conditionAbsent!.toMap(),
      'conditionMatchedLog': ?conditionMatchedLog == null ? null : conditionMatchedLog!.toMap(),
      'conditionMonitoringQueryLanguage': ?conditionMonitoringQueryLanguage == null ? null : conditionMonitoringQueryLanguage!.toMap(),
      'conditionPrometheusQueryLanguage': ?conditionPrometheusQueryLanguage == null ? null : conditionPrometheusQueryLanguage!.toMap(),
      'conditionThreshold': ?conditionThreshold == null ? null : conditionThreshold!.toMap(),
      'displayName': ?displayName,
      'name': ?name,
    };
  }

  factory Condition.fromMap(Map<String, dynamic> map) {
    return Condition(
      conditionAbsent: map['conditionAbsent'] == null ? null : MetricAbsence.fromMap((map['conditionAbsent'] as Map).cast<String, dynamic>()),
      conditionMatchedLog: map['conditionMatchedLog'] == null ? null : LogMatch.fromMap((map['conditionMatchedLog'] as Map).cast<String, dynamic>()),
      conditionMonitoringQueryLanguage: map['conditionMonitoringQueryLanguage'] == null ? null : MonitoringQueryLanguageCondition.fromMap((map['conditionMonitoringQueryLanguage'] as Map).cast<String, dynamic>()),
      conditionPrometheusQueryLanguage: map['conditionPrometheusQueryLanguage'] == null ? null : PrometheusQueryLanguageCondition.fromMap((map['conditionPrometheusQueryLanguage'] as Map).cast<String, dynamic>()),
      conditionThreshold: map['conditionThreshold'] == null ? null : MetricThreshold.fromMap((map['conditionThreshold'] as Map).cast<String, dynamic>()),
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

