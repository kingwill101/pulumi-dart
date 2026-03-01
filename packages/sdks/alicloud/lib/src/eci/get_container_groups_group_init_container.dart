// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_container_groups_group_init_container_environment_var.dart';
import 'get_container_groups_group_init_container_port.dart';
import 'get_container_groups_group_init_container_volume_mount.dart';

class GetContainerGroupsGroupInitContainer {
  /// The arguments passed to the commands.
  final List<String> args;
  /// The commands run by the container.
  final List<String> commands;
  /// The amount of CPU resources allocated to the container.
  final double cpu;
  /// The environment variables.
  final List<GetContainerGroupsGroupInitContainerEnvironmentVar> environmentVars;
  /// The amount of GPU resources allocated to the container.
  final int gpu;
  /// The image of the container.
  final String image;
  /// The policy for pulling an image.
  final String imagePullPolicy;
  /// The amount of memory resources allocated to the container.
  final double memory;
  /// The name of the init container.
  final String name;
  /// The exposed ports and protocols. Maximum: `100`.
  final List<GetContainerGroupsGroupInitContainerPort> ports;
  /// Indicates whether the container is ready.
  final bool ready;
  /// The number of times that the container has restarted.
  final int restartCount;
  /// The list of volumes mounted to the container.
  final List<GetContainerGroupsGroupInitContainerVolumeMount> volumeMounts;
  /// The working directory of the container.
  final String workingDir;

  /// Creates a new [GetContainerGroupsGroupInitContainer].
  /// [args] The arguments passed to the commands.
  /// [commands] The commands run by the container.
  /// [cpu] The amount of CPU resources allocated to the container.
  /// [environmentVars] The environment variables.
  /// [gpu] The amount of GPU resources allocated to the container.
  /// [image] The image of the container.
  /// [imagePullPolicy] The policy for pulling an image.
  /// [memory] The amount of memory resources allocated to the container.
  /// [name] The name of the init container.
  /// [ports] The exposed ports and protocols. Maximum: `100`.
  /// [ready] Indicates whether the container is ready.
  /// [restartCount] The number of times that the container has restarted.
  /// [volumeMounts] The list of volumes mounted to the container.
  /// [workingDir] The working directory of the container.
  GetContainerGroupsGroupInitContainer({
    required this.args,
    required this.commands,
    required this.cpu,
    required this.environmentVars,
    required this.gpu,
    required this.image,
    required this.imagePullPolicy,
    required this.memory,
    required this.name,
    required this.ports,
    required this.ready,
    required this.restartCount,
    required this.volumeMounts,
    required this.workingDir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': args,
      'commands': commands,
      'cpu': cpu,
      'environmentVars': pulumi.Input.encodeList<GetContainerGroupsGroupInitContainerEnvironmentVar, Map<String, dynamic>>(environmentVars, (value) => value.toMap()),
      'gpu': gpu,
      'image': image,
      'imagePullPolicy': imagePullPolicy,
      'memory': memory,
      'name': name,
      'ports': pulumi.Input.encodeList<GetContainerGroupsGroupInitContainerPort, Map<String, dynamic>>(ports, (value) => value.toMap()),
      'ready': ready,
      'restartCount': restartCount,
      'volumeMounts': pulumi.Input.encodeList<GetContainerGroupsGroupInitContainerVolumeMount, Map<String, dynamic>>(volumeMounts, (value) => value.toMap()),
      'workingDir': workingDir,
    };
  }

  factory GetContainerGroupsGroupInitContainer.fromMap(Map<String, dynamic> map) {
    return GetContainerGroupsGroupInitContainer(
      args: (map['args'] as List).cast<String>(),
      commands: (map['commands'] as List).cast<String>(),
      cpu: map['cpu'] as double,
      environmentVars: pulumi.Input.decodeList<GetContainerGroupsGroupInitContainerEnvironmentVar>(map['environmentVars'], (value) => GetContainerGroupsGroupInitContainerEnvironmentVar.fromMap((value as Map).cast<String, dynamic>())),
      gpu: map['gpu'] as int,
      image: map['image'] as String,
      imagePullPolicy: map['imagePullPolicy'] as String,
      memory: map['memory'] as double,
      name: map['name'] as String,
      ports: pulumi.Input.decodeList<GetContainerGroupsGroupInitContainerPort>(map['ports'], (value) => GetContainerGroupsGroupInitContainerPort.fromMap((value as Map).cast<String, dynamic>())),
      ready: map['ready'] as bool,
      restartCount: map['restartCount'] as int,
      volumeMounts: pulumi.Input.decodeList<GetContainerGroupsGroupInitContainerVolumeMount>(map['volumeMounts'], (value) => GetContainerGroupsGroupInitContainerVolumeMount.fromMap((value as Map).cast<String, dynamic>())),
      workingDir: map['workingDir'] as String,
    );
  }
}

