// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'eci_scaling_configuration_container_environment_var.dart';
import 'eci_scaling_configuration_container_port.dart';
import 'eci_scaling_configuration_container_volume_mount.dart';

class EciScalingConfigurationContainer {
  /// The arguments passed to the commands.
  final List<String>? args;
  /// The commands run by the init container.
  final List<String>? commands;
  /// The amount of CPU resources allocated to the container.
  final double? cpu;
  /// The structure of environmentVars.
  /// See `environment_vars` below for details.
  final List<EciScalingConfigurationContainerEnvironmentVar>? environmentVars;
  /// The number GPUs.
  final int? gpu;
  /// The image of the container.
  final String? image;
  /// The restart policy of the image.
  final String? imagePullPolicy;
  /// The commands to be executed in containers when you use the CLI to specify the preStop callback function.
  final List<String>? lifecyclePreStopHandlerExecs;
  /// Commands that you want to run in containers when you use the CLI to perform liveness probes.
  final List<String>? livenessProbeExecCommands;
  /// The minimum number of consecutive failures for the liveness probe to be considered failed after having been successful. Default value: 3.
  final int? livenessProbeFailureThreshold;
  /// The path to which HTTP GET requests are sent when you use HTTP requests to perform liveness probes.
  final String? livenessProbeHttpGetPath;
  /// The port to which HTTP GET requests are sent when you use HTTP requests to perform liveness probes.
  final int? livenessProbeHttpGetPort;
  /// The protocol type of HTTP GET requests when you use HTTP requests for liveness probes.Valid values:HTTP and HTTPS.
  final String? livenessProbeHttpGetScheme;
  /// The number of seconds after container has started before liveness probes are initiated.
  final int? livenessProbeInitialDelaySeconds;
  /// The interval at which the liveness probe is performed. Unit: seconds. Default value: 10. Minimum value: 1.
  final int? livenessProbePeriodSeconds;
  /// The minimum number of consecutive successes for the liveness probe to be considered successful after having failed. Default value: 1. Set the value to 1.
  final int? livenessProbeSuccessThreshold;
  /// The port detected by TCP sockets when you use TCP sockets to perform liveness probes.
  final int? livenessProbeTcpSocketPort;
  /// The timeout period for the liveness probe. Unit: seconds. Default value: 1. Minimum value: 1.
  final int? livenessProbeTimeoutSeconds;
  /// The amount of memory resources allocated to the container.
  final double? memory;
  /// The name of the mounted volume.
  final String? name;
  /// The structure of port. See `ports` below for details.
  final List<EciScalingConfigurationContainerPort>? ports;
  /// Commands that you want to run in containers when you use the CLI to perform readiness probes.
  final List<String>? readinessProbeExecCommands;
  /// The minimum number of consecutive failures for the readiness probe to be considered failed after having been successful. Default value: 3.
  final int? readinessProbeFailureThreshold;
  /// The path to which HTTP GET requests are sent when you use HTTP requests to perform readiness probes.
  final String? readinessProbeHttpGetPath;
  /// The port to which HTTP GET requests are sent when you use HTTP requests to perform readiness probes.
  final int? readinessProbeHttpGetPort;
  /// The protocol type of HTTP GET requests when you use HTTP requests for readiness probes. Valid values: HTTP and HTTPS.
  final String? readinessProbeHttpGetScheme;
  /// The number of seconds after container N has started before readiness probes are initiated.
  final int? readinessProbeInitialDelaySeconds;
  /// The interval at which the readiness probe is performed. Unit: seconds. Default value: 10. Minimum value: 1.
  final int? readinessProbePeriodSeconds;
  /// The minimum number of consecutive successes for the readiness probe to be considered successful after having failed. Default value: 1. Set the value to 1.
  final int? readinessProbeSuccessThreshold;
  /// The port detected by Transmission Control Protocol (TCP) sockets when you use TCP sockets to perform readiness probes.
  final int? readinessProbeTcpSocketPort;
  /// The timeout period for the readiness probe. Unit: seconds. Default value: 1. Minimum value: 1.
  final int? readinessProbeTimeoutSeconds;
  /// Grant certain permissions to processes within container. Optional values:
  /// - NET_ADMIN: Allow network management tasks to be performed.
  /// - NET_RAW: Allow raw sockets.
  final List<String>? securityContextCapabilityAdds;
  /// Mounts the container's root filesystem as read-only.
  final bool? securityContextReadOnlyRootFileSystem;
  /// Specifies user ID  under which all processes run.
  final int? securityContextRunAsUser;
  /// Specifies whether container N allocates buffer resources to standard input streams during its active runtime. If you do not specify this parameter, an end-of-file (EOF) error occurs.
  final bool? stdin;
  /// Specifies whether to enable the Interaction feature. Valid values: true, false.
  final bool? tty;
  /// The structure of volumeMounts.
  /// See `volume_mounts` below for details.
  final List<EciScalingConfigurationContainerVolumeMount>? volumeMounts;
  /// The working directory of the container.
  final String? workingDir;

  /// Creates a new [EciScalingConfigurationContainer].
  /// [args] The arguments passed to the commands.
  /// [commands] The commands run by the init container.
  /// [cpu] The amount of CPU resources allocated to the container.
  /// [environmentVars] The structure of environmentVars.
  /// [gpu] The number GPUs.
  /// [image] The image of the container.
  /// [imagePullPolicy] The restart policy of the image.
  /// [lifecyclePreStopHandlerExecs] The commands to be executed in containers when you use the CLI to specify the preStop callback function.
  /// [livenessProbeExecCommands] Commands that you want to run in containers when you use the CLI to perform liveness probes.
  /// [livenessProbeFailureThreshold] The minimum number of consecutive failures for the liveness probe to be considered failed after having been successful. Default value: 3.
  /// [livenessProbeHttpGetPath] The path to which HTTP GET requests are sent when you use HTTP requests to perform liveness probes.
  /// [livenessProbeHttpGetPort] The port to which HTTP GET requests are sent when you use HTTP requests to perform liveness probes.
  /// [livenessProbeHttpGetScheme] The protocol type of HTTP GET requests when you use HTTP requests for liveness probes.Valid values:HTTP and HTTPS.
  /// [livenessProbeInitialDelaySeconds] The number of seconds after container has started before liveness probes are initiated.
  /// [livenessProbePeriodSeconds] The interval at which the liveness probe is performed. Unit: seconds. Default value: 10. Minimum value: 1.
  /// [livenessProbeSuccessThreshold] The minimum number of consecutive successes for the liveness probe to be considered successful after having failed. Default value: 1. Set the value to 1.
  /// [livenessProbeTcpSocketPort] The port detected by TCP sockets when you use TCP sockets to perform liveness probes.
  /// [livenessProbeTimeoutSeconds] The timeout period for the liveness probe. Unit: seconds. Default value: 1. Minimum value: 1.
  /// [memory] The amount of memory resources allocated to the container.
  /// [name] The name of the mounted volume.
  /// [ports] The structure of port. See `ports` below for details.
  /// [readinessProbeExecCommands] Commands that you want to run in containers when you use the CLI to perform readiness probes.
  /// [readinessProbeFailureThreshold] The minimum number of consecutive failures for the readiness probe to be considered failed after having been successful. Default value: 3.
  /// [readinessProbeHttpGetPath] The path to which HTTP GET requests are sent when you use HTTP requests to perform readiness probes.
  /// [readinessProbeHttpGetPort] The port to which HTTP GET requests are sent when you use HTTP requests to perform readiness probes.
  /// [readinessProbeHttpGetScheme] The protocol type of HTTP GET requests when you use HTTP requests for readiness probes. Valid values: HTTP and HTTPS.
  /// [readinessProbeInitialDelaySeconds] The number of seconds after container N has started before readiness probes are initiated.
  /// [readinessProbePeriodSeconds] The interval at which the readiness probe is performed. Unit: seconds. Default value: 10. Minimum value: 1.
  /// [readinessProbeSuccessThreshold] The minimum number of consecutive successes for the readiness probe to be considered successful after having failed. Default value: 1. Set the value to 1.
  /// [readinessProbeTcpSocketPort] The port detected by Transmission Control Protocol (TCP) sockets when you use TCP sockets to perform readiness probes.
  /// [readinessProbeTimeoutSeconds] The timeout period for the readiness probe. Unit: seconds. Default value: 1. Minimum value: 1.
  /// [securityContextCapabilityAdds] Grant certain permissions to processes within container. Optional values:
  /// [securityContextReadOnlyRootFileSystem] Mounts the container's root filesystem as read-only.
  /// [securityContextRunAsUser] Specifies user ID  under which all processes run.
  /// [stdin] Specifies whether container N allocates buffer resources to standard input streams during its active runtime. If you do not specify this parameter, an end-of-file (EOF) error occurs.
  /// [tty] Specifies whether to enable the Interaction feature. Valid values: true, false.
  /// [volumeMounts] The structure of volumeMounts.
  /// [workingDir] The working directory of the container.
  EciScalingConfigurationContainer({
    this.args,
    this.commands,
    this.cpu,
    this.environmentVars,
    this.gpu,
    this.image,
    this.imagePullPolicy,
    this.lifecyclePreStopHandlerExecs,
    this.livenessProbeExecCommands,
    this.livenessProbeFailureThreshold,
    this.livenessProbeHttpGetPath,
    this.livenessProbeHttpGetPort,
    this.livenessProbeHttpGetScheme,
    this.livenessProbeInitialDelaySeconds,
    this.livenessProbePeriodSeconds,
    this.livenessProbeSuccessThreshold,
    this.livenessProbeTcpSocketPort,
    this.livenessProbeTimeoutSeconds,
    this.memory,
    this.name,
    this.ports,
    this.readinessProbeExecCommands,
    this.readinessProbeFailureThreshold,
    this.readinessProbeHttpGetPath,
    this.readinessProbeHttpGetPort,
    this.readinessProbeHttpGetScheme,
    this.readinessProbeInitialDelaySeconds,
    this.readinessProbePeriodSeconds,
    this.readinessProbeSuccessThreshold,
    this.readinessProbeTcpSocketPort,
    this.readinessProbeTimeoutSeconds,
    this.securityContextCapabilityAdds,
    this.securityContextReadOnlyRootFileSystem,
    this.securityContextRunAsUser,
    this.stdin,
    this.tty,
    this.volumeMounts,
    this.workingDir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'commands': ?commands,
      'cpu': ?cpu,
      'environmentVars': ?environmentVars == null ? null : pulumi.Input.encodeList<EciScalingConfigurationContainerEnvironmentVar, Map<String, dynamic>>(environmentVars!, (value) => value.toMap()),
      'gpu': ?gpu,
      'image': ?image,
      'imagePullPolicy': ?imagePullPolicy,
      'lifecyclePreStopHandlerExecs': ?lifecyclePreStopHandlerExecs,
      'livenessProbeExecCommands': ?livenessProbeExecCommands,
      'livenessProbeFailureThreshold': ?livenessProbeFailureThreshold,
      'livenessProbeHttpGetPath': ?livenessProbeHttpGetPath,
      'livenessProbeHttpGetPort': ?livenessProbeHttpGetPort,
      'livenessProbeHttpGetScheme': ?livenessProbeHttpGetScheme,
      'livenessProbeInitialDelaySeconds': ?livenessProbeInitialDelaySeconds,
      'livenessProbePeriodSeconds': ?livenessProbePeriodSeconds,
      'livenessProbeSuccessThreshold': ?livenessProbeSuccessThreshold,
      'livenessProbeTcpSocketPort': ?livenessProbeTcpSocketPort,
      'livenessProbeTimeoutSeconds': ?livenessProbeTimeoutSeconds,
      'memory': ?memory,
      'name': ?name,
      'ports': ?ports == null ? null : pulumi.Input.encodeList<EciScalingConfigurationContainerPort, Map<String, dynamic>>(ports!, (value) => value.toMap()),
      'readinessProbeExecCommands': ?readinessProbeExecCommands,
      'readinessProbeFailureThreshold': ?readinessProbeFailureThreshold,
      'readinessProbeHttpGetPath': ?readinessProbeHttpGetPath,
      'readinessProbeHttpGetPort': ?readinessProbeHttpGetPort,
      'readinessProbeHttpGetScheme': ?readinessProbeHttpGetScheme,
      'readinessProbeInitialDelaySeconds': ?readinessProbeInitialDelaySeconds,
      'readinessProbePeriodSeconds': ?readinessProbePeriodSeconds,
      'readinessProbeSuccessThreshold': ?readinessProbeSuccessThreshold,
      'readinessProbeTcpSocketPort': ?readinessProbeTcpSocketPort,
      'readinessProbeTimeoutSeconds': ?readinessProbeTimeoutSeconds,
      'securityContextCapabilityAdds': ?securityContextCapabilityAdds,
      'securityContextReadOnlyRootFileSystem': ?securityContextReadOnlyRootFileSystem,
      'securityContextRunAsUser': ?securityContextRunAsUser,
      'stdin': ?stdin,
      'tty': ?tty,
      'volumeMounts': ?volumeMounts == null ? null : pulumi.Input.encodeList<EciScalingConfigurationContainerVolumeMount, Map<String, dynamic>>(volumeMounts!, (value) => value.toMap()),
      'workingDir': ?workingDir,
    };
  }

  factory EciScalingConfigurationContainer.fromMap(Map<String, dynamic> map) {
    return EciScalingConfigurationContainer(
      args: map['args'] == null ? null : (map['args'] as List).cast<String>(),
      commands: map['commands'] == null ? null : (map['commands'] as List).cast<String>(),
      cpu: map['cpu'] == null ? null : map['cpu'] as double,
      environmentVars: map['environmentVars'] == null ? null : pulumi.Input.decodeList<EciScalingConfigurationContainerEnvironmentVar>(map['environmentVars'], (value) => EciScalingConfigurationContainerEnvironmentVar.fromMap((value as Map).cast<String, dynamic>())),
      gpu: map['gpu'] == null ? null : map['gpu'] as int,
      image: map['image'] == null ? null : map['image'] as String,
      imagePullPolicy: map['imagePullPolicy'] == null ? null : map['imagePullPolicy'] as String,
      lifecyclePreStopHandlerExecs: map['lifecyclePreStopHandlerExecs'] == null ? null : (map['lifecyclePreStopHandlerExecs'] as List).cast<String>(),
      livenessProbeExecCommands: map['livenessProbeExecCommands'] == null ? null : (map['livenessProbeExecCommands'] as List).cast<String>(),
      livenessProbeFailureThreshold: map['livenessProbeFailureThreshold'] == null ? null : map['livenessProbeFailureThreshold'] as int,
      livenessProbeHttpGetPath: map['livenessProbeHttpGetPath'] == null ? null : map['livenessProbeHttpGetPath'] as String,
      livenessProbeHttpGetPort: map['livenessProbeHttpGetPort'] == null ? null : map['livenessProbeHttpGetPort'] as int,
      livenessProbeHttpGetScheme: map['livenessProbeHttpGetScheme'] == null ? null : map['livenessProbeHttpGetScheme'] as String,
      livenessProbeInitialDelaySeconds: map['livenessProbeInitialDelaySeconds'] == null ? null : map['livenessProbeInitialDelaySeconds'] as int,
      livenessProbePeriodSeconds: map['livenessProbePeriodSeconds'] == null ? null : map['livenessProbePeriodSeconds'] as int,
      livenessProbeSuccessThreshold: map['livenessProbeSuccessThreshold'] == null ? null : map['livenessProbeSuccessThreshold'] as int,
      livenessProbeTcpSocketPort: map['livenessProbeTcpSocketPort'] == null ? null : map['livenessProbeTcpSocketPort'] as int,
      livenessProbeTimeoutSeconds: map['livenessProbeTimeoutSeconds'] == null ? null : map['livenessProbeTimeoutSeconds'] as int,
      memory: map['memory'] == null ? null : map['memory'] as double,
      name: map['name'] == null ? null : map['name'] as String,
      ports: map['ports'] == null ? null : pulumi.Input.decodeList<EciScalingConfigurationContainerPort>(map['ports'], (value) => EciScalingConfigurationContainerPort.fromMap((value as Map).cast<String, dynamic>())),
      readinessProbeExecCommands: map['readinessProbeExecCommands'] == null ? null : (map['readinessProbeExecCommands'] as List).cast<String>(),
      readinessProbeFailureThreshold: map['readinessProbeFailureThreshold'] == null ? null : map['readinessProbeFailureThreshold'] as int,
      readinessProbeHttpGetPath: map['readinessProbeHttpGetPath'] == null ? null : map['readinessProbeHttpGetPath'] as String,
      readinessProbeHttpGetPort: map['readinessProbeHttpGetPort'] == null ? null : map['readinessProbeHttpGetPort'] as int,
      readinessProbeHttpGetScheme: map['readinessProbeHttpGetScheme'] == null ? null : map['readinessProbeHttpGetScheme'] as String,
      readinessProbeInitialDelaySeconds: map['readinessProbeInitialDelaySeconds'] == null ? null : map['readinessProbeInitialDelaySeconds'] as int,
      readinessProbePeriodSeconds: map['readinessProbePeriodSeconds'] == null ? null : map['readinessProbePeriodSeconds'] as int,
      readinessProbeSuccessThreshold: map['readinessProbeSuccessThreshold'] == null ? null : map['readinessProbeSuccessThreshold'] as int,
      readinessProbeTcpSocketPort: map['readinessProbeTcpSocketPort'] == null ? null : map['readinessProbeTcpSocketPort'] as int,
      readinessProbeTimeoutSeconds: map['readinessProbeTimeoutSeconds'] == null ? null : map['readinessProbeTimeoutSeconds'] as int,
      securityContextCapabilityAdds: map['securityContextCapabilityAdds'] == null ? null : (map['securityContextCapabilityAdds'] as List).cast<String>(),
      securityContextReadOnlyRootFileSystem: map['securityContextReadOnlyRootFileSystem'] == null ? null : map['securityContextReadOnlyRootFileSystem'] as bool,
      securityContextRunAsUser: map['securityContextRunAsUser'] == null ? null : map['securityContextRunAsUser'] as int,
      stdin: map['stdin'] == null ? null : map['stdin'] as bool,
      tty: map['tty'] == null ? null : map['tty'] as bool,
      volumeMounts: map['volumeMounts'] == null ? null : pulumi.Input.decodeList<EciScalingConfigurationContainerVolumeMount>(map['volumeMounts'], (value) => EciScalingConfigurationContainerVolumeMount.fromMap((value as Map).cast<String, dynamic>())),
      workingDir: map['workingDir'] == null ? null : map['workingDir'] as String,
    );
  }
}

