// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hyper_parameter_tuning_job_config_tuning_job_completion_criteria_best_objective_not_improving.dart';
import 'hyper_parameter_tuning_job_config_tuning_job_completion_criteria_convergence_detected.dart';

class HyperParameterTuningJobConfigTuningJobCompletionCriteria {
  /// Stop condition for non-improving jobs. See `bestObjectiveNotImproving`.
  final pulumi.Input<HyperParameterTuningJobConfigTuningJobCompletionCriteriaBestObjectiveNotImproving>? bestObjectiveNotImproving;
  /// Stop condition based on convergence. See `convergenceDetected`.
  final pulumi.Input<HyperParameterTuningJobConfigTuningJobCompletionCriteriaConvergenceDetected>? convergenceDetected;
  /// Target metric value that can stop tuning.
  final pulumi.Input<double>? targetObjectiveMetricValue;

  /// Creates a new [HyperParameterTuningJobConfigTuningJobCompletionCriteria].
  /// [bestObjectiveNotImproving] Stop condition for non-improving jobs. See `bestObjectiveNotImproving`.
  /// [convergenceDetected] Stop condition based on convergence. See `convergenceDetected`.
  /// [targetObjectiveMetricValue] Target metric value that can stop tuning.
  const HyperParameterTuningJobConfigTuningJobCompletionCriteria({
    this.bestObjectiveNotImproving,
    this.convergenceDetected,
    this.targetObjectiveMetricValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bestObjectiveNotImproving': ?pulumi.Input.mapOptionalInputValue<HyperParameterTuningJobConfigTuningJobCompletionCriteriaBestObjectiveNotImproving, Map<String, dynamic>>(bestObjectiveNotImproving, (value) => value.toMap()),
      'convergenceDetected': ?pulumi.Input.mapOptionalInputValue<HyperParameterTuningJobConfigTuningJobCompletionCriteriaConvergenceDetected, Map<String, dynamic>>(convergenceDetected, (value) => value.toMap()),
      'targetObjectiveMetricValue': ?targetObjectiveMetricValue,
    };
  }

  factory HyperParameterTuningJobConfigTuningJobCompletionCriteria.fromMap(Map<String, dynamic> map) {
    return HyperParameterTuningJobConfigTuningJobCompletionCriteria(
      bestObjectiveNotImproving: (() { final guardedValue = map['bestObjectiveNotImproving']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HyperParameterTuningJobConfigTuningJobCompletionCriteriaBestObjectiveNotImproving.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      convergenceDetected: (() { final guardedValue = map['convergenceDetected']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HyperParameterTuningJobConfigTuningJobCompletionCriteriaConvergenceDetected.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetObjectiveMetricValue: (() { final guardedValue = map['targetObjectiveMetricValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
