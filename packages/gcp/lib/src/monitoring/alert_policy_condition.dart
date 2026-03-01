// ignore_for_file: unused_element, unnecessary_cast

import 'alert_policy_condition_condition_absent.dart';
import 'alert_policy_condition_condition_matched_log.dart';
import 'alert_policy_condition_condition_monitoring_query_language.dart';
import 'alert_policy_condition_condition_prometheus_query_language.dart';
import 'alert_policy_condition_condition_sql.dart';
import 'alert_policy_condition_condition_threshold.dart';

class AlertPolicyCondition {
  /// A condition that checks that a time series
  /// continues to receive new data points.
  /// Structure is documented below.
  final AlertPolicyConditionConditionAbsent? conditionAbsent;

  /// A condition that checks for log messages matching given constraints.
  /// If set, no other conditions can be present.
  /// Structure is documented below.
  final AlertPolicyConditionConditionMatchedLog? conditionMatchedLog;

  /// A Monitoring Query Language query that outputs a boolean stream
  /// Structure is documented below.
  final AlertPolicyConditionConditionMonitoringQueryLanguage?
  conditionMonitoringQueryLanguage;

  /// A condition type that allows alert policies to be defined using
  /// Prometheus Query Language (PromQL).
  /// The PrometheusQueryLanguageCondition message contains information
  /// from a Prometheus alerting rule and its associated rule group.
  /// Structure is documented below.
  final AlertPolicyConditionConditionPrometheusQueryLanguage?
  conditionPrometheusQueryLanguage;

  /// A condition that allows alerting policies to be defined using GoogleSQL.
  /// SQL conditions examine a sliding window of logs using GoogleSQL.
  /// Alert policies with SQL conditions may incur additional billing.
  /// Structure is documented below.
  final AlertPolicyConditionConditionSql? conditionSql;

  /// A condition that compares a time series against a
  /// threshold.
  /// Structure is documented below.
  final AlertPolicyConditionConditionThreshold? conditionThreshold;

  /// A short name or phrase used to identify the
  /// condition in dashboards, notifications, and
  /// incidents. To avoid confusion, don't use the same
  /// display name for multiple conditions in the same
  /// policy.
  final String displayName;

  /// (Output)
  /// The unique resource name for this condition.
  /// Its syntax is:
  /// projects/[PROJECT_ID]/alertPolicies/[POLICY_ID]/conditions/[CONDITION_ID]
  /// [CONDITION_ID] is assigned by Stackdriver Monitoring when
  /// the condition is created as part of a new or updated alerting
  /// policy.
  final String? name;

  /// Creates a new [AlertPolicyCondition].
  /// [conditionAbsent] A condition that checks that a time series
  /// [conditionMatchedLog] A condition that checks for log messages matching given constraints.
  /// [conditionMonitoringQueryLanguage] A Monitoring Query Language query that outputs a boolean stream
  /// [conditionPrometheusQueryLanguage] A condition type that allows alert policies to be defined using
  /// [conditionSql] A condition that allows alerting policies to be defined using GoogleSQL.
  /// [conditionThreshold] A condition that compares a time series against a
  /// [displayName] A short name or phrase used to identify the
  /// [name] (Output)
  AlertPolicyCondition({
    this.conditionAbsent,
    this.conditionMatchedLog,
    this.conditionMonitoringQueryLanguage,
    this.conditionPrometheusQueryLanguage,
    this.conditionSql,
    this.conditionThreshold,
    required this.displayName,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionAbsent': ?conditionAbsent == null
          ? null
          : conditionAbsent!.toMap(),
      'conditionMatchedLog': ?conditionMatchedLog == null
          ? null
          : conditionMatchedLog!.toMap(),
      'conditionMonitoringQueryLanguage':
          ?conditionMonitoringQueryLanguage == null
          ? null
          : conditionMonitoringQueryLanguage!.toMap(),
      'conditionPrometheusQueryLanguage':
          ?conditionPrometheusQueryLanguage == null
          ? null
          : conditionPrometheusQueryLanguage!.toMap(),
      'conditionSql': ?conditionSql == null ? null : conditionSql!.toMap(),
      'conditionThreshold': ?conditionThreshold == null
          ? null
          : conditionThreshold!.toMap(),
      'displayName': displayName,
      'name': ?name,
    };
  }

  factory AlertPolicyCondition.fromMap(Map<String, dynamic> map) {
    return AlertPolicyCondition(
      conditionAbsent: map['conditionAbsent'] == null
          ? null
          : AlertPolicyConditionConditionAbsent.fromMap(
              (map['conditionAbsent'] as Map).cast<String, dynamic>(),
            ),
      conditionMatchedLog: map['conditionMatchedLog'] == null
          ? null
          : AlertPolicyConditionConditionMatchedLog.fromMap(
              (map['conditionMatchedLog'] as Map).cast<String, dynamic>(),
            ),
      conditionMonitoringQueryLanguage:
          map['conditionMonitoringQueryLanguage'] == null
          ? null
          : AlertPolicyConditionConditionMonitoringQueryLanguage.fromMap(
              (map['conditionMonitoringQueryLanguage'] as Map)
                  .cast<String, dynamic>(),
            ),
      conditionPrometheusQueryLanguage:
          map['conditionPrometheusQueryLanguage'] == null
          ? null
          : AlertPolicyConditionConditionPrometheusQueryLanguage.fromMap(
              (map['conditionPrometheusQueryLanguage'] as Map)
                  .cast<String, dynamic>(),
            ),
      conditionSql: map['conditionSql'] == null
          ? null
          : AlertPolicyConditionConditionSql.fromMap(
              (map['conditionSql'] as Map).cast<String, dynamic>(),
            ),
      conditionThreshold: map['conditionThreshold'] == null
          ? null
          : AlertPolicyConditionConditionThreshold.fromMap(
              (map['conditionThreshold'] as Map).cast<String, dynamic>(),
            ),
      displayName: map['displayName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
