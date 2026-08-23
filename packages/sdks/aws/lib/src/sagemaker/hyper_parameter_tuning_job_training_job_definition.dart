// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hyper_parameter_tuning_job_training_job_definition_algorithm_specification.dart';
import 'hyper_parameter_tuning_job_training_job_definition_checkpoint_config.dart';
import 'hyper_parameter_tuning_job_training_job_definition_hyper_parameter_ranges.dart';
import 'hyper_parameter_tuning_job_training_job_definition_hyper_parameter_tuning_resource_config.dart';
import 'hyper_parameter_tuning_job_training_job_definition_input_data_config.dart';
import 'hyper_parameter_tuning_job_training_job_definition_output_data_config.dart';
import 'hyper_parameter_tuning_job_training_job_definition_resource_config.dart';
import 'hyper_parameter_tuning_job_training_job_definition_retry_strategy.dart';
import 'hyper_parameter_tuning_job_training_job_definition_stopping_condition.dart';
import 'hyper_parameter_tuning_job_training_job_definition_tuning_objective.dart';
import 'hyper_parameter_tuning_job_training_job_definition_vpc_config.dart';

class HyperParameterTuningJobTrainingJobDefinition {
  /// Algorithm settings. See `algorithmSpecification`.
  final pulumi.Input<HyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecification> algorithmSpecification;
  /// Checkpoint output location. See `checkpointConfig`.
  final pulumi.Input<HyperParameterTuningJobTrainingJobDefinitionCheckpointConfig>? checkpointConfig;
  /// Name for this definition.
  final pulumi.Input<String>? definitionName;
  /// Whether to encrypt traffic between containers.
  final pulumi.Input<bool>? enableInterContainerTrafficEncryption;
  /// Whether to use managed spot training.
  final pulumi.Input<bool>? enableManagedSpotTraining;
  /// Whether to isolate network access for containers.
  final pulumi.Input<bool>? enableNetworkIsolation;
  /// Map of environment variables.
  final pulumi.Input<Map<String, String>>? environment;
  /// Hyperparameter ranges for this definition. See `parameterRanges`.
  final pulumi.Input<HyperParameterTuningJobTrainingJobDefinitionHyperParameterRanges>? hyperParameterRanges;
  /// Tuning resource settings. See `hyperParameterTuningResourceConfig`.
  final pulumi.Input<HyperParameterTuningJobTrainingJobDefinitionHyperParameterTuningResourceConfig>? hyperParameterTuningResourceConfig;
  /// Input data channels. See `inputDataConfig`.
  final pulumi.Input<List<HyperParameterTuningJobTrainingJobDefinitionInputDataConfig>>? inputDataConfigs;
  /// Output data settings. See `outputDataConfig`.
  final pulumi.Input<HyperParameterTuningJobTrainingJobDefinitionOutputDataConfig> outputDataConfig;
  /// Training resources. See `resourceConfig`.
  final pulumi.Input<HyperParameterTuningJobTrainingJobDefinitionResourceConfig>? resourceConfig;
  /// Retry settings. See `retryStrategy`.
  final pulumi.Input<List<HyperParameterTuningJobTrainingJobDefinitionRetryStrategy>>? retryStrategies;
  /// IAM role ARN used by SageMaker AI.
  final pulumi.Input<String> roleArn;
  /// Map of fixed hyperparameters.
  final pulumi.Input<Map<String, String>>? staticHyperParameters;
  /// Stopping settings. See `stoppingCondition`.
  final pulumi.Input<HyperParameterTuningJobTrainingJobDefinitionStoppingCondition> stoppingCondition;
  /// Objective for this training definition. See `tuningObjective`.
  final pulumi.Input<HyperParameterTuningJobTrainingJobDefinitionTuningObjective>? tuningObjective;
  /// VPC settings. See `vpcConfig`.
  final pulumi.Input<HyperParameterTuningJobTrainingJobDefinitionVpcConfig>? vpcConfig;

  /// Creates a new [HyperParameterTuningJobTrainingJobDefinition].
  /// [algorithmSpecification] Algorithm settings. See `algorithmSpecification`.
  /// [checkpointConfig] Checkpoint output location. See `checkpointConfig`.
  /// [definitionName] Name for this definition.
  /// [enableInterContainerTrafficEncryption] Whether to encrypt traffic between containers.
  /// [enableManagedSpotTraining] Whether to use managed spot training.
  /// [enableNetworkIsolation] Whether to isolate network access for containers.
  /// [environment] Map of environment variables.
  /// [hyperParameterRanges] Hyperparameter ranges for this definition. See `parameterRanges`.
  /// [hyperParameterTuningResourceConfig] Tuning resource settings. See `hyperParameterTuningResourceConfig`.
  /// [inputDataConfigs] Input data channels. See `inputDataConfig`.
  /// [outputDataConfig] Output data settings. See `outputDataConfig`.
  /// [resourceConfig] Training resources. See `resourceConfig`.
  /// [retryStrategies] Retry settings. See `retryStrategy`.
  /// [roleArn] IAM role ARN used by SageMaker AI.
  /// [staticHyperParameters] Map of fixed hyperparameters.
  /// [stoppingCondition] Stopping settings. See `stoppingCondition`.
  /// [tuningObjective] Objective for this training definition. See `tuningObjective`.
  /// [vpcConfig] VPC settings. See `vpcConfig`.
  const HyperParameterTuningJobTrainingJobDefinition({
    required this.algorithmSpecification,
    this.checkpointConfig,
    this.definitionName,
    this.enableInterContainerTrafficEncryption,
    this.enableManagedSpotTraining,
    this.enableNetworkIsolation,
    this.environment,
    this.hyperParameterRanges,
    this.hyperParameterTuningResourceConfig,
    this.inputDataConfigs,
    required this.outputDataConfig,
    this.resourceConfig,
    this.retryStrategies,
    required this.roleArn,
    this.staticHyperParameters,
    required this.stoppingCondition,
    this.tuningObjective,
    this.vpcConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithmSpecification': pulumi.Input.mapInputValue<HyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecification, Map<String, dynamic>>(algorithmSpecification, (value) => value.toMap()),
      'checkpointConfig': ?pulumi.Input.mapOptionalInputValue<HyperParameterTuningJobTrainingJobDefinitionCheckpointConfig, Map<String, dynamic>>(checkpointConfig, (value) => value.toMap()),
      'definitionName': ?definitionName,
      'enableInterContainerTrafficEncryption': ?enableInterContainerTrafficEncryption,
      'enableManagedSpotTraining': ?enableManagedSpotTraining,
      'enableNetworkIsolation': ?enableNetworkIsolation,
      'environment': ?environment,
      'hyperParameterRanges': ?pulumi.Input.mapOptionalInputValue<HyperParameterTuningJobTrainingJobDefinitionHyperParameterRanges, Map<String, dynamic>>(hyperParameterRanges, (value) => value.toMap()),
      'hyperParameterTuningResourceConfig': ?pulumi.Input.mapOptionalInputValue<HyperParameterTuningJobTrainingJobDefinitionHyperParameterTuningResourceConfig, Map<String, dynamic>>(hyperParameterTuningResourceConfig, (value) => value.toMap()),
      'inputDataConfigs': ?pulumi.Input.mapOptionalInputValue<List<HyperParameterTuningJobTrainingJobDefinitionInputDataConfig>, List<Map<String, dynamic>>>(inputDataConfigs, (value) => pulumi.Input.encodeList<HyperParameterTuningJobTrainingJobDefinitionInputDataConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'outputDataConfig': pulumi.Input.mapInputValue<HyperParameterTuningJobTrainingJobDefinitionOutputDataConfig, Map<String, dynamic>>(outputDataConfig, (value) => value.toMap()),
      'resourceConfig': ?pulumi.Input.mapOptionalInputValue<HyperParameterTuningJobTrainingJobDefinitionResourceConfig, Map<String, dynamic>>(resourceConfig, (value) => value.toMap()),
      'retryStrategies': ?pulumi.Input.mapOptionalInputValue<List<HyperParameterTuningJobTrainingJobDefinitionRetryStrategy>, List<Map<String, dynamic>>>(retryStrategies, (value) => pulumi.Input.encodeList<HyperParameterTuningJobTrainingJobDefinitionRetryStrategy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'roleArn': roleArn,
      'staticHyperParameters': ?staticHyperParameters,
      'stoppingCondition': pulumi.Input.mapInputValue<HyperParameterTuningJobTrainingJobDefinitionStoppingCondition, Map<String, dynamic>>(stoppingCondition, (value) => value.toMap()),
      'tuningObjective': ?pulumi.Input.mapOptionalInputValue<HyperParameterTuningJobTrainingJobDefinitionTuningObjective, Map<String, dynamic>>(tuningObjective, (value) => value.toMap()),
      'vpcConfig': ?pulumi.Input.mapOptionalInputValue<HyperParameterTuningJobTrainingJobDefinitionVpcConfig, Map<String, dynamic>>(vpcConfig, (value) => value.toMap()),
    };
  }

  factory HyperParameterTuningJobTrainingJobDefinition.fromMap(Map<String, dynamic> map) {
    return HyperParameterTuningJobTrainingJobDefinition(
      algorithmSpecification: pulumi.Input.fromValue(HyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecification.fromMap((map['algorithmSpecification']! as Map).cast<String, dynamic>())),
      checkpointConfig: (() { final guardedValue = map['checkpointConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HyperParameterTuningJobTrainingJobDefinitionCheckpointConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      definitionName: (() { final guardedValue = map['definitionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableInterContainerTrafficEncryption: (() { final guardedValue = map['enableInterContainerTrafficEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableManagedSpotTraining: (() { final guardedValue = map['enableManagedSpotTraining']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableNetworkIsolation: (() { final guardedValue = map['enableNetworkIsolation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      hyperParameterRanges: (() { final guardedValue = map['hyperParameterRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HyperParameterTuningJobTrainingJobDefinitionHyperParameterRanges.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hyperParameterTuningResourceConfig: (() { final guardedValue = map['hyperParameterTuningResourceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HyperParameterTuningJobTrainingJobDefinitionHyperParameterTuningResourceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inputDataConfigs: (() { final guardedValue = map['inputDataConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HyperParameterTuningJobTrainingJobDefinitionInputDataConfig>(guardedValue, (value) => HyperParameterTuningJobTrainingJobDefinitionInputDataConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      outputDataConfig: pulumi.Input.fromValue(HyperParameterTuningJobTrainingJobDefinitionOutputDataConfig.fromMap((map['outputDataConfig']! as Map).cast<String, dynamic>())),
      resourceConfig: (() { final guardedValue = map['resourceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HyperParameterTuningJobTrainingJobDefinitionResourceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retryStrategies: (() { final guardedValue = map['retryStrategies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HyperParameterTuningJobTrainingJobDefinitionRetryStrategy>(guardedValue, (value) => HyperParameterTuningJobTrainingJobDefinitionRetryStrategy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      staticHyperParameters: (() { final guardedValue = map['staticHyperParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      stoppingCondition: pulumi.Input.fromValue(HyperParameterTuningJobTrainingJobDefinitionStoppingCondition.fromMap((map['stoppingCondition']! as Map).cast<String, dynamic>())),
      tuningObjective: (() { final guardedValue = map['tuningObjective']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HyperParameterTuningJobTrainingJobDefinitionTuningObjective.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpcConfig: (() { final guardedValue = map['vpcConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HyperParameterTuningJobTrainingJobDefinitionVpcConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
