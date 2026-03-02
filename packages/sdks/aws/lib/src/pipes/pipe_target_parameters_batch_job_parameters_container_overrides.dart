// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipe_target_parameters_batch_job_parameters_container_overrides_environment.dart';
import 'pipe_target_parameters_batch_job_parameters_container_overrides_resource_requirement.dart';

class PipeTargetParametersBatchJobParametersContainerOverrides {
  /// List of commands to send to the container that overrides the default command from the Docker image or the task definition. You must also specify a container name.
  final pulumi.Input<List<String>>? commands;
  /// The environment variables to send to the container. You can add new environment variables, which are added to the container at launch, or you can override the existing environment variables from the Docker image or the task definition. You must also specify a container name. Detailed below.
  final pulumi.Input<List<PipeTargetParametersBatchJobParametersContainerOverridesEnvironment>>? environments;
  /// The instance type to use for a multi-node parallel job. This parameter isn't applicable to single-node container jobs or jobs that run on Fargate resources, and shouldn't be provided.
  final pulumi.Input<String>? instanceType;
  /// The type and amount of a resource to assign to a container, instead of the default value from the task definition. The only supported resource is a GPU. Detailed below.
  final pulumi.Input<List<PipeTargetParametersBatchJobParametersContainerOverridesResourceRequirement>>? resourceRequirements;

  /// Creates a new [PipeTargetParametersBatchJobParametersContainerOverrides].
  /// [commands] List of commands to send to the container that overrides the default command from the Docker image or the task definition. You must also specify a container name.
  /// [environments] The environment variables to send to the container. You can add new environment variables, which are added to the container at launch, or you can override the existing environment variables from the Docker image or the task definition. You must also specify a container name. Detailed below.
  /// [instanceType] The instance type to use for a multi-node parallel job. This parameter isn't applicable to single-node container jobs or jobs that run on Fargate resources, and shouldn't be provided.
  /// [resourceRequirements] The type and amount of a resource to assign to a container, instead of the default value from the task definition. The only supported resource is a GPU. Detailed below.
  PipeTargetParametersBatchJobParametersContainerOverrides({
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
      commands: map['commands'] == null ? null : ((map['commands'] as List).cast<String>()).input(),
      environments: map['environments'] == null ? null : (pulumi.Input.decodeList<PipeTargetParametersBatchJobParametersContainerOverridesEnvironment>(map['environments'], (value) => PipeTargetParametersBatchJobParametersContainerOverridesEnvironment.fromMap((value as Map).cast<String, dynamic>()))).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType'] as String).input(),
      resourceRequirements: map['resourceRequirements'] == null ? null : (pulumi.Input.decodeList<PipeTargetParametersBatchJobParametersContainerOverridesResourceRequirement>(map['resourceRequirements'], (value) => PipeTargetParametersBatchJobParametersContainerOverridesResourceRequirement.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

