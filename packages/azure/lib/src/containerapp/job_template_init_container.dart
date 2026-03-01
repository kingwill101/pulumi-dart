// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_template_init_container_env.dart';
import 'job_template_init_container_volume_mount.dart';

class JobTemplateInitContainer {
  /// A list of extra arguments to pass to the container.
  final List<String>? args;
  /// A command to pass to the container to override the default. This is provided as a list of command line elements without spaces.
  final List<String>? commands;
  /// The amount of vCPU to allocate to the container.
  ///
  /// > **Note:** When using a Consumption plan, the `cpu` and `memory` properties must add up to one of the combinations found in the Microsoft provided documentation, for more information see [vCPU and memory allocation requirements](https://learn.microsoft.com/azure/container-apps/containers#allocations)
  final double? cpu;
  /// One or more `env` blocks as detailed below.
  final List<JobTemplateInitContainerEnv>? envs;
  /// The amount of ephemeral storage available to the Container App.
  ///
  /// > **Note:** `ephemeral_storage` is currently in preview and not configurable at this time.
  final String? ephemeralStorage;
  /// The image to use to create the container.
  final String image;
  /// The amount of memory to allocate to the container.
  ///
  /// > **Note:** When using a Consumption plan, the `cpu` and `memory` properties must add up to one of the combinations found in the Microsoft provided documentation, for more information see [vCPU and memory allocation requirements](https://learn.microsoft.com/azure/container-apps/containers#allocations)
  final String? memory;
  /// The name of the container.
  final String name;
  /// A `volume_mounts` block as detailed below.
  final List<JobTemplateInitContainerVolumeMount>? volumeMounts;

  /// Creates a new [JobTemplateInitContainer].
  /// [args] A list of extra arguments to pass to the container.
  /// [commands] A command to pass to the container to override the default. This is provided as a list of command line elements without spaces.
  /// [cpu] The amount of vCPU to allocate to the container.
  /// [envs] One or more `env` blocks as detailed below.
  /// [ephemeralStorage] The amount of ephemeral storage available to the Container App.
  /// [image] The image to use to create the container.
  /// [memory] The amount of memory to allocate to the container.
  /// [name] The name of the container.
  /// [volumeMounts] A `volume_mounts` block as detailed below.
  JobTemplateInitContainer({
    this.args,
    this.commands,
    this.cpu,
    this.envs,
    this.ephemeralStorage,
    required this.image,
    this.memory,
    required this.name,
    this.volumeMounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'commands': ?commands,
      'cpu': ?cpu,
      'envs': ?envs == null ? null : pulumi.Input.encodeList<JobTemplateInitContainerEnv, Map<String, dynamic>>(envs!, (value) => value.toMap()),
      'ephemeralStorage': ?ephemeralStorage,
      'image': image,
      'memory': ?memory,
      'name': name,
      'volumeMounts': ?volumeMounts == null ? null : pulumi.Input.encodeList<JobTemplateInitContainerVolumeMount, Map<String, dynamic>>(volumeMounts!, (value) => value.toMap()),
    };
  }

  factory JobTemplateInitContainer.fromMap(Map<String, dynamic> map) {
    return JobTemplateInitContainer(
      args: map['args'] == null ? null : (map['args'] as List).cast<String>(),
      commands: map['commands'] == null ? null : (map['commands'] as List).cast<String>(),
      cpu: map['cpu'] == null ? null : map['cpu'] as double,
      envs: map['envs'] == null ? null : pulumi.Input.decodeList<JobTemplateInitContainerEnv>(map['envs'], (value) => JobTemplateInitContainerEnv.fromMap((value as Map).cast<String, dynamic>())),
      ephemeralStorage: map['ephemeralStorage'] == null ? null : map['ephemeralStorage'] as String,
      image: map['image'] as String,
      memory: map['memory'] == null ? null : map['memory'] as String,
      name: map['name'] as String,
      volumeMounts: map['volumeMounts'] == null ? null : pulumi.Input.decodeList<JobTemplateInitContainerVolumeMount>(map['volumeMounts'], (value) => JobTemplateInitContainerVolumeMount.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

