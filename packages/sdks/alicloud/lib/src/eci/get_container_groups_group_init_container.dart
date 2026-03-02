// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_container_groups_group_init_container_environment_var.dart';
import 'get_container_groups_group_init_container_port.dart';
import 'get_container_groups_group_init_container_volume_mount.dart';

class GetContainerGroupsGroupInitContainer {
  /// The arguments passed to the commands.
  final pulumi.Input<List<String>> args;
  /// The commands run by the container.
  final pulumi.Input<List<String>> commands;
  /// The amount of CPU resources allocated to the container.
  final pulumi.Input<double> cpu;
  /// The environment variables.
  final pulumi.Input<List<GetContainerGroupsGroupInitContainerEnvironmentVar>> environmentVars;
  /// The amount of GPU resources allocated to the container.
  final pulumi.Input<int> gpu;
  /// The image of the container.
  final pulumi.Input<String> image;
  /// The policy for pulling an image.
  final pulumi.Input<String> imagePullPolicy;
  /// The amount of memory resources allocated to the container.
  final pulumi.Input<double> memory;
  /// The name of the init container.
  final pulumi.Input<String> name;
  /// The exposed ports and protocols. Maximum: `100`.
  final pulumi.Input<List<GetContainerGroupsGroupInitContainerPort>> ports;
  /// Indicates whether the container is ready.
  final pulumi.Input<bool> ready;
  /// The number of times that the container has restarted.
  final pulumi.Input<int> restartCount;
  /// The list of volumes mounted to the container.
  final pulumi.Input<List<GetContainerGroupsGroupInitContainerVolumeMount>> volumeMounts;
  /// The working directory of the container.
  final pulumi.Input<String> workingDir;

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
      'environmentVars': pulumi.Input.mapInputValue<List<GetContainerGroupsGroupInitContainerEnvironmentVar>, List<Map<String, dynamic>>>(environmentVars, (value) => pulumi.Input.encodeList<GetContainerGroupsGroupInitContainerEnvironmentVar, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gpu': gpu,
      'image': image,
      'imagePullPolicy': imagePullPolicy,
      'memory': memory,
      'name': name,
      'ports': pulumi.Input.mapInputValue<List<GetContainerGroupsGroupInitContainerPort>, List<Map<String, dynamic>>>(ports, (value) => pulumi.Input.encodeList<GetContainerGroupsGroupInitContainerPort, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ready': ready,
      'restartCount': restartCount,
      'volumeMounts': pulumi.Input.mapInputValue<List<GetContainerGroupsGroupInitContainerVolumeMount>, List<Map<String, dynamic>>>(volumeMounts, (value) => pulumi.Input.encodeList<GetContainerGroupsGroupInitContainerVolumeMount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workingDir': workingDir,
    };
  }

  factory GetContainerGroupsGroupInitContainer.fromMap(Map<String, dynamic> map) {
    return GetContainerGroupsGroupInitContainer(
      args: ((map['args'] as List).cast<String>()).input(),
      commands: ((map['commands'] as List).cast<String>()).input(),
      cpu: (map['cpu'] as double).input(),
      environmentVars: (pulumi.Input.decodeList<GetContainerGroupsGroupInitContainerEnvironmentVar>(map['environmentVars'], (value) => GetContainerGroupsGroupInitContainerEnvironmentVar.fromMap((value as Map).cast<String, dynamic>()))).input(),
      gpu: (map['gpu'] as int).input(),
      image: (map['image'] as String).input(),
      imagePullPolicy: (map['imagePullPolicy'] as String).input(),
      memory: (map['memory'] as double).input(),
      name: (map['name'] as String).input(),
      ports: (pulumi.Input.decodeList<GetContainerGroupsGroupInitContainerPort>(map['ports'], (value) => GetContainerGroupsGroupInitContainerPort.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ready: (map['ready'] as bool).input(),
      restartCount: (map['restartCount'] as int).input(),
      volumeMounts: (pulumi.Input.decodeList<GetContainerGroupsGroupInitContainerVolumeMount>(map['volumeMounts'], (value) => GetContainerGroupsGroupInitContainerVolumeMount.fromMap((value as Map).cast<String, dynamic>()))).input(),
      workingDir: (map['workingDir'] as String).input(),
    );
  }
}

