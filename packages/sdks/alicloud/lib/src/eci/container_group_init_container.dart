// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_group_init_container_environment_var.dart';
import 'container_group_init_container_port.dart';
import 'container_group_init_container_security_context.dart';
import 'container_group_init_container_volume_mount.dart';

class ContainerGroupInitContainer {
  /// The arguments passed to the commands.
  final pulumi.Input<List<String>>? args;
  /// The commands run by the init container.
  final pulumi.Input<List<String>>? commands;
  /// The amount of CPU resources allocated to the container. Default value: `0`.
  final pulumi.Input<double>? cpu;
  /// The structure of environmentVars. See `environment_vars` below.
  final pulumi.Input<List<ContainerGroupInitContainerEnvironmentVar>>? environmentVars;
  /// The number GPUs. Default value: `0`.
  final pulumi.Input<int>? gpu;
  /// The image of the container.
  final pulumi.Input<String>? image;
  /// The restart policy of the image. Default value: `IfNotPresent`. Valid values: `Always`, `IfNotPresent`, `Never`.
  final pulumi.Input<String>? imagePullPolicy;
  /// The amount of memory resources allocated to the container. Default value: `0`.
  final pulumi.Input<double>? memory;
  /// The name of the mounted volume.
  final pulumi.Input<String>? name;
  /// The structure of port. See `ports` below.
  final pulumi.Input<List<ContainerGroupInitContainerPort>>? ports;
  /// Indicates whether the container passed the readiness probe.
  final pulumi.Input<bool>? ready;
  /// The number of times that the container restarted.
  final pulumi.Input<int>? restartCount;
  /// The security context of the container. See `security_context` below.
  final pulumi.Input<List<ContainerGroupInitContainerSecurityContext>>? securityContexts;
  /// The structure of volumeMounts. See `volume_mounts` below.
  final pulumi.Input<List<ContainerGroupInitContainerVolumeMount>>? volumeMounts;
  /// The working directory of the container.
  final pulumi.Input<String>? workingDir;

  /// Creates a new [ContainerGroupInitContainer].
  /// [args] The arguments passed to the commands.
  /// [commands] The commands run by the init container.
  /// [cpu] The amount of CPU resources allocated to the container. Default value: `0`.
  /// [environmentVars] The structure of environmentVars. See `environment_vars` below.
  /// [gpu] The number GPUs. Default value: `0`.
  /// [image] The image of the container.
  /// [imagePullPolicy] The restart policy of the image. Default value: `IfNotPresent`. Valid values: `Always`, `IfNotPresent`, `Never`.
  /// [memory] The amount of memory resources allocated to the container. Default value: `0`.
  /// [name] The name of the mounted volume.
  /// [ports] The structure of port. See `ports` below.
  /// [ready] Indicates whether the container passed the readiness probe.
  /// [restartCount] The number of times that the container restarted.
  /// [securityContexts] The security context of the container. See `security_context` below.
  /// [volumeMounts] The structure of volumeMounts. See `volume_mounts` below.
  /// [workingDir] The working directory of the container.
  ContainerGroupInitContainer({
    this.args,
    this.commands,
    this.cpu,
    this.environmentVars,
    this.gpu,
    this.image,
    this.imagePullPolicy,
    this.memory,
    this.name,
    this.ports,
    this.ready,
    this.restartCount,
    this.securityContexts,
    this.volumeMounts,
    this.workingDir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'commands': ?commands,
      'cpu': ?cpu,
      'environmentVars': ?pulumi.Input.mapOptionalInputValue<List<ContainerGroupInitContainerEnvironmentVar>, List<Map<String, dynamic>>>(environmentVars, (value) => pulumi.Input.encodeList<ContainerGroupInitContainerEnvironmentVar, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gpu': ?gpu,
      'image': ?image,
      'imagePullPolicy': ?imagePullPolicy,
      'memory': ?memory,
      'name': ?name,
      'ports': ?pulumi.Input.mapOptionalInputValue<List<ContainerGroupInitContainerPort>, List<Map<String, dynamic>>>(ports, (value) => pulumi.Input.encodeList<ContainerGroupInitContainerPort, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ready': ?ready,
      'restartCount': ?restartCount,
      'securityContexts': ?pulumi.Input.mapOptionalInputValue<List<ContainerGroupInitContainerSecurityContext>, List<Map<String, dynamic>>>(securityContexts, (value) => pulumi.Input.encodeList<ContainerGroupInitContainerSecurityContext, Map<String, dynamic>>(value, (value) => value.toMap())),
      'volumeMounts': ?pulumi.Input.mapOptionalInputValue<List<ContainerGroupInitContainerVolumeMount>, List<Map<String, dynamic>>>(volumeMounts, (value) => pulumi.Input.encodeList<ContainerGroupInitContainerVolumeMount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workingDir': ?workingDir,
    };
  }

  factory ContainerGroupInitContainer.fromMap(Map<String, dynamic> map) {
    return ContainerGroupInitContainer(
      args: map['args'] == null ? null : ((map['args']! as List).cast<String>()).input(),
      commands: map['commands'] == null ? null : ((map['commands']! as List).cast<String>()).input(),
      cpu: map['cpu'] == null ? null : (map['cpu']! as double).input(),
      environmentVars: map['environmentVars'] == null ? null : (pulumi.Input.decodeList<ContainerGroupInitContainerEnvironmentVar>(map['environmentVars']!, (value) => ContainerGroupInitContainerEnvironmentVar.fromMap((value as Map).cast<String, dynamic>()))).input(),
      gpu: map['gpu'] == null ? null : (map['gpu']! as int).input(),
      image: map['image'] == null ? null : (map['image']! as String).input(),
      imagePullPolicy: map['imagePullPolicy'] == null ? null : (map['imagePullPolicy']! as String).input(),
      memory: map['memory'] == null ? null : (map['memory']! as double).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      ports: map['ports'] == null ? null : (pulumi.Input.decodeList<ContainerGroupInitContainerPort>(map['ports']!, (value) => ContainerGroupInitContainerPort.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ready: map['ready'] == null ? null : (map['ready']! as bool).input(),
      restartCount: map['restartCount'] == null ? null : (map['restartCount']! as int).input(),
      securityContexts: map['securityContexts'] == null ? null : (pulumi.Input.decodeList<ContainerGroupInitContainerSecurityContext>(map['securityContexts']!, (value) => ContainerGroupInitContainerSecurityContext.fromMap((value as Map).cast<String, dynamic>()))).input(),
      volumeMounts: map['volumeMounts'] == null ? null : (pulumi.Input.decodeList<ContainerGroupInitContainerVolumeMount>(map['volumeMounts']!, (value) => ContainerGroupInitContainerVolumeMount.fromMap((value as Map).cast<String, dynamic>()))).input(),
      workingDir: map['workingDir'] == null ? null : (map['workingDir']! as String).input(),
    );
  }
}

