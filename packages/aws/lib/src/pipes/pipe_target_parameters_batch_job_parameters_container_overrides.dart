// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipe_target_parameters_batch_job_parameters_container_overrides_environment.dart';
import 'pipe_target_parameters_batch_job_parameters_container_overrides_resource_requirement.dart';

class PipeTargetParametersBatchJobParametersContainerOverrides {
  /// List of commands to send to the container that overrides the default command from the Docker image or the task definition. You must also specify a container name.
  final List<String>? commands;

  /// The environment variables to send to the container. You can add new environment variables, which are added to the container at launch, or you can override the existing environment variables from the Docker image or the task definition. You must also specify a container name. Detailed below.
  final List<
          PipeTargetParametersBatchJobParametersContainerOverridesEnvironment>?
      environments;

  /// The instance type to use for a multi-node parallel job. This parameter isn't applicable to single-node container jobs or jobs that run on Fargate resources, and shouldn't be provided.
  final String? instanceType;

  /// The type and amount of a resource to assign to a container, instead of the default value from the task definition. The only supported resource is a GPU. Detailed below.
  final List<
          PipeTargetParametersBatchJobParametersContainerOverridesResourceRequirement>?
      resourceRequirements;

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
    final map = <String, dynamic>{};
    final commandsValue = commands;
    if (commandsValue != null) {
      map['commands'] = commandsValue;
    }
    final environmentsValue = environments;
    if (environmentsValue != null) {
      map['environments'] = pulumi.Input.encodeList<
          PipeTargetParametersBatchJobParametersContainerOverridesEnvironment,
          Map<String, dynamic>>(environmentsValue, (value) => value.toMap());
    }
    final instanceTypeValue = instanceType;
    if (instanceTypeValue != null) {
      map['instanceType'] = instanceTypeValue;
    }
    final resourceRequirementsValue = resourceRequirements;
    if (resourceRequirementsValue != null) {
      map['resourceRequirements'] = pulumi.Input.encodeList<
          PipeTargetParametersBatchJobParametersContainerOverridesResourceRequirement,
          Map<String,
              dynamic>>(resourceRequirementsValue, (value) => value.toMap());
    }
    return map;
  }

  factory PipeTargetParametersBatchJobParametersContainerOverrides.fromMap(
      Map<String, dynamic> map) {
    return PipeTargetParametersBatchJobParametersContainerOverrides(
      commands: map['commands'] == null
          ? null
          : (map['commands'] as List).cast<String>(),
      environments: map['environments'] == null
          ? null
          : pulumi.Input.decodeList<
                  PipeTargetParametersBatchJobParametersContainerOverridesEnvironment>(
              map['environments'],
              (value) =>
                  PipeTargetParametersBatchJobParametersContainerOverridesEnvironment
                      .fromMap((value as Map).cast<String, dynamic>())),
      instanceType:
          map['instanceType'] == null ? null : map['instanceType'] as String,
      resourceRequirements: map['resourceRequirements'] == null
          ? null
          : pulumi.Input.decodeList<
                  PipeTargetParametersBatchJobParametersContainerOverridesResourceRequirement>(
              map['resourceRequirements'],
              (value) =>
                  PipeTargetParametersBatchJobParametersContainerOverridesResourceRequirement
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
