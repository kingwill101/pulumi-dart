// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'eci_scaling_configuration_container_environment_var.dart';
import 'eci_scaling_configuration_container_port.dart';
import 'eci_scaling_configuration_container_volume_mount.dart';

class EciScalingConfigurationContainer {
  /// The arguments passed to the commands.
  final pulumi.Input<List<String>>? args;
  /// The commands run by the init container.
  final pulumi.Input<List<String>>? commands;
  /// The amount of CPU resources allocated to the container.
  final pulumi.Input<double>? cpu;
  /// The structure of environmentVars.
  /// See `environment_vars` below for details.
  final pulumi.Input<List<EciScalingConfigurationContainerEnvironmentVar>>? environmentVars;
  /// The number GPUs.
  final pulumi.Input<int>? gpu;
  /// The image of the container.
  final pulumi.Input<String>? image;
  /// The restart policy of the image.
  final pulumi.Input<String>? imagePullPolicy;
  /// The commands to be executed in containers when you use the CLI to specify the preStop callback function.
  final pulumi.Input<List<String>>? lifecyclePreStopHandlerExecs;
  /// Commands that you want to run in containers when you use the CLI to perform liveness probes.
  final pulumi.Input<List<String>>? livenessProbeExecCommands;
  /// The minimum number of consecutive failures for the liveness probe to be considered failed after having been successful. Default value: 3.
  final pulumi.Input<int>? livenessProbeFailureThreshold;
  /// The path to which HTTP GET requests are sent when you use HTTP requests to perform liveness probes.
  final pulumi.Input<String>? livenessProbeHttpGetPath;
  /// The port to which HTTP GET requests are sent when you use HTTP requests to perform liveness probes.
  final pulumi.Input<int>? livenessProbeHttpGetPort;
  /// The protocol type of HTTP GET requests when you use HTTP requests for liveness probes.Valid values:HTTP and HTTPS.
  final pulumi.Input<String>? livenessProbeHttpGetScheme;
  /// The number of seconds after container has started before liveness probes are initiated.
  final pulumi.Input<int>? livenessProbeInitialDelaySeconds;
  /// The interval at which the liveness probe is performed. Unit: seconds. Default value: 10. Minimum value: 1.
  final pulumi.Input<int>? livenessProbePeriodSeconds;
  /// The minimum number of consecutive successes for the liveness probe to be considered successful after having failed. Default value: 1. Set the value to 1.
  final pulumi.Input<int>? livenessProbeSuccessThreshold;
  /// The port detected by TCP sockets when you use TCP sockets to perform liveness probes.
  final pulumi.Input<int>? livenessProbeTcpSocketPort;
  /// The timeout period for the liveness probe. Unit: seconds. Default value: 1. Minimum value: 1.
  final pulumi.Input<int>? livenessProbeTimeoutSeconds;
  /// The amount of memory resources allocated to the container.
  final pulumi.Input<double>? memory;
  /// The name of the mounted volume.
  final pulumi.Input<String>? name;
  /// The structure of port. See `ports` below for details.
  final pulumi.Input<List<EciScalingConfigurationContainerPort>>? ports;
  /// Commands that you want to run in containers when you use the CLI to perform readiness probes.
  final pulumi.Input<List<String>>? readinessProbeExecCommands;
  /// The minimum number of consecutive failures for the readiness probe to be considered failed after having been successful. Default value: 3.
  final pulumi.Input<int>? readinessProbeFailureThreshold;
  /// The path to which HTTP GET requests are sent when you use HTTP requests to perform readiness probes.
  final pulumi.Input<String>? readinessProbeHttpGetPath;
  /// The port to which HTTP GET requests are sent when you use HTTP requests to perform readiness probes.
  final pulumi.Input<int>? readinessProbeHttpGetPort;
  /// The protocol type of HTTP GET requests when you use HTTP requests for readiness probes. Valid values: HTTP and HTTPS.
  final pulumi.Input<String>? readinessProbeHttpGetScheme;
  /// The number of seconds after container N has started before readiness probes are initiated.
  final pulumi.Input<int>? readinessProbeInitialDelaySeconds;
  /// The interval at which the readiness probe is performed. Unit: seconds. Default value: 10. Minimum value: 1.
  final pulumi.Input<int>? readinessProbePeriodSeconds;
  /// The minimum number of consecutive successes for the readiness probe to be considered successful after having failed. Default value: 1. Set the value to 1.
  final pulumi.Input<int>? readinessProbeSuccessThreshold;
  /// The port detected by Transmission Control Protocol (TCP) sockets when you use TCP sockets to perform readiness probes.
  final pulumi.Input<int>? readinessProbeTcpSocketPort;
  /// The timeout period for the readiness probe. Unit: seconds. Default value: 1. Minimum value: 1.
  final pulumi.Input<int>? readinessProbeTimeoutSeconds;
  /// Grant certain permissions to processes within container. Optional values:
  /// - NET_ADMIN: Allow network management tasks to be performed.
  /// - NET_RAW: Allow raw sockets.
  final pulumi.Input<List<String>>? securityContextCapabilityAdds;
  /// Mounts the container's root filesystem as read-only.
  final pulumi.Input<bool>? securityContextReadOnlyRootFileSystem;
  /// Specifies user ID  under which all processes run.
  final pulumi.Input<int>? securityContextRunAsUser;
  /// Specifies whether container N allocates buffer resources to standard input streams during its active runtime. If you do not specify this parameter, an end-of-file (EOF) error occurs.
  final pulumi.Input<bool>? stdin;
  /// Specifies whether to enable the Interaction feature. Valid values: true, false.
  final pulumi.Input<bool>? tty;
  /// The structure of volumeMounts.
  /// See `volume_mounts` below for details.
  final pulumi.Input<List<EciScalingConfigurationContainerVolumeMount>>? volumeMounts;
  /// The working directory of the container.
  final pulumi.Input<String>? workingDir;

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
      'environmentVars': ?pulumi.Input.mapOptionalInputValue<List<EciScalingConfigurationContainerEnvironmentVar>, List<Map<String, dynamic>>>(environmentVars, (value) => pulumi.Input.encodeList<EciScalingConfigurationContainerEnvironmentVar, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      'ports': ?pulumi.Input.mapOptionalInputValue<List<EciScalingConfigurationContainerPort>, List<Map<String, dynamic>>>(ports, (value) => pulumi.Input.encodeList<EciScalingConfigurationContainerPort, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      'volumeMounts': ?pulumi.Input.mapOptionalInputValue<List<EciScalingConfigurationContainerVolumeMount>, List<Map<String, dynamic>>>(volumeMounts, (value) => pulumi.Input.encodeList<EciScalingConfigurationContainerVolumeMount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workingDir': ?workingDir,
    };
  }

  factory EciScalingConfigurationContainer.fromMap(Map<String, dynamic> map) {
    return EciScalingConfigurationContainer(
      args: map['args'] == null ? null : ((map['args'] as List).cast<String>()).input(),
      commands: map['commands'] == null ? null : ((map['commands'] as List).cast<String>()).input(),
      cpu: map['cpu'] == null ? null : (map['cpu'] as double).input(),
      environmentVars: map['environmentVars'] == null ? null : (pulumi.Input.decodeList<EciScalingConfigurationContainerEnvironmentVar>(map['environmentVars'], (value) => EciScalingConfigurationContainerEnvironmentVar.fromMap((value as Map).cast<String, dynamic>()))).input(),
      gpu: map['gpu'] == null ? null : (map['gpu'] as int).input(),
      image: map['image'] == null ? null : (map['image'] as String).input(),
      imagePullPolicy: map['imagePullPolicy'] == null ? null : (map['imagePullPolicy'] as String).input(),
      lifecyclePreStopHandlerExecs: map['lifecyclePreStopHandlerExecs'] == null ? null : ((map['lifecyclePreStopHandlerExecs'] as List).cast<String>()).input(),
      livenessProbeExecCommands: map['livenessProbeExecCommands'] == null ? null : ((map['livenessProbeExecCommands'] as List).cast<String>()).input(),
      livenessProbeFailureThreshold: map['livenessProbeFailureThreshold'] == null ? null : (map['livenessProbeFailureThreshold'] as int).input(),
      livenessProbeHttpGetPath: map['livenessProbeHttpGetPath'] == null ? null : (map['livenessProbeHttpGetPath'] as String).input(),
      livenessProbeHttpGetPort: map['livenessProbeHttpGetPort'] == null ? null : (map['livenessProbeHttpGetPort'] as int).input(),
      livenessProbeHttpGetScheme: map['livenessProbeHttpGetScheme'] == null ? null : (map['livenessProbeHttpGetScheme'] as String).input(),
      livenessProbeInitialDelaySeconds: map['livenessProbeInitialDelaySeconds'] == null ? null : (map['livenessProbeInitialDelaySeconds'] as int).input(),
      livenessProbePeriodSeconds: map['livenessProbePeriodSeconds'] == null ? null : (map['livenessProbePeriodSeconds'] as int).input(),
      livenessProbeSuccessThreshold: map['livenessProbeSuccessThreshold'] == null ? null : (map['livenessProbeSuccessThreshold'] as int).input(),
      livenessProbeTcpSocketPort: map['livenessProbeTcpSocketPort'] == null ? null : (map['livenessProbeTcpSocketPort'] as int).input(),
      livenessProbeTimeoutSeconds: map['livenessProbeTimeoutSeconds'] == null ? null : (map['livenessProbeTimeoutSeconds'] as int).input(),
      memory: map['memory'] == null ? null : (map['memory'] as double).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      ports: map['ports'] == null ? null : (pulumi.Input.decodeList<EciScalingConfigurationContainerPort>(map['ports'], (value) => EciScalingConfigurationContainerPort.fromMap((value as Map).cast<String, dynamic>()))).input(),
      readinessProbeExecCommands: map['readinessProbeExecCommands'] == null ? null : ((map['readinessProbeExecCommands'] as List).cast<String>()).input(),
      readinessProbeFailureThreshold: map['readinessProbeFailureThreshold'] == null ? null : (map['readinessProbeFailureThreshold'] as int).input(),
      readinessProbeHttpGetPath: map['readinessProbeHttpGetPath'] == null ? null : (map['readinessProbeHttpGetPath'] as String).input(),
      readinessProbeHttpGetPort: map['readinessProbeHttpGetPort'] == null ? null : (map['readinessProbeHttpGetPort'] as int).input(),
      readinessProbeHttpGetScheme: map['readinessProbeHttpGetScheme'] == null ? null : (map['readinessProbeHttpGetScheme'] as String).input(),
      readinessProbeInitialDelaySeconds: map['readinessProbeInitialDelaySeconds'] == null ? null : (map['readinessProbeInitialDelaySeconds'] as int).input(),
      readinessProbePeriodSeconds: map['readinessProbePeriodSeconds'] == null ? null : (map['readinessProbePeriodSeconds'] as int).input(),
      readinessProbeSuccessThreshold: map['readinessProbeSuccessThreshold'] == null ? null : (map['readinessProbeSuccessThreshold'] as int).input(),
      readinessProbeTcpSocketPort: map['readinessProbeTcpSocketPort'] == null ? null : (map['readinessProbeTcpSocketPort'] as int).input(),
      readinessProbeTimeoutSeconds: map['readinessProbeTimeoutSeconds'] == null ? null : (map['readinessProbeTimeoutSeconds'] as int).input(),
      securityContextCapabilityAdds: map['securityContextCapabilityAdds'] == null ? null : ((map['securityContextCapabilityAdds'] as List).cast<String>()).input(),
      securityContextReadOnlyRootFileSystem: map['securityContextReadOnlyRootFileSystem'] == null ? null : (map['securityContextReadOnlyRootFileSystem'] as bool).input(),
      securityContextRunAsUser: map['securityContextRunAsUser'] == null ? null : (map['securityContextRunAsUser'] as int).input(),
      stdin: map['stdin'] == null ? null : (map['stdin'] as bool).input(),
      tty: map['tty'] == null ? null : (map['tty'] as bool).input(),
      volumeMounts: map['volumeMounts'] == null ? null : (pulumi.Input.decodeList<EciScalingConfigurationContainerVolumeMount>(map['volumeMounts'], (value) => EciScalingConfigurationContainerVolumeMount.fromMap((value as Map).cast<String, dynamic>()))).input(),
      workingDir: map['workingDir'] == null ? null : (map['workingDir'] as String).input(),
    );
  }
}

