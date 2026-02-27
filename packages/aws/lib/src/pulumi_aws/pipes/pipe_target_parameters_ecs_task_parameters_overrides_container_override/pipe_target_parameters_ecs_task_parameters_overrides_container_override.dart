// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../pipe_target_parameters_ecs_task_parameters_overrides_container_override_environment/pipe_target_parameters_ecs_task_parameters_overrides_container_override_environment.dart';
import '../pipe_target_parameters_ecs_task_parameters_overrides_container_override_environment_file/pipe_target_parameters_ecs_task_parameters_overrides_container_override_environment_file.dart';
import '../pipe_target_parameters_ecs_task_parameters_overrides_container_override_resource_requirement/pipe_target_parameters_ecs_task_parameters_overrides_container_override_resource_requirement.dart';

class PipeTargetParametersEcsTaskParametersOverridesContainerOverride {
  /// List of commands to send to the container that overrides the default command from the Docker image or the task definition. You must also specify a container name.
  final List<String>? commands;

  /// The number of cpu units reserved for the container, instead of the default value from the task definition. You must also specify a container name.
  final int? cpu;

  /// A list of files containing the environment variables to pass to a container, instead of the value from the container definition. Detailed below.
  final List<
          PipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironmentFile>?
      environmentFiles;

  /// The environment variables to send to the container. You can add new environment variables, which are added to the container at launch, or you can override the existing environment variables from the Docker image or the task definition. You must also specify a container name. Detailed below.
  final List<
          PipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironment>?
      environments;

  /// The hard limit (in MiB) of memory to present to the container, instead of the default value from the task definition. If your container attempts to exceed the memory specified here, the container is killed. You must also specify a container name.
  final int? memory;

  /// The soft limit (in MiB) of memory to reserve for the container, instead of the default value from the task definition. You must also specify a container name.
  final int? memoryReservation;

  /// Name of the pipe. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  final String? name;

  /// The type and amount of a resource to assign to a container, instead of the default value from the task definition. The only supported resource is a GPU. Detailed below.
  final List<
          PipeTargetParametersEcsTaskParametersOverridesContainerOverrideResourceRequirement>?
      resourceRequirements;

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
    final map = <String, dynamic>{};
    final commandsValue = commands;
    if (commandsValue != null) {
      map['commands'] = commandsValue;
    }
    final cpuValue = cpu;
    if (cpuValue != null) {
      map['cpu'] = cpuValue;
    }
    final environmentFilesValue = environmentFiles;
    if (environmentFilesValue != null) {
      map['environmentFiles'] = Input.encodeList<
          PipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironmentFile,
          Map<String,
              dynamic>>(environmentFilesValue, (value) => value.toMap());
    }
    final environmentsValue = environments;
    if (environmentsValue != null) {
      map['environments'] = Input.encodeList<
          PipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironment,
          Map<String, dynamic>>(environmentsValue, (value) => value.toMap());
    }
    final memoryValue = memory;
    if (memoryValue != null) {
      map['memory'] = memoryValue;
    }
    final memoryReservationValue = memoryReservation;
    if (memoryReservationValue != null) {
      map['memoryReservation'] = memoryReservationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final resourceRequirementsValue = resourceRequirements;
    if (resourceRequirementsValue != null) {
      map['resourceRequirements'] = Input.encodeList<
          PipeTargetParametersEcsTaskParametersOverridesContainerOverrideResourceRequirement,
          Map<String,
              dynamic>>(resourceRequirementsValue, (value) => value.toMap());
    }
    return map;
  }

  factory PipeTargetParametersEcsTaskParametersOverridesContainerOverride.fromMap(
      Map<String, dynamic> map) {
    return PipeTargetParametersEcsTaskParametersOverridesContainerOverride(
      commands: map['commands'] == null
          ? null
          : (map['commands'] as List).cast<String>(),
      cpu: map['cpu'] == null ? null : map['cpu'] as int,
      environmentFiles: map['environmentFiles'] == null
          ? null
          : Input.decodeList<
                  PipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironmentFile>(
              map['environmentFiles'],
              (value) =>
                  PipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironmentFile
                      .fromMap((value as Map).cast<String, dynamic>())),
      environments: map['environments'] == null
          ? null
          : Input.decodeList<
                  PipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironment>(
              map['environments'],
              (value) =>
                  PipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironment
                      .fromMap((value as Map).cast<String, dynamic>())),
      memory: map['memory'] == null ? null : map['memory'] as int,
      memoryReservation: map['memoryReservation'] == null
          ? null
          : map['memoryReservation'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      resourceRequirements: map['resourceRequirements'] == null
          ? null
          : Input.decodeList<
                  PipeTargetParametersEcsTaskParametersOverridesContainerOverrideResourceRequirement>(
              map['resourceRequirements'],
              (value) =>
                  PipeTargetParametersEcsTaskParametersOverridesContainerOverrideResourceRequirement
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
