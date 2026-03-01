// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipe_target_parameters_batch_job_parameters_array_properties.dart';
import 'pipe_target_parameters_batch_job_parameters_container_overrides.dart';
import 'pipe_target_parameters_batch_job_parameters_depends_on.dart';
import 'pipe_target_parameters_batch_job_parameters_retry_strategy.dart';

class PipeTargetParametersBatchJobParameters {
  /// The array properties for the submitted job, such as the size of the array. The array size can be between 2 and 10,000. If you specify array properties for a job, it becomes an array job. This parameter is used only if the target is an AWS Batch job. Detailed below.
  final PipeTargetParametersBatchJobParametersArrayProperties? arrayProperties;
  /// The overrides that are sent to a container. Detailed below.
  final PipeTargetParametersBatchJobParametersContainerOverrides? containerOverrides;
  /// A list of dependencies for the job. A job can depend upon a maximum of 20 jobs. You can specify a SEQUENTIAL type dependency without specifying a job ID for array jobs so that each child array job completes sequentially, starting at index 0. You can also specify an N_TO_N type dependency with a job ID for array jobs. In that case, each index child of this job must wait for the corresponding index child of each dependency to complete before it can begin. Detailed below.
  final List<PipeTargetParametersBatchJobParametersDependsOn>? dependsOns;
  /// The job definition used by this job. This value can be one of name, name:revision, or the Amazon Resource Name (ARN) for the job definition. If name is specified without a revision then the latest active revision is used.
  final String jobDefinition;
  /// The name of the job. It can be up to 128 letters long.
  final String jobName;
  /// Additional parameters passed to the job that replace parameter substitution placeholders that are set in the job definition. Parameters are specified as a key and value pair mapping. Parameters included here override any corresponding parameter defaults from the job definition. Detailed below.
  final Map<String, String>? parameters;
  /// The retry strategy to use for failed jobs. When a retry strategy is specified here, it overrides the retry strategy defined in the job definition. Detailed below.
  final PipeTargetParametersBatchJobParametersRetryStrategy? retryStrategy;

  /// Creates a new [PipeTargetParametersBatchJobParameters].
  /// [arrayProperties] The array properties for the submitted job, such as the size of the array. The array size can be between 2 and 10,000. If you specify array properties for a job, it becomes an array job. This parameter is used only if the target is an AWS Batch job. Detailed below.
  /// [containerOverrides] The overrides that are sent to a container. Detailed below.
  /// [dependsOns] A list of dependencies for the job. A job can depend upon a maximum of 20 jobs. You can specify a SEQUENTIAL type dependency without specifying a job ID for array jobs so that each child array job completes sequentially, starting at index 0. You can also specify an N_TO_N type dependency with a job ID for array jobs. In that case, each index child of this job must wait for the corresponding index child of each dependency to complete before it can begin. Detailed below.
  /// [jobDefinition] The job definition used by this job. This value can be one of name, name:revision, or the Amazon Resource Name (ARN) for the job definition. If name is specified without a revision then the latest active revision is used.
  /// [jobName] The name of the job. It can be up to 128 letters long.
  /// [parameters] Additional parameters passed to the job that replace parameter substitution placeholders that are set in the job definition. Parameters are specified as a key and value pair mapping. Parameters included here override any corresponding parameter defaults from the job definition. Detailed below.
  /// [retryStrategy] The retry strategy to use for failed jobs. When a retry strategy is specified here, it overrides the retry strategy defined in the job definition. Detailed below.
  PipeTargetParametersBatchJobParameters({
    this.arrayProperties,
    this.containerOverrides,
    this.dependsOns,
    required this.jobDefinition,
    required this.jobName,
    this.parameters,
    this.retryStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arrayProperties': ?arrayProperties == null ? null : arrayProperties!.toMap(),
      'containerOverrides': ?containerOverrides == null ? null : containerOverrides!.toMap(),
      'dependsOns': ?dependsOns == null ? null : pulumi.Input.encodeList<PipeTargetParametersBatchJobParametersDependsOn, Map<String, dynamic>>(dependsOns!, (value) => value.toMap()),
      'jobDefinition': jobDefinition,
      'jobName': jobName,
      'parameters': ?parameters,
      'retryStrategy': ?retryStrategy == null ? null : retryStrategy!.toMap(),
    };
  }

  factory PipeTargetParametersBatchJobParameters.fromMap(Map<String, dynamic> map) {
    return PipeTargetParametersBatchJobParameters(
      arrayProperties: map['arrayProperties'] == null ? null : PipeTargetParametersBatchJobParametersArrayProperties.fromMap((map['arrayProperties'] as Map).cast<String, dynamic>()),
      containerOverrides: map['containerOverrides'] == null ? null : PipeTargetParametersBatchJobParametersContainerOverrides.fromMap((map['containerOverrides'] as Map).cast<String, dynamic>()),
      dependsOns: map['dependsOns'] == null ? null : pulumi.Input.decodeList<PipeTargetParametersBatchJobParametersDependsOn>(map['dependsOns'], (value) => PipeTargetParametersBatchJobParametersDependsOn.fromMap((value as Map).cast<String, dynamic>())),
      jobDefinition: map['jobDefinition'] as String,
      jobName: map['jobName'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
      retryStrategy: map['retryStrategy'] == null ? null : PipeTargetParametersBatchJobParametersRetryStrategy.fromMap((map['retryStrategy'] as Map).cast<String, dynamic>()),
    );
  }
}

