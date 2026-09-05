// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'training_job_algorithm_specification.dart';
import 'training_job_checkpoint_config.dart';
import 'training_job_debug_hook_config.dart';
import 'training_job_debug_rule_configuration.dart';
import 'training_job_experiment_config.dart';
import 'training_job_infra_check_config.dart';
import 'training_job_input_data_config.dart';
import 'training_job_mlflow_config.dart';
import 'training_job_model_package_config.dart';
import 'training_job_output_data_config.dart';
import 'training_job_profiler_config.dart';
import 'training_job_profiler_rule_configuration.dart';
import 'training_job_remote_debug_config.dart';
import 'training_job_resource_config.dart';
import 'training_job_retry_strategy.dart';
import 'training_job_serverless_job_config.dart';
import 'training_job_session_chaining_config.dart';
import 'training_job_stopping_condition.dart';
import 'training_job_tensor_board_output_config.dart';
import 'training_job_timeouts.dart';
import 'training_job_vpc_config.dart';

/// Input properties used for looking up and filtering TrainingJob resources.
class TrainingJobState {
  /// Algorithm-related parameters of the training job. See `algorithmSpecification` below. Conflicts with `serverlessJobConfig`.
  final pulumi.Input<TrainingJobAlgorithmSpecification?>? algorithmSpecification;
  /// ARN of the Training Job.
  final pulumi.Input<String?>? arn;
  /// Location of checkpoints during training. See `checkpointConfig` below. Conflicts with `serverlessJobConfig`.
  final pulumi.Input<TrainingJobCheckpointConfig?>? checkpointConfig;
  /// Configuration for debugging rules. See `debugHookConfig` below. Conflicts with `serverlessJobConfig`.
  final pulumi.Input<TrainingJobDebugHookConfig?>? debugHookConfig;
  /// List of debug rule configurations. Maximum of 20. See `debugRuleConfigurations` below.
  final pulumi.Input<List<TrainingJobDebugRuleConfiguration>?>? debugRuleConfigurations;
  /// Whether to delete model packages in the configured model package group when the training job is destroyed. Default is `false`.
  final pulumi.Input<bool?>? deleteModelPackagesOnDestroy;
  /// Whether to delete detached VPC ENIs SageMaker may leave behind when the training job is destroyed. Default is `false`.
  final pulumi.Input<bool?>? deleteVpcEnisOnDestroy;
  /// Whether to encrypt inter-container traffic. When enabled, communications between containers are encrypted.
  final pulumi.Input<bool?>? enableInterContainerTrafficEncryption;
  /// Whether to use managed spot training. Optimizes the cost of training by using Amazon EC2 Spot Instances. Conflicts with `serverlessJobConfig`.
  final pulumi.Input<bool?>? enableManagedSpotTraining;
  /// Whether to isolate the training container from the network. No inbound or outbound network calls can be made.
  final pulumi.Input<bool?>? enableNetworkIsolation;
  /// Map of environment variables to set in the training container. Maximum of 100 entries.  Conflicts with `serverlessJobConfig`.
  final pulumi.Input<Map<String, String>?>? environment;
  /// Associates a SageMaker AI Experiment or Trial to the training job. See `experimentConfig` below. Conflicts with `serverlessJobConfig`.
  final pulumi.Input<TrainingJobExperimentConfig?>? experimentConfig;
  /// Map of hyperparameters for the training algorithm. Maximum of 100 entries.
  final pulumi.Input<Map<String, String>?>? hyperParameters;
  /// Infrastructure health check configuration. See `infraCheckConfig` below.
  final pulumi.Input<TrainingJobInfraCheckConfig?>? infraCheckConfig;
  /// List of input data channel configurations for the training job. Maximum of 20. See `inputDataConfig` below.
  final pulumi.Input<List<TrainingJobInputDataConfig>?>? inputDataConfigs;
  /// MLflow integration configuration. See `mlflowConfig` below.
  final pulumi.Input<TrainingJobMlflowConfig?>? mlflowConfig;
  /// Model package configuration. Requires `serverlessJobConfig`. See `modelPackageConfig` below.
  final pulumi.Input<TrainingJobModelPackageConfig?>? modelPackageConfig;
  /// Location of the output data from the training job. See `outputDataConfig` below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<TrainingJobOutputDataConfig?>? outputDataConfig;
  /// Configuration for the profiler. See `profilerConfig` below. Conflicts with `serverlessJobConfig`.
  final pulumi.Input<TrainingJobProfilerConfig?>? profilerConfig;
  /// List of profiler rule configurations. Maximum of 20. See `profilerRuleConfigurations` below. Conflicts with `serverlessJobConfig`.
  final pulumi.Input<List<TrainingJobProfilerRuleConfiguration>?>? profilerRuleConfigurations;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Configuration for remote debugging. See `remoteDebugConfig` below.
  final pulumi.Input<TrainingJobRemoteDebugConfig?>? remoteDebugConfig;
  /// Resources for the training job, including compute instances and storage volumes. See `resourceConfig` below.
  final pulumi.Input<TrainingJobResourceConfig?>? resourceConfig;
  /// Number of times to retry the job if it fails. See `retryStrategy` below. Conflicts with `serverlessJobConfig`.
  final pulumi.Input<TrainingJobRetryStrategy?>? retryStrategy;
  /// ARN of the IAM role that SageMaker AI assumes to perform tasks on your behalf during training.
  final pulumi.Input<String?>? roleArn;
  /// Configuration for serverless training jobs using foundation models. Conflicts with `algorithmSpecification`, `enableManagedSpotTraining`, `environment`, `retryStrategy`, `checkpointConfig`, `debugHookConfig`, `experimentConfig`, `profilerConfig`, `profilerRuleConfigurations`, and `tensorBoardOutputConfig`. See `serverlessJobConfig` below.
  final pulumi.Input<TrainingJobServerlessJobConfig?>? serverlessJobConfig;
  /// Configuration for session tag chaining. See `sessionChainingConfig` below.
  final pulumi.Input<TrainingJobSessionChainingConfig?>? sessionChainingConfig;
  final pulumi.Input<TrainingJobStoppingCondition?>? stoppingCondition;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Configuration for TensorBoard output. See `tensorBoardOutputConfig` below. Conflicts with `serverlessJobConfig`.
  final pulumi.Input<TrainingJobTensorBoardOutputConfig?>? tensorBoardOutputConfig;
  final pulumi.Input<TrainingJobTimeouts?>? timeouts;
  /// Name of the training job. Must be between 1 and 63 characters, start with a letter or number, and contain only letters, numbers, and hyphens.
  final pulumi.Input<String?>? trainingJobName;
  /// VPC configuration for the training job. See `vpcConfig` below.
  final pulumi.Input<TrainingJobVpcConfig?>? vpcConfig;

  /// Creates a new [TrainingJobState].
  /// [algorithmSpecification] Algorithm-related parameters of the training job. See `algorithmSpecification` below. Conflicts with `serverlessJobConfig`.
  /// [arn] ARN of the Training Job.
  /// [checkpointConfig] Location of checkpoints during training. See `checkpointConfig` below. Conflicts with `serverlessJobConfig`.
  /// [debugHookConfig] Configuration for debugging rules. See `debugHookConfig` below. Conflicts with `serverlessJobConfig`.
  /// [debugRuleConfigurations] List of debug rule configurations. Maximum of 20. See `debugRuleConfigurations` below.
  /// [deleteModelPackagesOnDestroy] Whether to delete model packages in the configured model package group when the training job is destroyed. Default is `false`.
  /// [deleteVpcEnisOnDestroy] Whether to delete detached VPC ENIs SageMaker may leave behind when the training job is destroyed. Default is `false`.
  /// [enableInterContainerTrafficEncryption] Whether to encrypt inter-container traffic. When enabled, communications between containers are encrypted.
  /// [enableManagedSpotTraining] Whether to use managed spot training. Optimizes the cost of training by using Amazon EC2 Spot Instances. Conflicts with `serverlessJobConfig`.
  /// [enableNetworkIsolation] Whether to isolate the training container from the network. No inbound or outbound network calls can be made.
  /// [environment] Map of environment variables to set in the training container. Maximum of 100 entries.  Conflicts with `serverlessJobConfig`.
  /// [experimentConfig] Associates a SageMaker AI Experiment or Trial to the training job. See `experimentConfig` below. Conflicts with `serverlessJobConfig`.
  /// [hyperParameters] Map of hyperparameters for the training algorithm. Maximum of 100 entries.
  /// [infraCheckConfig] Infrastructure health check configuration. See `infraCheckConfig` below.
  /// [inputDataConfigs] List of input data channel configurations for the training job. Maximum of 20. See `inputDataConfig` below.
  /// [mlflowConfig] MLflow integration configuration. See `mlflowConfig` below.
  /// [modelPackageConfig] Model package configuration. Requires `serverlessJobConfig`. See `modelPackageConfig` below.
  /// [outputDataConfig] Location of the output data from the training job. See `outputDataConfig` below.
  /// [profilerConfig] Configuration for the profiler. See `profilerConfig` below. Conflicts with `serverlessJobConfig`.
  /// [profilerRuleConfigurations] List of profiler rule configurations. Maximum of 20. See `profilerRuleConfigurations` below. Conflicts with `serverlessJobConfig`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [remoteDebugConfig] Configuration for remote debugging. See `remoteDebugConfig` below.
  /// [resourceConfig] Resources for the training job, including compute instances and storage volumes. See `resourceConfig` below.
  /// [retryStrategy] Number of times to retry the job if it fails. See `retryStrategy` below. Conflicts with `serverlessJobConfig`.
  /// [roleArn] ARN of the IAM role that SageMaker AI assumes to perform tasks on your behalf during training.
  /// [serverlessJobConfig] Configuration for serverless training jobs using foundation models. Conflicts with `algorithmSpecification`, `enableManagedSpotTraining`, `environment`, `retryStrategy`, `checkpointConfig`, `debugHookConfig`, `experimentConfig`, `profilerConfig`, `profilerRuleConfigurations`, and `tensorBoardOutputConfig`. See `serverlessJobConfig` below.
  /// [sessionChainingConfig] Configuration for session tag chaining. See `sessionChainingConfig` below.
  /// [stoppingCondition] Optional.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [tensorBoardOutputConfig] Configuration for TensorBoard output. See `tensorBoardOutputConfig` below. Conflicts with `serverlessJobConfig`.
  /// [timeouts] Optional.
  /// [trainingJobName] Name of the training job. Must be between 1 and 63 characters, start with a letter or number, and contain only letters, numbers, and hyphens.
  /// [vpcConfig] VPC configuration for the training job. See `vpcConfig` below.
  const TrainingJobState({
    this.algorithmSpecification,
    this.arn,
    this.checkpointConfig,
    this.debugHookConfig,
    this.debugRuleConfigurations,
    this.deleteModelPackagesOnDestroy,
    this.deleteVpcEnisOnDestroy,
    this.enableInterContainerTrafficEncryption,
    this.enableManagedSpotTraining,
    this.enableNetworkIsolation,
    this.environment,
    this.experimentConfig,
    this.hyperParameters,
    this.infraCheckConfig,
    this.inputDataConfigs,
    this.mlflowConfig,
    this.modelPackageConfig,
    this.outputDataConfig,
    this.profilerConfig,
    this.profilerRuleConfigurations,
    this.region,
    this.remoteDebugConfig,
    this.resourceConfig,
    this.retryStrategy,
    this.roleArn,
    this.serverlessJobConfig,
    this.sessionChainingConfig,
    this.stoppingCondition,
    this.tags,
    this.tagsAll,
    this.tensorBoardOutputConfig,
    this.timeouts,
    this.trainingJobName,
    this.vpcConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithmSpecification': ?pulumi.Input.mapOptionalInputValue<TrainingJobAlgorithmSpecification, Map<String, dynamic>>(algorithmSpecification, (value) => value.toMap()),
      'arn': ?arn,
      'checkpointConfig': ?pulumi.Input.mapOptionalInputValue<TrainingJobCheckpointConfig, Map<String, dynamic>>(checkpointConfig, (value) => value.toMap()),
      'debugHookConfig': ?pulumi.Input.mapOptionalInputValue<TrainingJobDebugHookConfig, Map<String, dynamic>>(debugHookConfig, (value) => value.toMap()),
      'debugRuleConfigurations': ?pulumi.Input.mapOptionalInputValue<List<TrainingJobDebugRuleConfiguration>, List<Map<String, dynamic>>>(debugRuleConfigurations, (value) => pulumi.Input.encodeList<TrainingJobDebugRuleConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deleteModelPackagesOnDestroy': ?deleteModelPackagesOnDestroy,
      'deleteVpcEnisOnDestroy': ?deleteVpcEnisOnDestroy,
      'enableInterContainerTrafficEncryption': ?enableInterContainerTrafficEncryption,
      'enableManagedSpotTraining': ?enableManagedSpotTraining,
      'enableNetworkIsolation': ?enableNetworkIsolation,
      'environment': ?environment,
      'experimentConfig': ?pulumi.Input.mapOptionalInputValue<TrainingJobExperimentConfig, Map<String, dynamic>>(experimentConfig, (value) => value.toMap()),
      'hyperParameters': ?hyperParameters,
      'infraCheckConfig': ?pulumi.Input.mapOptionalInputValue<TrainingJobInfraCheckConfig, Map<String, dynamic>>(infraCheckConfig, (value) => value.toMap()),
      'inputDataConfigs': ?pulumi.Input.mapOptionalInputValue<List<TrainingJobInputDataConfig>, List<Map<String, dynamic>>>(inputDataConfigs, (value) => pulumi.Input.encodeList<TrainingJobInputDataConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mlflowConfig': ?pulumi.Input.mapOptionalInputValue<TrainingJobMlflowConfig, Map<String, dynamic>>(mlflowConfig, (value) => value.toMap()),
      'modelPackageConfig': ?pulumi.Input.mapOptionalInputValue<TrainingJobModelPackageConfig, Map<String, dynamic>>(modelPackageConfig, (value) => value.toMap()),
      'outputDataConfig': ?pulumi.Input.mapOptionalInputValue<TrainingJobOutputDataConfig, Map<String, dynamic>>(outputDataConfig, (value) => value.toMap()),
      'profilerConfig': ?pulumi.Input.mapOptionalInputValue<TrainingJobProfilerConfig, Map<String, dynamic>>(profilerConfig, (value) => value.toMap()),
      'profilerRuleConfigurations': ?pulumi.Input.mapOptionalInputValue<List<TrainingJobProfilerRuleConfiguration>, List<Map<String, dynamic>>>(profilerRuleConfigurations, (value) => pulumi.Input.encodeList<TrainingJobProfilerRuleConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'remoteDebugConfig': ?pulumi.Input.mapOptionalInputValue<TrainingJobRemoteDebugConfig, Map<String, dynamic>>(remoteDebugConfig, (value) => value.toMap()),
      'resourceConfig': ?pulumi.Input.mapOptionalInputValue<TrainingJobResourceConfig, Map<String, dynamic>>(resourceConfig, (value) => value.toMap()),
      'retryStrategy': ?pulumi.Input.mapOptionalInputValue<TrainingJobRetryStrategy, Map<String, dynamic>>(retryStrategy, (value) => value.toMap()),
      'roleArn': ?roleArn,
      'serverlessJobConfig': ?pulumi.Input.mapOptionalInputValue<TrainingJobServerlessJobConfig, Map<String, dynamic>>(serverlessJobConfig, (value) => value.toMap()),
      'sessionChainingConfig': ?pulumi.Input.mapOptionalInputValue<TrainingJobSessionChainingConfig, Map<String, dynamic>>(sessionChainingConfig, (value) => value.toMap()),
      'stoppingCondition': ?pulumi.Input.mapOptionalInputValue<TrainingJobStoppingCondition, Map<String, dynamic>>(stoppingCondition, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'tensorBoardOutputConfig': ?pulumi.Input.mapOptionalInputValue<TrainingJobTensorBoardOutputConfig, Map<String, dynamic>>(tensorBoardOutputConfig, (value) => value.toMap()),
      'timeouts': ?pulumi.Input.mapOptionalInputValue<TrainingJobTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'trainingJobName': ?trainingJobName,
      'vpcConfig': ?pulumi.Input.mapOptionalInputValue<TrainingJobVpcConfig, Map<String, dynamic>>(vpcConfig, (value) => value.toMap()),
    };
  }

  factory TrainingJobState.fromMap(Map<String, dynamic> map) {
    return TrainingJobState(
      algorithmSpecification: (() { final guardedValue = map['algorithmSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrainingJobAlgorithmSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      checkpointConfig: (() { final guardedValue = map['checkpointConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrainingJobCheckpointConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      debugHookConfig: (() { final guardedValue = map['debugHookConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrainingJobDebugHookConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      debugRuleConfigurations: (() { final guardedValue = map['debugRuleConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TrainingJobDebugRuleConfiguration>(guardedValue, (value) => TrainingJobDebugRuleConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deleteModelPackagesOnDestroy: (() { final guardedValue = map['deleteModelPackagesOnDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deleteVpcEnisOnDestroy: (() { final guardedValue = map['deleteVpcEnisOnDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableInterContainerTrafficEncryption: (() { final guardedValue = map['enableInterContainerTrafficEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableManagedSpotTraining: (() { final guardedValue = map['enableManagedSpotTraining']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableNetworkIsolation: (() { final guardedValue = map['enableNetworkIsolation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      experimentConfig: (() { final guardedValue = map['experimentConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrainingJobExperimentConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hyperParameters: (() { final guardedValue = map['hyperParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      infraCheckConfig: (() { final guardedValue = map['infraCheckConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrainingJobInfraCheckConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inputDataConfigs: (() { final guardedValue = map['inputDataConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TrainingJobInputDataConfig>(guardedValue, (value) => TrainingJobInputDataConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      mlflowConfig: (() { final guardedValue = map['mlflowConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrainingJobMlflowConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      modelPackageConfig: (() { final guardedValue = map['modelPackageConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrainingJobModelPackageConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      outputDataConfig: (() { final guardedValue = map['outputDataConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrainingJobOutputDataConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      profilerConfig: (() { final guardedValue = map['profilerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrainingJobProfilerConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      profilerRuleConfigurations: (() { final guardedValue = map['profilerRuleConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TrainingJobProfilerRuleConfiguration>(guardedValue, (value) => TrainingJobProfilerRuleConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remoteDebugConfig: (() { final guardedValue = map['remoteDebugConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrainingJobRemoteDebugConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceConfig: (() { final guardedValue = map['resourceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrainingJobResourceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retryStrategy: (() { final guardedValue = map['retryStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrainingJobRetryStrategy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverlessJobConfig: (() { final guardedValue = map['serverlessJobConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrainingJobServerlessJobConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sessionChainingConfig: (() { final guardedValue = map['sessionChainingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrainingJobSessionChainingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stoppingCondition: (() { final guardedValue = map['stoppingCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrainingJobStoppingCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tensorBoardOutputConfig: (() { final guardedValue = map['tensorBoardOutputConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrainingJobTensorBoardOutputConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrainingJobTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trainingJobName: (() { final guardedValue = map['trainingJobName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcConfig: (() { final guardedValue = map['vpcConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrainingJobVpcConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
