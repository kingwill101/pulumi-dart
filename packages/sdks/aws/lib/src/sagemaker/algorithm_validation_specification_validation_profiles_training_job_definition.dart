// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'algorithm_validation_specification_validation_profiles_training_job_definition_input_data_config.dart';
import 'algorithm_validation_specification_validation_profiles_training_job_definition_output_data_config.dart';
import 'algorithm_validation_specification_validation_profiles_training_job_definition_resource_config.dart';
import 'algorithm_validation_specification_validation_profiles_training_job_definition_stopping_condition.dart';

class AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinition {
  /// Hyperparameters to pass to the training job.
  final pulumi.Input<Map<String, String>?>? hyperParameters;
  /// Input channel configuration for the validation training job. See Input Data Config.
  final pulumi.Input<List<AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfig>> inputDataConfigs;
  /// Output configuration for the validation training job. See Output Data Config.
  final pulumi.Input<AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionOutputDataConfig> outputDataConfig;
  /// Resource configuration for the validation training job. See Resource Config.
  final pulumi.Input<AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfig> resourceConfig;
  /// Stopping condition for the validation training job. See Stopping Condition.
  final pulumi.Input<AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionStoppingCondition> stoppingCondition;
  /// Input mode for the validation training job. Allowed values are: `Pipe`, `File`, and `FastFile`.
  final pulumi.Input<String> trainingInputMode;

  /// Creates a new [AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinition].
  /// [hyperParameters] Hyperparameters to pass to the training job.
  /// [inputDataConfigs] Input channel configuration for the validation training job. See Input Data Config.
  /// [outputDataConfig] Output configuration for the validation training job. See Output Data Config.
  /// [resourceConfig] Resource configuration for the validation training job. See Resource Config.
  /// [stoppingCondition] Stopping condition for the validation training job. See Stopping Condition.
  /// [trainingInputMode] Input mode for the validation training job. Allowed values are: `Pipe`, `File`, and `FastFile`.
  const AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinition({
    this.hyperParameters,
    required this.inputDataConfigs,
    required this.outputDataConfig,
    required this.resourceConfig,
    required this.stoppingCondition,
    required this.trainingInputMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hyperParameters': ?hyperParameters,
      'inputDataConfigs': pulumi.Input.mapInputValue<List<AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfig>, List<Map<String, dynamic>>>(inputDataConfigs, (value) => pulumi.Input.encodeList<AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'outputDataConfig': pulumi.Input.mapInputValue<AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionOutputDataConfig, Map<String, dynamic>>(outputDataConfig, (value) => value.toMap()),
      'resourceConfig': pulumi.Input.mapInputValue<AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfig, Map<String, dynamic>>(resourceConfig, (value) => value.toMap()),
      'stoppingCondition': pulumi.Input.mapInputValue<AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionStoppingCondition, Map<String, dynamic>>(stoppingCondition, (value) => value.toMap()),
      'trainingInputMode': trainingInputMode,
    };
  }

  factory AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinition.fromMap(Map<String, dynamic> map) {
    return AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinition(
      hyperParameters: (() { final guardedValue = map['hyperParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      inputDataConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfig>(map['inputDataConfigs']!, (value) => AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfig.fromMap((value as Map).cast<String, dynamic>()))),
      outputDataConfig: pulumi.Input.fromValue(AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionOutputDataConfig.fromMap((map['outputDataConfig']! as Map).cast<String, dynamic>())),
      resourceConfig: pulumi.Input.fromValue(AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfig.fromMap((map['resourceConfig']! as Map).cast<String, dynamic>())),
      stoppingCondition: pulumi.Input.fromValue(AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionStoppingCondition.fromMap((map['stoppingCondition']! as Map).cast<String, dynamic>())),
      trainingInputMode: pulumi.Input.fromValue(map['trainingInputMode'] as String),
    );
  }
}
