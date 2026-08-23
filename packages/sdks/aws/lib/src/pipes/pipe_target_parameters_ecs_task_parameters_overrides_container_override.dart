// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipe_target_parameters_ecs_task_parameters_overrides_container_override_environment.dart';
import 'pipe_target_parameters_ecs_task_parameters_overrides_container_override_environment_file.dart';
import 'pipe_target_parameters_ecs_task_parameters_overrides_container_override_resource_requirement.dart';

class PipeTargetParametersEcsTaskParametersOverridesContainerOverride {
  /// List of commands to send to the container that overrides the default command from the Docker image or the task definition. You must also specify a container name.
  final pulumi.Input<List<String>>? commands;
  /// The number of cpu units reserved for the container, instead of the default value from the task definition. You must also specify a container name.
  final pulumi.Input<int>? cpu;
  /// A list of files containing the environment variables to pass to a container, instead of the value from the container definition. Detailed below.
  final pulumi.Input<List<PipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironmentFile>>? environmentFiles;
  /// The environment variables to send to the container. You can add new environment variables, which are added to the container at launch, or you can override the existing environment variables from the Docker image or the task definition. You must also specify a container name. Detailed below.
  final pulumi.Input<List<PipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironment>>? environments;
  /// The hard limit (in MiB) of memory to present to the container, instead of the default value from the task definition. If your container attempts to exceed the memory specified here, the container is killed. You must also specify a container name.
  final pulumi.Input<int>? memory;
  /// The soft limit (in MiB) of memory to reserve for the container, instead of the default value from the task definition. You must also specify a container name.
  final pulumi.Input<int>? memoryReservation;
  /// Name of the pipe. If omitted, the provider will assign a random, unique name. Conflicts with `namePrefix`.
  final pulumi.Input<String>? name;
  /// The type and amount of a resource to assign to a container, instead of the default value from the task definition. The only supported resource is a GPU. Detailed below.
  final pulumi.Input<List<PipeTargetParametersEcsTaskParametersOverridesContainerOverrideResourceRequirement>>? resourceRequirements;

  /// Creates a new [PipeTargetParametersEcsTaskParametersOverridesContainerOverride].
  /// [commands] List of commands to send to the container that overrides the default command from the Docker image or the task definition. You must also specify a container name.
  /// [cpu] The number of cpu units reserved for the container, instead of the default value from the task definition. You must also specify a container name.
  /// [environmentFiles] A list of files containing the environment variables to pass to a container, instead of the value from the container definition. Detailed below.
  /// [environments] The environment variables to send to the container. You can add new environment variables, which are added to the container at launch, or you can override the existing environment variables from the Docker image or the task definition. You must also specify a container name. Detailed below.
  /// [memory] The hard limit (in MiB) of memory to present to the container, instead of the default value from the task definition. If your container attempts to exceed the memory specified here, the container is killed. You must also specify a container name.
  /// [memoryReservation] The soft limit (in MiB) of memory to reserve for the container, instead of the default value from the task definition. You must also specify a container name.
  /// [name] Name of the pipe. If omitted, the provider will assign a random, unique name. Conflicts with `namePrefix`.
  /// [resourceRequirements] The type and amount of a resource to assign to a container, instead of the default value from the task definition. The only supported resource is a GPU. Detailed below.
  const PipeTargetParametersEcsTaskParametersOverridesContainerOverride({
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
      'environmentFiles': ?pulumi.Input.mapOptionalInputValue<List<PipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironmentFile>, List<Map<String, dynamic>>>(environmentFiles, (value) => pulumi.Input.encodeList<PipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironmentFile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'environments': ?pulumi.Input.mapOptionalInputValue<List<PipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironment>, List<Map<String, dynamic>>>(environments, (value) => pulumi.Input.encodeList<PipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'memory': ?memory,
      'memoryReservation': ?memoryReservation,
      'name': ?name,
      'resourceRequirements': ?pulumi.Input.mapOptionalInputValue<List<PipeTargetParametersEcsTaskParametersOverridesContainerOverrideResourceRequirement>, List<Map<String, dynamic>>>(resourceRequirements, (value) => pulumi.Input.encodeList<PipeTargetParametersEcsTaskParametersOverridesContainerOverrideResourceRequirement, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PipeTargetParametersEcsTaskParametersOverridesContainerOverride.fromMap(Map<String, dynamic> map) {
    return PipeTargetParametersEcsTaskParametersOverridesContainerOverride(
      commands: (() { final guardedValue = map['commands']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      environmentFiles: (() { final guardedValue = map['environmentFiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironmentFile>(guardedValue, (value) => PipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironmentFile.fromMap((value as Map).cast<String, dynamic>()))); })(),
      environments: (() { final guardedValue = map['environments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironment>(guardedValue, (value) => PipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironment.fromMap((value as Map).cast<String, dynamic>()))); })(),
      memory: (() { final guardedValue = map['memory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      memoryReservation: (() { final guardedValue = map['memoryReservation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceRequirements: (() { final guardedValue = map['resourceRequirements']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PipeTargetParametersEcsTaskParametersOverridesContainerOverrideResourceRequirement>(guardedValue, (value) => PipeTargetParametersEcsTaskParametersOverridesContainerOverrideResourceRequirement.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
