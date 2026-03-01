// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_task_execution_overrides_container_override_environment.dart';
import 'get_task_execution_overrides_container_override_resource_requirement.dart';

class GetTaskExecutionOverridesContainerOverride {
  /// The command to send to the container that overrides the default command from the Docker image or the task definition.
  final List<String>? commands;

  /// The number of cpu units reserved for the container, instead of the default value from the task definition.
  final int? cpu;

  /// The environment variables to send to the container. You can add new environment variables, which are added to the container at launch, or you can override the existing environment variables from the Docker image or the task definition. See below.
  final List<GetTaskExecutionOverridesContainerOverrideEnvironment>?
  environments;

  /// The hard limit (in MiB) of memory to present to the container, instead of the default value from the task definition. If your container attempts to exceed the memory specified here, the container is killed.
  final int? memory;

  /// The soft limit (in MiB) of memory to reserve for the container, instead of the default value from the task definition.
  final int? memoryReservation;

  /// The name of the container that receives the override. This parameter is required if any override is specified.
  final String name;

  /// The type and amount of a resource to assign to a container, instead of the default value from the task definition. The only supported resource is a GPU. See below.
  final List<GetTaskExecutionOverridesContainerOverrideResourceRequirement>?
  resourceRequirements;

  /// Creates a new [GetTaskExecutionOverridesContainerOverride].
  /// [commands] The command to send to the container that overrides the default command from the Docker image or the task definition.
  /// [cpu] The number of cpu units reserved for the container, instead of the default value from the task definition.
  /// [environments] The environment variables to send to the container. You can add new environment variables, which are added to the container at launch, or you can override the existing environment variables from the Docker image or the task definition. See below.
  /// [memory] The hard limit (in MiB) of memory to present to the container, instead of the default value from the task definition. If your container attempts to exceed the memory specified here, the container is killed.
  /// [memoryReservation] The soft limit (in MiB) of memory to reserve for the container, instead of the default value from the task definition.
  /// [name] The name of the container that receives the override. This parameter is required if any override is specified.
  /// [resourceRequirements] The type and amount of a resource to assign to a container, instead of the default value from the task definition. The only supported resource is a GPU. See below.
  GetTaskExecutionOverridesContainerOverride({
    this.commands,
    this.cpu,
    this.environments,
    this.memory,
    this.memoryReservation,
    required this.name,
    this.resourceRequirements,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commands': ?commands,
      'cpu': ?cpu,
      'environments': ?environments == null
          ? null
          : pulumi.Input.encodeList<
              GetTaskExecutionOverridesContainerOverrideEnvironment,
              Map<String, dynamic>
            >(environments!, (value) => value.toMap()),
      'memory': ?memory,
      'memoryReservation': ?memoryReservation,
      'name': name,
      'resourceRequirements': ?resourceRequirements == null
          ? null
          : pulumi.Input.encodeList<
              GetTaskExecutionOverridesContainerOverrideResourceRequirement,
              Map<String, dynamic>
            >(resourceRequirements!, (value) => value.toMap()),
    };
  }

  factory GetTaskExecutionOverridesContainerOverride.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetTaskExecutionOverridesContainerOverride(
      commands: map['commands'] == null
          ? null
          : (map['commands'] as List).cast<String>(),
      cpu: map['cpu'] == null ? null : map['cpu'] as int,
      environments: map['environments'] == null
          ? null
          : pulumi.Input.decodeList<
              GetTaskExecutionOverridesContainerOverrideEnvironment
            >(
              map['environments'],
              (value) =>
                  GetTaskExecutionOverridesContainerOverrideEnvironment.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      memory: map['memory'] == null ? null : map['memory'] as int,
      memoryReservation: map['memoryReservation'] == null
          ? null
          : map['memoryReservation'] as int,
      name: map['name'] as String,
      resourceRequirements: map['resourceRequirements'] == null
          ? null
          : pulumi.Input.decodeList<
              GetTaskExecutionOverridesContainerOverrideResourceRequirement
            >(
              map['resourceRequirements'],
              (value) =>
                  GetTaskExecutionOverridesContainerOverrideResourceRequirement.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
