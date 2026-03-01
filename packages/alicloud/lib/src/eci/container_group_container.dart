// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_group_container_environment_var.dart';
import 'container_group_container_liveness_probe.dart';
import 'container_group_container_port.dart';
import 'container_group_container_readiness_probe.dart';
import 'container_group_container_security_context.dart';
import 'container_group_container_volume_mount.dart';

class ContainerGroupContainer {
  /// The arguments passed to the commands.
  final List<String>? args;
  /// Commands to be executed inside the container when performing health checks using the command line method.
  final List<String>? commands;
  /// The amount of CPU resources allocated to the container. Default value: `0`.
  final double? cpu;
  /// The structure of environmentVars. See `environment_vars` below.
  final List<ContainerGroupContainerEnvironmentVar>? environmentVars;
  /// The number GPUs. Default value: `0`.
  final int? gpu;
  /// The image of the container.
  final String image;
  /// The restart policy of the image. Default value: `IfNotPresent`. Valid values: `Always`, `IfNotPresent`, `Never`.
  final String? imagePullPolicy;
  /// The commands to be executed in containers when you use the CLI to specify the preStop callback function.
  final List<String>? lifecyclePreStopHandlerExecs;
  /// The health check of the container. See `liveness_probe` below.
  final List<ContainerGroupContainerLivenessProbe>? livenessProbes;
  /// The amount of memory resources allocated to the container. Default value: `0`.
  final double? memory;
  /// The name of the mounted volume.
  final String name;
  /// The structure of port. See `ports` below.
  final List<ContainerGroupContainerPort>? ports;
  /// The health check of the container. See `readiness_probe` below.
  final List<ContainerGroupContainerReadinessProbe>? readinessProbes;
  /// Indicates whether the container passed the readiness probe.
  final bool? ready;
  /// The number of times that the container restarted.
  final int? restartCount;
  /// The security context of the container. See `security_context` below.
  final List<ContainerGroupContainerSecurityContext>? securityContexts;
  /// The structure of volumeMounts. See `volume_mounts` below.
  final List<ContainerGroupContainerVolumeMount>? volumeMounts;
  /// The working directory of the container.
  final String? workingDir;

  /// Creates a new [ContainerGroupContainer].
  /// [args] The arguments passed to the commands.
  /// [commands] Commands to be executed inside the container when performing health checks using the command line method.
  /// [cpu] The amount of CPU resources allocated to the container. Default value: `0`.
  /// [environmentVars] The structure of environmentVars. See `environment_vars` below.
  /// [gpu] The number GPUs. Default value: `0`.
  /// [image] The image of the container.
  /// [imagePullPolicy] The restart policy of the image. Default value: `IfNotPresent`. Valid values: `Always`, `IfNotPresent`, `Never`.
  /// [lifecyclePreStopHandlerExecs] The commands to be executed in containers when you use the CLI to specify the preStop callback function.
  /// [livenessProbes] The health check of the container. See `liveness_probe` below.
  /// [memory] The amount of memory resources allocated to the container. Default value: `0`.
  /// [name] The name of the mounted volume.
  /// [ports] The structure of port. See `ports` below.
  /// [readinessProbes] The health check of the container. See `readiness_probe` below.
  /// [ready] Indicates whether the container passed the readiness probe.
  /// [restartCount] The number of times that the container restarted.
  /// [securityContexts] The security context of the container. See `security_context` below.
  /// [volumeMounts] The structure of volumeMounts. See `volume_mounts` below.
  /// [workingDir] The working directory of the container.
  ContainerGroupContainer({
    this.args,
    this.commands,
    this.cpu,
    this.environmentVars,
    this.gpu,
    required this.image,
    this.imagePullPolicy,
    this.lifecyclePreStopHandlerExecs,
    this.livenessProbes,
    this.memory,
    required this.name,
    this.ports,
    this.readinessProbes,
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
      'environmentVars': ?environmentVars == null ? null : pulumi.Input.encodeList<ContainerGroupContainerEnvironmentVar, Map<String, dynamic>>(environmentVars!, (value) => value.toMap()),
      'gpu': ?gpu,
      'image': image,
      'imagePullPolicy': ?imagePullPolicy,
      'lifecyclePreStopHandlerExecs': ?lifecyclePreStopHandlerExecs,
      'livenessProbes': ?livenessProbes == null ? null : pulumi.Input.encodeList<ContainerGroupContainerLivenessProbe, Map<String, dynamic>>(livenessProbes!, (value) => value.toMap()),
      'memory': ?memory,
      'name': name,
      'ports': ?ports == null ? null : pulumi.Input.encodeList<ContainerGroupContainerPort, Map<String, dynamic>>(ports!, (value) => value.toMap()),
      'readinessProbes': ?readinessProbes == null ? null : pulumi.Input.encodeList<ContainerGroupContainerReadinessProbe, Map<String, dynamic>>(readinessProbes!, (value) => value.toMap()),
      'ready': ?ready,
      'restartCount': ?restartCount,
      'securityContexts': ?securityContexts == null ? null : pulumi.Input.encodeList<ContainerGroupContainerSecurityContext, Map<String, dynamic>>(securityContexts!, (value) => value.toMap()),
      'volumeMounts': ?volumeMounts == null ? null : pulumi.Input.encodeList<ContainerGroupContainerVolumeMount, Map<String, dynamic>>(volumeMounts!, (value) => value.toMap()),
      'workingDir': ?workingDir,
    };
  }

  factory ContainerGroupContainer.fromMap(Map<String, dynamic> map) {
    return ContainerGroupContainer(
      args: map['args'] == null ? null : (map['args'] as List).cast<String>(),
      commands: map['commands'] == null ? null : (map['commands'] as List).cast<String>(),
      cpu: map['cpu'] == null ? null : map['cpu'] as double,
      environmentVars: map['environmentVars'] == null ? null : pulumi.Input.decodeList<ContainerGroupContainerEnvironmentVar>(map['environmentVars'], (value) => ContainerGroupContainerEnvironmentVar.fromMap((value as Map).cast<String, dynamic>())),
      gpu: map['gpu'] == null ? null : map['gpu'] as int,
      image: map['image'] as String,
      imagePullPolicy: map['imagePullPolicy'] == null ? null : map['imagePullPolicy'] as String,
      lifecyclePreStopHandlerExecs: map['lifecyclePreStopHandlerExecs'] == null ? null : (map['lifecyclePreStopHandlerExecs'] as List).cast<String>(),
      livenessProbes: map['livenessProbes'] == null ? null : pulumi.Input.decodeList<ContainerGroupContainerLivenessProbe>(map['livenessProbes'], (value) => ContainerGroupContainerLivenessProbe.fromMap((value as Map).cast<String, dynamic>())),
      memory: map['memory'] == null ? null : map['memory'] as double,
      name: map['name'] as String,
      ports: map['ports'] == null ? null : pulumi.Input.decodeList<ContainerGroupContainerPort>(map['ports'], (value) => ContainerGroupContainerPort.fromMap((value as Map).cast<String, dynamic>())),
      readinessProbes: map['readinessProbes'] == null ? null : pulumi.Input.decodeList<ContainerGroupContainerReadinessProbe>(map['readinessProbes'], (value) => ContainerGroupContainerReadinessProbe.fromMap((value as Map).cast<String, dynamic>())),
      ready: map['ready'] == null ? null : map['ready'] as bool,
      restartCount: map['restartCount'] == null ? null : map['restartCount'] as int,
      securityContexts: map['securityContexts'] == null ? null : pulumi.Input.decodeList<ContainerGroupContainerSecurityContext>(map['securityContexts'], (value) => ContainerGroupContainerSecurityContext.fromMap((value as Map).cast<String, dynamic>())),
      volumeMounts: map['volumeMounts'] == null ? null : pulumi.Input.decodeList<ContainerGroupContainerVolumeMount>(map['volumeMounts'], (value) => ContainerGroupContainerVolumeMount.fromMap((value as Map).cast<String, dynamic>())),
      workingDir: map['workingDir'] == null ? null : map['workingDir'] as String,
    );
  }
}

