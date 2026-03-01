// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipe_target_parameters_ecs_task_parameters_overrides_container_override_environment.dart';
import 'pipe_target_parameters_ecs_task_parameters_overrides_container_override_environment_file.dart';
import 'pipe_target_parameters_ecs_task_parameters_overrides_container_override_resource_requirement.dart';

class PipeTargetParametersEcsTaskParametersOverridesContainerOverride {
  /// List of commands to send to the container that overrides the default command from the Docker image or the task definition. You must also specify a container name.
  final List<String>? commands;

  /// The number of cpu units reserved for the container, instead of the default value from the task definition. You must also specify a container name.
  final int? cpu;

  /// A list of files containing the environment variables to pass to a container, instead of the value from the container definition. Detailed below.
  final List<
    PipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironmentFile
  >?
  environmentFiles;

  /// The environment variables to send to the container. You can add new environment variables, which are added to the container at launch, or you can override the existing environment variables from the Docker image or the task definition. You must also specify a container name. Detailed below.
  final List<
    PipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironment
  >?
  environments;

  /// The hard limit (in MiB) of memory to present to the container, instead of the default value from the task definition. If your container attempts to exceed the memory specified here, the container is killed. You must also specify a container name.
  final int? memory;

  /// The soft limit (in MiB) of memory to reserve for the container, instead of the default value from the task definition. You must also specify a container name.
  final int? memoryReservation;

  /// Name of the pipe. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  final String? name;

  /// The type and amount of a resource to assign to a container, instead of the default value from the task definition. The only supported resource is a GPU. Detailed below.
  final List<
    PipeTargetParametersEcsTaskParametersOverridesContainerOverrideResourceRequirement
  >?
  resourceRequirements;

  /// Creates a new [PipeTargetParametersEcsTaskParametersOverridesContainerOverride].
  /// [commands] List of commands to send to the container that overrides the default command from the Docker image or the task definition. You must also specify a container name.
  /// [cpu] The number of cpu units reserved for the container, instead of the default value from the task definition. You must also specify a container name.
  /// [environmentFiles] A list of files containing the environment variables to pass to a container, instead of the value from the container definition. Detailed below.
  /// [environments] The environment variables to send to the container. You can add new environment variables, which are added to the container at launch, or you can override the existing environment variables from the Docker image or the task definition. You must also specify a container name. Detailed below.
  /// [memory] The hard limit (in MiB) of memory to present to the container, instead of the default value from the task definition. If your container attempts to exceed the memory specified here, the container is killed. You must also specify a container name.
  /// [memoryReservation] The soft limit (in MiB) of memory to reserve for the container, instead of the default value from the task definition. You must also specify a container name.
  /// [name] Name of the pipe. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  /// [resourceRequirements] The type and amount of a resource to assign to a container, instead of the default value from the task definition. The only supported resource is a GPU. Detailed below.
  PipeTargetParametersEcsTaskParametersOverridesContainerOverride({
    this.commands,
    this.cpu,
    this.environmentFiles,
    this.environments,
    this.memory,
    this.memoryReservation,
    this.name,
    this.resourceRequirements,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commands': ?commands,
      'cpu': ?cpu,
      'environmentFiles': ?environmentFiles == null
          ? null
          : pulumi.Input.encodeList<
              PipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironmentFile,
              Map<String, dynamic>
            >(environmentFiles!, (value) => value.toMap()),
      'environments': ?environments == null
          ? null
          : pulumi.Input.encodeList<
              PipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironment,
              Map<String, dynamic>
            >(environments!, (value) => value.toMap()),
      'memory': ?memory,
      'memoryReservation': ?memoryReservation,
      'name': ?name,
      'resourceRequirements': ?resourceRequirements == null
          ? null
          : pulumi.Input.encodeList<
              PipeTargetParametersEcsTaskParametersOverridesContainerOverrideResourceRequirement,
              Map<String, dynamic>
            >(resourceRequirements!, (value) => value.toMap()),
    };
  }

  factory PipeTargetParametersEcsTaskParametersOverridesContainerOverride.fromMap(
    Map<String, dynamic> map,
  ) {
    return PipeTargetParametersEcsTaskParametersOverridesContainerOverride(
      commands: map['commands'] == null
          ? null
          : (map['commands'] as List).cast<String>(),
      cpu: map['cpu'] == null ? null : map['cpu'] as int,
      environmentFiles: map['environmentFiles'] == null
          ? null
          : pulumi.Input.decodeList<
              PipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironmentFile
            >(
              map['environmentFiles'],
              (value) =>
                  PipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironmentFile.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      environments: map['environments'] == null
          ? null
          : pulumi.Input.decodeList<
              PipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironment
            >(
              map['environments'],
              (value) =>
                  PipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironment.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      memory: map['memory'] == null ? null : map['memory'] as int,
      memoryReservation: map['memoryReservation'] == null
          ? null
          : map['memoryReservation'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      resourceRequirements: map['resourceRequirements'] == null
          ? null
          : pulumi.Input.decodeList<
              PipeTargetParametersEcsTaskParametersOverridesContainerOverrideResourceRequirement
            >(
              map['resourceRequirements'],
              (value) =>
                  PipeTargetParametersEcsTaskParametersOverridesContainerOverrideResourceRequirement.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
