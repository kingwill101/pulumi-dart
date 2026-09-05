// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_task_execution_overrides_container_override_environment.dart';
import 'get_task_execution_overrides_container_override_resource_requirement.dart';

class GetTaskExecutionOverridesContainerOverride {
  /// Command to send to the container that overrides the default command from the Docker image or the task definition.
  final pulumi.Input<List<String>?>? commands;
  /// Number of cpu units reserved for the container, instead of the default value from the task definition.
  final pulumi.Input<int?>? cpu;
  /// Environment variables to send to the container. You can add new environment variables, which are added to the container at launch, or you can override the existing environment variables from the Docker image or the task definition. See below.
  final pulumi.Input<List<GetTaskExecutionOverridesContainerOverrideEnvironment>?>? environments;
  /// Hard limit (in MiB) of memory to present to the container, instead of the default value from the task definition. If your container attempts to exceed the memory specified here, the container is killed.
  final pulumi.Input<int?>? memory;
  /// Soft limit (in MiB) of memory to reserve for the container, instead of the default value from the task definition.
  final pulumi.Input<int?>? memoryReservation;
  /// Name of the container that receives the override. This parameter is required if any override is specified.
  final pulumi.Input<String> name;
  /// Type and amount of a resource to assign to a container, instead of the default value from the task definition. The only supported resource is a GPU. See below.
  final pulumi.Input<List<GetTaskExecutionOverridesContainerOverrideResourceRequirement>?>? resourceRequirements;

  /// Creates a new [GetTaskExecutionOverridesContainerOverride].
  /// [commands] Command to send to the container that overrides the default command from the Docker image or the task definition.
  /// [cpu] Number of cpu units reserved for the container, instead of the default value from the task definition.
  /// [environments] Environment variables to send to the container. You can add new environment variables, which are added to the container at launch, or you can override the existing environment variables from the Docker image or the task definition. See below.
  /// [memory] Hard limit (in MiB) of memory to present to the container, instead of the default value from the task definition. If your container attempts to exceed the memory specified here, the container is killed.
  /// [memoryReservation] Soft limit (in MiB) of memory to reserve for the container, instead of the default value from the task definition.
  /// [name] Name of the container that receives the override. This parameter is required if any override is specified.
  /// [resourceRequirements] Type and amount of a resource to assign to a container, instead of the default value from the task definition. The only supported resource is a GPU. See below.
  const GetTaskExecutionOverridesContainerOverride({
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
      'environments': ?pulumi.Input.mapOptionalInputValue<List<GetTaskExecutionOverridesContainerOverrideEnvironment>, List<Map<String, dynamic>>>(environments, (value) => pulumi.Input.encodeList<GetTaskExecutionOverridesContainerOverrideEnvironment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'memory': ?memory,
      'memoryReservation': ?memoryReservation,
      'name': name,
      'resourceRequirements': ?pulumi.Input.mapOptionalInputValue<List<GetTaskExecutionOverridesContainerOverrideResourceRequirement>, List<Map<String, dynamic>>>(resourceRequirements, (value) => pulumi.Input.encodeList<GetTaskExecutionOverridesContainerOverrideResourceRequirement, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetTaskExecutionOverridesContainerOverride.fromMap(Map<String, dynamic> map) {
    return GetTaskExecutionOverridesContainerOverride(
      commands: (() { final guardedValue = map['commands']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      environments: (() { final guardedValue = map['environments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetTaskExecutionOverridesContainerOverrideEnvironment>(guardedValue, (value) => GetTaskExecutionOverridesContainerOverrideEnvironment.fromMap((value as Map).cast<String, dynamic>()))); })(),
      memory: (() { final guardedValue = map['memory']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      memoryReservation: (() { final guardedValue = map['memoryReservation']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceRequirements: (() { final guardedValue = map['resourceRequirements']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetTaskExecutionOverridesContainerOverrideResourceRequirement>(guardedValue, (value) => GetTaskExecutionOverridesContainerOverrideResourceRequirement.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
