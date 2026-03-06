// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_container_groups_group_container_environment_var.dart';
import 'get_container_groups_group_container_port.dart';
import 'get_container_groups_group_container_volume_mount.dart';

class GetContainerGroupsGroupContainer {
  /// The arguments passed to the commands. Maximum: `10`.
  final pulumi.Input<List<String>> args;
  /// The commands run by the container. You can define a maximum of 20 commands. Minimum length per string: 256 characters.
  final pulumi.Input<List<String>> commands;
  /// The amount of CPU resources allocated to the container.
  final pulumi.Input<double> cpu;
  /// The environment variables.
  final pulumi.Input<List<GetContainerGroupsGroupContainerEnvironmentVar>> environmentVars;
  /// The amount of GPU resources allocated to the container.
  final pulumi.Input<int> gpu;
  /// The image of the container.
  final pulumi.Input<String> image;
  /// The policy for pulling an image.
  final pulumi.Input<String> imagePullPolicy;
  /// The amount of memory resources allocated to the container.
  final pulumi.Input<double> memory;
  /// The name of the container.
  final pulumi.Input<String> name;
  /// The list of exposed ports and protocols. Maximum: 100.
  final pulumi.Input<List<GetContainerGroupsGroupContainerPort>> ports;
  /// Indicates whether the container is ready.
  final pulumi.Input<bool> ready;
  /// The number of times that the container has restarted.
  final pulumi.Input<int> restartCount;
  /// The list of volumes mounted to the container.
  final pulumi.Input<List<GetContainerGroupsGroupContainerVolumeMount>> volumeMounts;
  /// The working directory of the container.
  final pulumi.Input<String> workingDir;

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
  const GetContainerGroupsGroupContainer({
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
      'environmentVars': pulumi.Input.mapInputValue<List<GetContainerGroupsGroupContainerEnvironmentVar>, List<Map<String, dynamic>>>(environmentVars, (value) => pulumi.Input.encodeList<GetContainerGroupsGroupContainerEnvironmentVar, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gpu': gpu,
      'image': image,
      'imagePullPolicy': imagePullPolicy,
      'memory': memory,
      'name': name,
      'ports': pulumi.Input.mapInputValue<List<GetContainerGroupsGroupContainerPort>, List<Map<String, dynamic>>>(ports, (value) => pulumi.Input.encodeList<GetContainerGroupsGroupContainerPort, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ready': ready,
      'restartCount': restartCount,
      'volumeMounts': pulumi.Input.mapInputValue<List<GetContainerGroupsGroupContainerVolumeMount>, List<Map<String, dynamic>>>(volumeMounts, (value) => pulumi.Input.encodeList<GetContainerGroupsGroupContainerVolumeMount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workingDir': workingDir,
    };
  }

  factory GetContainerGroupsGroupContainer.fromMap(Map<String, dynamic> map) {
    return GetContainerGroupsGroupContainer(
      args: pulumi.Input.fromValue((map['args'] as List).cast<String>()),
      commands: pulumi.Input.fromValue((map['commands'] as List).cast<String>()),
      cpu: pulumi.Input.fromValue(map['cpu'] as double),
      environmentVars: pulumi.Input.fromValue(pulumi.Input.decodeList<GetContainerGroupsGroupContainerEnvironmentVar>(map['environmentVars']!, (value) => GetContainerGroupsGroupContainerEnvironmentVar.fromMap((value as Map).cast<String, dynamic>()))),
      gpu: pulumi.Input.fromValue(map['gpu'] as int),
      image: pulumi.Input.fromValue(map['image'] as String),
      imagePullPolicy: pulumi.Input.fromValue(map['imagePullPolicy'] as String),
      memory: pulumi.Input.fromValue(map['memory'] as double),
      name: pulumi.Input.fromValue(map['name'] as String),
      ports: pulumi.Input.fromValue(pulumi.Input.decodeList<GetContainerGroupsGroupContainerPort>(map['ports']!, (value) => GetContainerGroupsGroupContainerPort.fromMap((value as Map).cast<String, dynamic>()))),
      ready: pulumi.Input.fromValue(map['ready'] as bool),
      restartCount: pulumi.Input.fromValue(map['restartCount'] as int),
      volumeMounts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetContainerGroupsGroupContainerVolumeMount>(map['volumeMounts']!, (value) => GetContainerGroupsGroupContainerVolumeMount.fromMap((value as Map).cast<String, dynamic>()))),
      workingDir: pulumi.Input.fromValue(map['workingDir'] as String),
    );
  }
}

