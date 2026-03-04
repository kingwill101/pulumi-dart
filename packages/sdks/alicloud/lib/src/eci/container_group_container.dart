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
  final pulumi.Input<List<String>>? args;

  /// Commands to be executed inside the container when performing health checks using the command line method.
  final pulumi.Input<List<String>>? commands;

  /// The amount of CPU resources allocated to the container. Default value: `0`.
  final pulumi.Input<double>? cpu;

  /// The structure of environmentVars. See `environment_vars` below.
  final pulumi.Input<List<ContainerGroupContainerEnvironmentVar>>?
  environmentVars;

  /// The number GPUs. Default value: `0`.
  final pulumi.Input<int>? gpu;

  /// The image of the container.
  final pulumi.Input<String> image;

  /// The restart policy of the image. Default value: `IfNotPresent`. Valid values: `Always`, `IfNotPresent`, `Never`.
  final pulumi.Input<String>? imagePullPolicy;

  /// The commands to be executed in containers when you use the CLI to specify the preStop callback function.
  final pulumi.Input<List<String>>? lifecyclePreStopHandlerExecs;

  /// The health check of the container. See `liveness_probe` below.
  final pulumi.Input<List<ContainerGroupContainerLivenessProbe>>?
  livenessProbes;

  /// The amount of memory resources allocated to the container. Default value: `0`.
  final pulumi.Input<double>? memory;

  /// The name of the mounted volume.
  final pulumi.Input<String> name;

  /// The structure of port. See `ports` below.
  final pulumi.Input<List<ContainerGroupContainerPort>>? ports;

  /// The health check of the container. See `readiness_probe` below.
  final pulumi.Input<List<ContainerGroupContainerReadinessProbe>>?
  readinessProbes;

  /// Indicates whether the container passed the readiness probe.
  final pulumi.Input<bool>? ready;

  /// The number of times that the container restarted.
  final pulumi.Input<int>? restartCount;

  /// The security context of the container. See `security_context` below.
  final pulumi.Input<List<ContainerGroupContainerSecurityContext>>?
  securityContexts;

  /// The structure of volumeMounts. See `volume_mounts` below.
  final pulumi.Input<List<ContainerGroupContainerVolumeMount>>? volumeMounts;

  /// The working directory of the container.
  final pulumi.Input<String>? workingDir;

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
      'environmentVars':
          ?pulumi.Input.mapOptionalInputValue<
            List<ContainerGroupContainerEnvironmentVar>,
            List<Map<String, dynamic>>
          >(
            environmentVars,
            (value) =>
                pulumi.Input.encodeList<
                  ContainerGroupContainerEnvironmentVar,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'gpu': ?gpu,
      'image': image,
      'imagePullPolicy': ?imagePullPolicy,
      'lifecyclePreStopHandlerExecs': ?lifecyclePreStopHandlerExecs,
      'livenessProbes':
          ?pulumi.Input.mapOptionalInputValue<
            List<ContainerGroupContainerLivenessProbe>,
            List<Map<String, dynamic>>
          >(
            livenessProbes,
            (value) =>
                pulumi.Input.encodeList<
                  ContainerGroupContainerLivenessProbe,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'memory': ?memory,
      'name': name,
      'ports':
          ?pulumi.Input.mapOptionalInputValue<
            List<ContainerGroupContainerPort>,
            List<Map<String, dynamic>>
          >(
            ports,
            (value) =>
                pulumi.Input.encodeList<
                  ContainerGroupContainerPort,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'readinessProbes':
          ?pulumi.Input.mapOptionalInputValue<
            List<ContainerGroupContainerReadinessProbe>,
            List<Map<String, dynamic>>
          >(
            readinessProbes,
            (value) =>
                pulumi.Input.encodeList<
                  ContainerGroupContainerReadinessProbe,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ready': ?ready,
      'restartCount': ?restartCount,
      'securityContexts':
          ?pulumi.Input.mapOptionalInputValue<
            List<ContainerGroupContainerSecurityContext>,
            List<Map<String, dynamic>>
          >(
            securityContexts,
            (value) =>
                pulumi.Input.encodeList<
                  ContainerGroupContainerSecurityContext,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'volumeMounts':
          ?pulumi.Input.mapOptionalInputValue<
            List<ContainerGroupContainerVolumeMount>,
            List<Map<String, dynamic>>
          >(
            volumeMounts,
            (value) =>
                pulumi.Input.encodeList<
                  ContainerGroupContainerVolumeMount,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'workingDir': ?workingDir,
    };
  }

  factory ContainerGroupContainer.fromMap(Map<String, dynamic> map) {
    return ContainerGroupContainer(
      args: (() {
        final guardedValue = map['args'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      commands: (() {
        final guardedValue = map['commands'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      cpu: (() {
        final guardedValue = map['cpu'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      environmentVars: (() {
        final guardedValue = map['environmentVars'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ContainerGroupContainerEnvironmentVar>(
            guardedValue,
            (value) => ContainerGroupContainerEnvironmentVar.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      gpu: (() {
        final guardedValue = map['gpu'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      image: pulumi.Input.fromValue(map['image'] as String),
      imagePullPolicy: (() {
        final guardedValue = map['imagePullPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lifecyclePreStopHandlerExecs: (() {
        final guardedValue = map['lifecyclePreStopHandlerExecs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      livenessProbes: (() {
        final guardedValue = map['livenessProbes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ContainerGroupContainerLivenessProbe>(
            guardedValue,
            (value) => ContainerGroupContainerLivenessProbe.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      memory: (() {
        final guardedValue = map['memory'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      ports: (() {
        final guardedValue = map['ports'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ContainerGroupContainerPort>(
            guardedValue,
            (value) => ContainerGroupContainerPort.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      readinessProbes: (() {
        final guardedValue = map['readinessProbes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ContainerGroupContainerReadinessProbe>(
            guardedValue,
            (value) => ContainerGroupContainerReadinessProbe.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      ready: (() {
        final guardedValue = map['ready'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      restartCount: (() {
        final guardedValue = map['restartCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      securityContexts: (() {
        final guardedValue = map['securityContexts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ContainerGroupContainerSecurityContext>(
            guardedValue,
            (value) => ContainerGroupContainerSecurityContext.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      volumeMounts: (() {
        final guardedValue = map['volumeMounts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ContainerGroupContainerVolumeMount>(
            guardedValue,
            (value) => ContainerGroupContainerVolumeMount.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      workingDir: (() {
        final guardedValue = map['workingDir'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
