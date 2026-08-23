// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_alarm_evaluation_criteria_promql_criteria.dart';

class MetricAlarmEvaluationCriteria {
  /// The PromQL criteria for the alarm evaluation.
  final pulumi.Input<MetricAlarmEvaluationCriteriaPromqlCriteria> promqlCriteria;

  /// Creates a new [MetricAlarmEvaluationCriteria].
  /// [promqlCriteria] The PromQL criteria for the alarm evaluation.
  const MetricAlarmEvaluationCriteria({
    required this.promqlCriteria,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'promqlCriteria': pulumi.Input.mapInputValue<MetricAlarmEvaluationCriteriaPromqlCriteria, Map<String, dynamic>>(promqlCriteria, (value) => value.toMap()),
    };
  }

  factory MetricAlarmEvaluationCriteria.fromMap(Map<String, dynamic> map) {
    return MetricAlarmEvaluationCriteria(
      promqlCriteria: pulumi.Input.fromValue(MetricAlarmEvaluationCriteriaPromqlCriteria.fromMap((map['promqlCriteria']! as Map).cast<String, dynamic>())),
    );
  }
}
