// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipe_target_parameters_batch_job_parameters_container_overrides_environment.dart';
import 'pipe_target_parameters_batch_job_parameters_container_overrides_resource_requirement.dart';

class PipeTargetParametersBatchJobParametersContainerOverrides {
  /// List of commands to send to the container that overrides the default command from the Docker image or the task definition.
  final pulumi.Input<List<String>?>? commands;
  /// Environment variables to send to the container. You can add new environment variables, which are added to the container at launch, or you can override the existing environment variables from the Docker image or the task definition. Environment variables cannot start with " AWS Batch ". This naming convention is reserved for variables that AWS Batch sets. See `target_parameters.batch_job_parameters.container_overrides.environment` Block for details.
  final pulumi.Input<List<PipeTargetParametersBatchJobParametersContainerOverridesEnvironment>?>? environments;
  /// Instance type to use for a multi-node parallel job. This parameter isn't applicable to single-node container jobs or jobs that run on Fargate resources, and shouldn't be provided.
  final pulumi.Input<String?>? instanceType;
  /// Type and amount of resources to assign to a container. This overrides the settings in the job definition. The supported resources include GPU, MEMORY, and VCPU. See `target_parameters.batch_job_parameters.container_overrides.resource_requirement` Block for details.
  final pulumi.Input<List<PipeTargetParametersBatchJobParametersContainerOverridesResourceRequirement>?>? resourceRequirements;

  /// Creates a new [PipeTargetParametersBatchJobParametersContainerOverrides].
  /// [commands] List of commands to send to the container that overrides the default command from the Docker image or the task definition.
  /// [environments] Environment variables to send to the container. You can add new environment variables, which are added to the container at launch, or you can override the existing environment variables from the Docker image or the task definition. Environment variables cannot start with " AWS Batch ". This naming convention is reserved for variables that AWS Batch sets. See `target_parameters.batch_job_parameters.container_overrides.environment` Block for details.
  /// [instanceType] Instance type to use for a multi-node parallel job. This parameter isn't applicable to single-node container jobs or jobs that run on Fargate resources, and shouldn't be provided.
  /// [resourceRequirements] Type and amount of resources to assign to a container. This overrides the settings in the job definition. The supported resources include GPU, MEMORY, and VCPU. See `target_parameters.batch_job_parameters.container_overrides.resource_requirement` Block for details.
  const PipeTargetParametersBatchJobParametersContainerOverrides({
    this.commands,
    this.environments,
    this.instanceType,
    this.resourceRequirements,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commands': ?commands,
      'environments': ?pulumi.Input.mapOptionalInputValue<List<PipeTargetParametersBatchJobParametersContainerOverridesEnvironment>, List<Map<String, dynamic>>>(environments, (value) => pulumi.Input.encodeList<PipeTargetParametersBatchJobParametersContainerOverridesEnvironment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceType': ?instanceType,
      'resourceRequirements': ?pulumi.Input.mapOptionalInputValue<List<PipeTargetParametersBatchJobParametersContainerOverridesResourceRequirement>, List<Map<String, dynamic>>>(resourceRequirements, (value) => pulumi.Input.encodeList<PipeTargetParametersBatchJobParametersContainerOverridesResourceRequirement, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PipeTargetParametersBatchJobParametersContainerOverrides.fromMap(Map<String, dynamic> map) {
    return PipeTargetParametersBatchJobParametersContainerOverrides(
      commands: (() { final guardedValue = map['commands']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      environments: (() { final guardedValue = map['environments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PipeTargetParametersBatchJobParametersContainerOverridesEnvironment>(guardedValue, (value) => PipeTargetParametersBatchJobParametersContainerOverridesEnvironment.fromMap((value as Map).cast<String, dynamic>()))); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceRequirements: (() { final guardedValue = map['resourceRequirements']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PipeTargetParametersBatchJobParametersContainerOverridesResourceRequirement>(guardedValue, (value) => PipeTargetParametersBatchJobParametersContainerOverridesResourceRequirement.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
