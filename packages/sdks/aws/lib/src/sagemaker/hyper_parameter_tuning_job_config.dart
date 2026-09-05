// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hyper_parameter_tuning_job_config_objective.dart';
import 'hyper_parameter_tuning_job_config_parameter_ranges.dart';
import 'hyper_parameter_tuning_job_config_resource_limits.dart';
import 'hyper_parameter_tuning_job_config_strategy_config.dart';
import 'hyper_parameter_tuning_job_config_tuning_job_completion_criteria.dart';

class HyperParameterTuningJobConfig {
  /// Objective metric used by tuning. See `objective`.
  final pulumi.Input<HyperParameterTuningJobConfigObjective?>? objective;
  /// Hyperparameter search ranges. See `parameterRanges`.
  final pulumi.Input<HyperParameterTuningJobConfigParameterRanges?>? parameterRanges;
  /// Random seed for tuning.
  final pulumi.Input<int?>? randomSeed;
  /// Training job limits for tuning. See `resourceLimits`.
  final pulumi.Input<HyperParameterTuningJobConfigResourceLimits> resourceLimits;
  /// Search strategy for tuning.
  final pulumi.Input<String> strategy;
  /// Extra strategy options. See `strategyConfig`.
  final pulumi.Input<HyperParameterTuningJobConfigStrategyConfig?>? strategyConfig;
  /// Early stopping behavior for training jobs.
  final pulumi.Input<String?>? trainingJobEarlyStoppingType;
  /// Conditions to complete tuning. See `tuningJobCompletionCriteria`.
  final pulumi.Input<HyperParameterTuningJobConfigTuningJobCompletionCriteria?>? tuningJobCompletionCriteria;

  /// Creates a new [HyperParameterTuningJobConfig].
  /// [objective] Objective metric used by tuning. See `objective`.
  /// [parameterRanges] Hyperparameter search ranges. See `parameterRanges`.
  /// [randomSeed] Random seed for tuning.
  /// [resourceLimits] Training job limits for tuning. See `resourceLimits`.
  /// [strategy] Search strategy for tuning.
  /// [strategyConfig] Extra strategy options. See `strategyConfig`.
  /// [trainingJobEarlyStoppingType] Early stopping behavior for training jobs.
  /// [tuningJobCompletionCriteria] Conditions to complete tuning. See `tuningJobCompletionCriteria`.
  const HyperParameterTuningJobConfig({
    this.objective,
    this.parameterRanges,
    this.randomSeed,
    required this.resourceLimits,
    required this.strategy,
    this.strategyConfig,
    this.trainingJobEarlyStoppingType,
    this.tuningJobCompletionCriteria,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objective': ?pulumi.Input.mapOptionalInputValue<HyperParameterTuningJobConfigObjective, Map<String, dynamic>>(objective, (value) => value.toMap()),
      'parameterRanges': ?pulumi.Input.mapOptionalInputValue<HyperParameterTuningJobConfigParameterRanges, Map<String, dynamic>>(parameterRanges, (value) => value.toMap()),
      'randomSeed': ?randomSeed,
      'resourceLimits': pulumi.Input.mapInputValue<HyperParameterTuningJobConfigResourceLimits, Map<String, dynamic>>(resourceLimits, (value) => value.toMap()),
      'strategy': strategy,
      'strategyConfig': ?pulumi.Input.mapOptionalInputValue<HyperParameterTuningJobConfigStrategyConfig, Map<String, dynamic>>(strategyConfig, (value) => value.toMap()),
      'trainingJobEarlyStoppingType': ?trainingJobEarlyStoppingType,
      'tuningJobCompletionCriteria': ?pulumi.Input.mapOptionalInputValue<HyperParameterTuningJobConfigTuningJobCompletionCriteria, Map<String, dynamic>>(tuningJobCompletionCriteria, (value) => value.toMap()),
    };
  }

  factory HyperParameterTuningJobConfig.fromMap(Map<String, dynamic> map) {
    return HyperParameterTuningJobConfig(
      objective: (() { final guardedValue = map['objective']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HyperParameterTuningJobConfigObjective.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parameterRanges: (() { final guardedValue = map['parameterRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HyperParameterTuningJobConfigParameterRanges.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      randomSeed: (() { final guardedValue = map['randomSeed']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      resourceLimits: pulumi.Input.fromValue(HyperParameterTuningJobConfigResourceLimits.fromMap((map['resourceLimits']! as Map).cast<String, dynamic>())),
      strategy: pulumi.Input.fromValue(map['strategy'] as String),
      strategyConfig: (() { final guardedValue = map['strategyConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HyperParameterTuningJobConfigStrategyConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trainingJobEarlyStoppingType: (() { final guardedValue = map['trainingJobEarlyStoppingType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tuningJobCompletionCriteria: (() { final guardedValue = map['tuningJobCompletionCriteria']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HyperParameterTuningJobConfigTuningJobCompletionCriteria.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
