// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MetricAlarmEvaluationCriteriaPromqlCriteria {
  /// The duration, in seconds, that a contributor must be continuously breaching before it transitions to the ALARM state. Valid range: 0-86400.
  final pulumi.Input<int?>? pendingPeriod;
  /// The PromQL query that the alarm evaluates. The query must return a result of vector type. Each entry in the vector result represents an alarm contributor.
  final pulumi.Input<String> query;
  /// The duration, in seconds, that a contributor must continuously not be breaching before it transitions back to the OK state. Valid range: 0-86400.
  final pulumi.Input<int?>? recoveryPeriod;

  /// Creates a new [MetricAlarmEvaluationCriteriaPromqlCriteria].
  /// [pendingPeriod] The duration, in seconds, that a contributor must be continuously breaching before it transitions to the ALARM state. Valid range: 0-86400.
  /// [query] The PromQL query that the alarm evaluates. The query must return a result of vector type. Each entry in the vector result represents an alarm contributor.
  /// [recoveryPeriod] The duration, in seconds, that a contributor must continuously not be breaching before it transitions back to the OK state. Valid range: 0-86400.
  const MetricAlarmEvaluationCriteriaPromqlCriteria({
    this.pendingPeriod,
    required this.query,
    this.recoveryPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pendingPeriod': ?pendingPeriod,
      'query': query,
      'recoveryPeriod': ?recoveryPeriod,
    };
  }

  factory MetricAlarmEvaluationCriteriaPromqlCriteria.fromMap(Map<String, dynamic> map) {
    return MetricAlarmEvaluationCriteriaPromqlCriteria(
      pendingPeriod: (() { final guardedValue = map['pendingPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      query: pulumi.Input.fromValue(map['query'] as String),
      recoveryPeriod: (() { final guardedValue = map['recoveryPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
