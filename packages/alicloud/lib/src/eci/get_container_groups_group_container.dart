// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_container_groups_group_container_environment_var.dart';
import 'get_container_groups_group_container_port.dart';
import 'get_container_groups_group_container_volume_mount.dart';

class GetContainerGroupsGroupContainer {
  /// The arguments passed to the commands. Maximum: `10`.
  final List<String> args;
  /// The commands run by the container. You can define a maximum of 20 commands. Minimum length per string: 256 characters.
  final List<String> commands;
  /// The amount of CPU resources allocated to the container.
  final double cpu;
  /// The environment variables.
  final List<GetContainerGroupsGroupContainerEnvironmentVar> environmentVars;
  /// The amount of GPU resources allocated to the container.
  final int gpu;
  /// The image of the container.
  final String image;
  /// The policy for pulling an image.
  final String imagePullPolicy;
  /// The amount of memory resources allocated to the container.
  final double memory;
  /// The name of the container.
  final String name;
  /// The list of exposed ports and protocols. Maximum: 100.
  final List<GetContainerGroupsGroupContainerPort> ports;
  /// Indicates whether the container is ready.
  final bool ready;
  /// The number of times that the container has restarted.
  final int restartCount;
  /// The list of volumes mounted to the container.
  final List<GetContainerGroupsGroupContainerVolumeMount> volumeMounts;
  /// The working directory of the container.
  final String workingDir;

  /// Creates a new [GetContainerGroupsGroupContainer].
  /// [args] The arguments passed to the commands. Maximum: `10`.
  /// [commands] The commands run by the container. You can define a maximum of 20 commands. Minimum length per string: 256 characters.
  /// [cpu] The amount of CPU resources allocated to the container.
  /// [environmentVars] The environment variables.
  /// [gpu] The amount of GPU resources allocated to the container.
  /// [image] The image of the container.
  /// [imagePullPolicy] The policy for pulling an image.
  /// [memory] The amount of memory resources allocated to the container.
  /// [name] The name of the container.
  /// [ports] The list of exposed ports and protocols. Maximum: 100.
  /// [ready] Indicates whether the container is ready.
  /// [restartCount] The number of times that the container has restarted.
  /// [volumeMounts] The list of volumes mounted to the container.
  /// [workingDir] The working directory of the container.
  GetContainerGroupsGroupContainer({
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
      'environmentVars': pulumi.Input.encodeList<GetContainerGroupsGroupContainerEnvironmentVar, Map<String, dynamic>>(environmentVars, (value) => value.toMap()),
      'gpu': gpu,
      'image': image,
      'imagePullPolicy': imagePullPolicy,
      'memory': memory,
      'name': name,
      'ports': pulumi.Input.encodeList<GetContainerGroupsGroupContainerPort, Map<String, dynamic>>(ports, (value) => value.toMap()),
      'ready': ready,
      'restartCount': restartCount,
      'volumeMounts': pulumi.Input.encodeList<GetContainerGroupsGroupContainerVolumeMount, Map<String, dynamic>>(volumeMounts, (value) => value.toMap()),
      'workingDir': workingDir,
    };
  }

  factory GetContainerGroupsGroupContainer.fromMap(Map<String, dynamic> map) {
    return GetContainerGroupsGroupContainer(
      args: (map['args'] as List).cast<String>(),
      commands: (map['commands'] as List).cast<String>(),
      cpu: map['cpu'] as double,
      environmentVars: pulumi.Input.decodeList<GetContainerGroupsGroupContainerEnvironmentVar>(map['environmentVars'], (value) => GetContainerGroupsGroupContainerEnvironmentVar.fromMap((value as Map).cast<String, dynamic>())),
      gpu: map['gpu'] as int,
      image: map['image'] as String,
      imagePullPolicy: map['imagePullPolicy'] as String,
      memory: map['memory'] as double,
      name: map['name'] as String,
      ports: pulumi.Input.decodeList<GetContainerGroupsGroupContainerPort>(map['ports'], (value) => GetContainerGroupsGroupContainerPort.fromMap((value as Map).cast<String, dynamic>())),
      ready: map['ready'] as bool,
      restartCount: map['restartCount'] as int,
      volumeMounts: pulumi.Input.decodeList<GetContainerGroupsGroupContainerVolumeMount>(map['volumeMounts'], (value) => GetContainerGroupsGroupContainerVolumeMount.fromMap((value as Map).cast<String, dynamic>())),
      workingDir: map['workingDir'] as String,
    );
  }
}

