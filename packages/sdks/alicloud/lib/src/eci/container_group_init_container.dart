// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_group_init_container_environment_var.dart';
import 'container_group_init_container_port.dart';
import 'container_group_init_container_security_context.dart';
import 'container_group_init_container_volume_mount.dart';

class ContainerGroupInitContainer {
  /// The arguments passed to the commands.
  final List<String>? args;
  /// The commands run by the init container.
  final List<String>? commands;
  /// The amount of CPU resources allocated to the container. Default value: `0`.
  final double? cpu;
  /// The structure of environmentVars. See `environment_vars` below.
  final List<ContainerGroupInitContainerEnvironmentVar>? environmentVars;
  /// The number GPUs. Default value: `0`.
  final int? gpu;
  /// The image of the container.
  final String? image;
  /// The restart policy of the image. Default value: `IfNotPresent`. Valid values: `Always`, `IfNotPresent`, `Never`.
  final String? imagePullPolicy;
  /// The amount of memory resources allocated to the container. Default value: `0`.
  final double? memory;
  /// The name of the mounted volume.
  final String? name;
  /// The structure of port. See `ports` below.
  final List<ContainerGroupInitContainerPort>? ports;
  /// Indicates whether the container passed the readiness probe.
  final bool? ready;
  /// The number of times that the container restarted.
  final int? restartCount;
  /// The security context of the container. See `security_context` below.
  final List<ContainerGroupInitContainerSecurityContext>? securityContexts;
  /// The structure of volumeMounts. See `volume_mounts` below.
  final List<ContainerGroupInitContainerVolumeMount>? volumeMounts;
  /// The working directory of the container.
  final String? workingDir;

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
      'environmentVars': ?environmentVars == null ? null : pulumi.Input.encodeList<ContainerGroupInitContainerEnvironmentVar, Map<String, dynamic>>(environmentVars!, (value) => value.toMap()),
      'gpu': ?gpu,
      'image': ?image,
      'imagePullPolicy': ?imagePullPolicy,
      'memory': ?memory,
      'name': ?name,
      'ports': ?ports == null ? null : pulumi.Input.encodeList<ContainerGroupInitContainerPort, Map<String, dynamic>>(ports!, (value) => value.toMap()),
      'ready': ?ready,
      'restartCount': ?restartCount,
      'securityContexts': ?securityContexts == null ? null : pulumi.Input.encodeList<ContainerGroupInitContainerSecurityContext, Map<String, dynamic>>(securityContexts!, (value) => value.toMap()),
      'volumeMounts': ?volumeMounts == null ? null : pulumi.Input.encodeList<ContainerGroupInitContainerVolumeMount, Map<String, dynamic>>(volumeMounts!, (value) => value.toMap()),
      'workingDir': ?workingDir,
    };
  }

  factory ContainerGroupInitContainer.fromMap(Map<String, dynamic> map) {
    return ContainerGroupInitContainer(
      args: map['args'] == null ? null : (map['args'] as List).cast<String>(),
      commands: map['commands'] == null ? null : (map['commands'] as List).cast<String>(),
      cpu: map['cpu'] == null ? null : map['cpu'] as double,
      environmentVars: map['environmentVars'] == null ? null : pulumi.Input.decodeList<ContainerGroupInitContainerEnvironmentVar>(map['environmentVars'], (value) => ContainerGroupInitContainerEnvironmentVar.fromMap((value as Map).cast<String, dynamic>())),
      gpu: map['gpu'] == null ? null : map['gpu'] as int,
      image: map['image'] == null ? null : map['image'] as String,
      imagePullPolicy: map['imagePullPolicy'] == null ? null : map['imagePullPolicy'] as String,
      memory: map['memory'] == null ? null : map['memory'] as double,
      name: map['name'] == null ? null : map['name'] as String,
      ports: map['ports'] == null ? null : pulumi.Input.decodeList<ContainerGroupInitContainerPort>(map['ports'], (value) => ContainerGroupInitContainerPort.fromMap((value as Map).cast<String, dynamic>())),
      ready: map['ready'] == null ? null : map['ready'] as bool,
      restartCount: map['restartCount'] == null ? null : map['restartCount'] as int,
      securityContexts: map['securityContexts'] == null ? null : pulumi.Input.decodeList<ContainerGroupInitContainerSecurityContext>(map['securityContexts'], (value) => ContainerGroupInitContainerSecurityContext.fromMap((value as Map).cast<String, dynamic>())),
      volumeMounts: map['volumeMounts'] == null ? null : pulumi.Input.decodeList<ContainerGroupInitContainerVolumeMount>(map['volumeMounts'], (value) => ContainerGroupInitContainerVolumeMount.fromMap((value as Map).cast<String, dynamic>())),
      workingDir: map['workingDir'] == null ? null : map['workingDir'] as String,
    );
  }
}

