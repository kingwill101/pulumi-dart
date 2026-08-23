// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'daemon_task_definition_container_definition_depends_on.dart';
import 'daemon_task_definition_container_definition_environment.dart';
import 'daemon_task_definition_container_definition_environment_file.dart';
import 'daemon_task_definition_container_definition_firelens_configuration.dart';
import 'daemon_task_definition_container_definition_health_check.dart';
import 'daemon_task_definition_container_definition_linux_parameters.dart';
import 'daemon_task_definition_container_definition_log_configuration.dart';
import 'daemon_task_definition_container_definition_mount_point.dart';
import 'daemon_task_definition_container_definition_repository_credentials.dart';
import 'daemon_task_definition_container_definition_restart_policy.dart';
import 'daemon_task_definition_container_definition_secret.dart';
import 'daemon_task_definition_container_definition_system_control.dart';
import 'daemon_task_definition_container_definition_ulimit.dart';

class DaemonTaskDefinitionContainerDefinition {
  /// Command that is passed to the container.
  final pulumi.Input<List<String>>? commands;
  /// Number of CPU units reserved for the container.
  final pulumi.Input<int>? cpu;
  /// Dependencies defined for container startup and shutdown. Detailed below.
  final pulumi.Input<List<DaemonTaskDefinitionContainerDefinitionDependsOn>>? dependsOns;
  /// Entry point that is passed to the container.
  final pulumi.Input<List<String>>? entryPoints;
  /// List of files containing the environment variables to pass to a container. Detailed below.
  final pulumi.Input<List<DaemonTaskDefinitionContainerDefinitionEnvironmentFile>>? environmentFiles;
  /// Environment variables to pass to a container. Detailed below.
  final pulumi.Input<List<DaemonTaskDefinitionContainerDefinitionEnvironment>>? environments;
  /// If the essential parameter of a container is marked as true, and that container fails or stops for any reason, all other containers that are part of the task are stopped.
  final pulumi.Input<bool>? essential;
  /// FireLens configuration for the container. Detailed below.
  final pulumi.Input<DaemonTaskDefinitionContainerDefinitionFirelensConfiguration>? firelensConfiguration;
  /// Container health check command and associated configuration parameters for the container. Detailed below.
  final pulumi.Input<DaemonTaskDefinitionContainerDefinitionHealthCheck>? healthCheck;
  /// Image used to start a container.
  final pulumi.Input<String> image;
  /// When this parameter is true, you can deploy containerized applications that require stdin or a tty to be allocated.
  final pulumi.Input<bool>? interactive;
  /// Linux-specific modifications that are applied to the container. Detailed below.
  final pulumi.Input<DaemonTaskDefinitionContainerDefinitionLinuxParameters>? linuxParameters;
  /// Log configuration specification for the container. Detailed below.
  final pulumi.Input<DaemonTaskDefinitionContainerDefinitionLogConfiguration>? logConfiguration;
  /// Amount (in MiB) of memory to present to the container.
  final pulumi.Input<int>? memory;
  /// Soft limit (in MiB) of memory to reserve for the container.
  final pulumi.Input<int>? memoryReservation;
  /// Mount points for data volumes in your container. Detailed below.
  final pulumi.Input<List<DaemonTaskDefinitionContainerDefinitionMountPoint>>? mountPoints;
  /// Name of a container.
  final pulumi.Input<String>? name;
  /// When this parameter is true, the container is given elevated privileges on the host container instance.
  final pulumi.Input<bool>? privileged;
  /// When this parameter is true, a TTY is allocated.
  final pulumi.Input<bool>? pseudoTerminal;
  /// When this parameter is true, the container is given read-only access to its root file system.
  final pulumi.Input<bool>? readonlyRootFilesystem;
  /// Private repository authentication credentials to use. Detailed below.
  final pulumi.Input<DaemonTaskDefinitionContainerDefinitionRepositoryCredentials>? repositoryCredentials;
  /// Restart policy for a container. Detailed below.
  final pulumi.Input<DaemonTaskDefinitionContainerDefinitionRestartPolicy>? restartPolicy;
  /// Secrets to pass to the container. Detailed below.
  final pulumi.Input<List<DaemonTaskDefinitionContainerDefinitionSecret>>? secrets;
  /// Time duration (in seconds) to wait before giving up on resolving dependencies for a container.
  final pulumi.Input<int>? startTimeout;
  /// Time duration (in seconds) to wait before the container is forcefully killed if it doesn't exit normally on its own.
  final pulumi.Input<int>? stopTimeout;
  /// List of namespaced kernel parameters to set in the container. Detailed below.
  final pulumi.Input<List<DaemonTaskDefinitionContainerDefinitionSystemControl>>? systemControls;
  /// List of ulimits to set in the container. Detailed below.
  final pulumi.Input<List<DaemonTaskDefinitionContainerDefinitionUlimit>>? ulimits;
  /// User to use inside the container.
  final pulumi.Input<String>? user;
  /// Working directory to run commands inside the container.
  final pulumi.Input<String>? workingDirectory;

  /// Creates a new [DaemonTaskDefinitionContainerDefinition].
  /// [commands] Command that is passed to the container.
  /// [cpu] Number of CPU units reserved for the container.
  /// [dependsOns] Dependencies defined for container startup and shutdown. Detailed below.
  /// [entryPoints] Entry point that is passed to the container.
  /// [environmentFiles] List of files containing the environment variables to pass to a container. Detailed below.
  /// [environments] Environment variables to pass to a container. Detailed below.
  /// [essential] If the essential parameter of a container is marked as true, and that container fails or stops for any reason, all other containers that are part of the task are stopped.
  /// [firelensConfiguration] FireLens configuration for the container. Detailed below.
  /// [healthCheck] Container health check command and associated configuration parameters for the container. Detailed below.
  /// [image] Image used to start a container.
  /// [interactive] When this parameter is true, you can deploy containerized applications that require stdin or a tty to be allocated.
  /// [linuxParameters] Linux-specific modifications that are applied to the container. Detailed below.
  /// [logConfiguration] Log configuration specification for the container. Detailed below.
  /// [memory] Amount (in MiB) of memory to present to the container.
  /// [memoryReservation] Soft limit (in MiB) of memory to reserve for the container.
  /// [mountPoints] Mount points for data volumes in your container. Detailed below.
  /// [name] Name of a container.
  /// [privileged] When this parameter is true, the container is given elevated privileges on the host container instance.
  /// [pseudoTerminal] When this parameter is true, a TTY is allocated.
  /// [readonlyRootFilesystem] When this parameter is true, the container is given read-only access to its root file system.
  /// [repositoryCredentials] Private repository authentication credentials to use. Detailed below.
  /// [restartPolicy] Restart policy for a container. Detailed below.
  /// [secrets] Secrets to pass to the container. Detailed below.
  /// [startTimeout] Time duration (in seconds) to wait before giving up on resolving dependencies for a container.
  /// [stopTimeout] Time duration (in seconds) to wait before the container is forcefully killed if it doesn't exit normally on its own.
  /// [systemControls] List of namespaced kernel parameters to set in the container. Detailed below.
  /// [ulimits] List of ulimits to set in the container. Detailed below.
  /// [user] User to use inside the container.
  /// [workingDirectory] Working directory to run commands inside the container.
  const DaemonTaskDefinitionContainerDefinition({
    this.commands,
    this.cpu,
    this.dependsOns,
    this.entryPoints,
    this.environmentFiles,
    this.environments,
    this.essential,
    this.firelensConfiguration,
    this.healthCheck,
    required this.image,
    this.interactive,
    this.linuxParameters,
    this.logConfiguration,
    this.memory,
    this.memoryReservation,
    this.mountPoints,
    this.name,
    this.privileged,
    this.pseudoTerminal,
    this.readonlyRootFilesystem,
    this.repositoryCredentials,
    this.restartPolicy,
    this.secrets,
    this.startTimeout,
    this.stopTimeout,
    this.systemControls,
    this.ulimits,
    this.user,
    this.workingDirectory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commands': ?commands,
      'cpu': ?cpu,
      'dependsOns': ?pulumi.Input.mapOptionalInputValue<List<DaemonTaskDefinitionContainerDefinitionDependsOn>, List<Map<String, dynamic>>>(dependsOns, (value) => pulumi.Input.encodeList<DaemonTaskDefinitionContainerDefinitionDependsOn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'entryPoints': ?entryPoints,
      'environmentFiles': ?pulumi.Input.mapOptionalInputValue<List<DaemonTaskDefinitionContainerDefinitionEnvironmentFile>, List<Map<String, dynamic>>>(environmentFiles, (value) => pulumi.Input.encodeList<DaemonTaskDefinitionContainerDefinitionEnvironmentFile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'environments': ?pulumi.Input.mapOptionalInputValue<List<DaemonTaskDefinitionContainerDefinitionEnvironment>, List<Map<String, dynamic>>>(environments, (value) => pulumi.Input.encodeList<DaemonTaskDefinitionContainerDefinitionEnvironment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'essential': ?essential,
      'firelensConfiguration': ?pulumi.Input.mapOptionalInputValue<DaemonTaskDefinitionContainerDefinitionFirelensConfiguration, Map<String, dynamic>>(firelensConfiguration, (value) => value.toMap()),
      'healthCheck': ?pulumi.Input.mapOptionalInputValue<DaemonTaskDefinitionContainerDefinitionHealthCheck, Map<String, dynamic>>(healthCheck, (value) => value.toMap()),
      'image': image,
      'interactive': ?interactive,
      'linuxParameters': ?pulumi.Input.mapOptionalInputValue<DaemonTaskDefinitionContainerDefinitionLinuxParameters, Map<String, dynamic>>(linuxParameters, (value) => value.toMap()),
      'logConfiguration': ?pulumi.Input.mapOptionalInputValue<DaemonTaskDefinitionContainerDefinitionLogConfiguration, Map<String, dynamic>>(logConfiguration, (value) => value.toMap()),
      'memory': ?memory,
      'memoryReservation': ?memoryReservation,
      'mountPoints': ?pulumi.Input.mapOptionalInputValue<List<DaemonTaskDefinitionContainerDefinitionMountPoint>, List<Map<String, dynamic>>>(mountPoints, (value) => pulumi.Input.encodeList<DaemonTaskDefinitionContainerDefinitionMountPoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'privileged': ?privileged,
      'pseudoTerminal': ?pseudoTerminal,
      'readonlyRootFilesystem': ?readonlyRootFilesystem,
      'repositoryCredentials': ?pulumi.Input.mapOptionalInputValue<DaemonTaskDefinitionContainerDefinitionRepositoryCredentials, Map<String, dynamic>>(repositoryCredentials, (value) => value.toMap()),
      'restartPolicy': ?pulumi.Input.mapOptionalInputValue<DaemonTaskDefinitionContainerDefinitionRestartPolicy, Map<String, dynamic>>(restartPolicy, (value) => value.toMap()),
      'secrets': ?pulumi.Input.mapOptionalInputValue<List<DaemonTaskDefinitionContainerDefinitionSecret>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<DaemonTaskDefinitionContainerDefinitionSecret, Map<String, dynamic>>(value, (value) => value.toMap())),
      'startTimeout': ?startTimeout,
      'stopTimeout': ?stopTimeout,
      'systemControls': ?pulumi.Input.mapOptionalInputValue<List<DaemonTaskDefinitionContainerDefinitionSystemControl>, List<Map<String, dynamic>>>(systemControls, (value) => pulumi.Input.encodeList<DaemonTaskDefinitionContainerDefinitionSystemControl, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ulimits': ?pulumi.Input.mapOptionalInputValue<List<DaemonTaskDefinitionContainerDefinitionUlimit>, List<Map<String, dynamic>>>(ulimits, (value) => pulumi.Input.encodeList<DaemonTaskDefinitionContainerDefinitionUlimit, Map<String, dynamic>>(value, (value) => value.toMap())),
      'user': ?user,
      'workingDirectory': ?workingDirectory,
    };
  }

  factory DaemonTaskDefinitionContainerDefinition.fromMap(Map<String, dynamic> map) {
    return DaemonTaskDefinitionContainerDefinition(
      commands: (() { final guardedValue = map['commands']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dependsOns: (() { final guardedValue = map['dependsOns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DaemonTaskDefinitionContainerDefinitionDependsOn>(guardedValue, (value) => DaemonTaskDefinitionContainerDefinitionDependsOn.fromMap((value as Map).cast<String, dynamic>()))); })(),
      entryPoints: (() { final guardedValue = map['entryPoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      environmentFiles: (() { final guardedValue = map['environmentFiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DaemonTaskDefinitionContainerDefinitionEnvironmentFile>(guardedValue, (value) => DaemonTaskDefinitionContainerDefinitionEnvironmentFile.fromMap((value as Map).cast<String, dynamic>()))); })(),
      environments: (() { final guardedValue = map['environments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DaemonTaskDefinitionContainerDefinitionEnvironment>(guardedValue, (value) => DaemonTaskDefinitionContainerDefinitionEnvironment.fromMap((value as Map).cast<String, dynamic>()))); })(),
      essential: (() { final guardedValue = map['essential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      firelensConfiguration: (() { final guardedValue = map['firelensConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DaemonTaskDefinitionContainerDefinitionFirelensConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      healthCheck: (() { final guardedValue = map['healthCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DaemonTaskDefinitionContainerDefinitionHealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      image: pulumi.Input.fromValue(map['image'] as String),
      interactive: (() { final guardedValue = map['interactive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      linuxParameters: (() { final guardedValue = map['linuxParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DaemonTaskDefinitionContainerDefinitionLinuxParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logConfiguration: (() { final guardedValue = map['logConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DaemonTaskDefinitionContainerDefinitionLogConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      memory: (() { final guardedValue = map['memory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      memoryReservation: (() { final guardedValue = map['memoryReservation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      mountPoints: (() { final guardedValue = map['mountPoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DaemonTaskDefinitionContainerDefinitionMountPoint>(guardedValue, (value) => DaemonTaskDefinitionContainerDefinitionMountPoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privileged: (() { final guardedValue = map['privileged']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      pseudoTerminal: (() { final guardedValue = map['pseudoTerminal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      readonlyRootFilesystem: (() { final guardedValue = map['readonlyRootFilesystem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      repositoryCredentials: (() { final guardedValue = map['repositoryCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DaemonTaskDefinitionContainerDefinitionRepositoryCredentials.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      restartPolicy: (() { final guardedValue = map['restartPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DaemonTaskDefinitionContainerDefinitionRestartPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secrets: (() { final guardedValue = map['secrets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DaemonTaskDefinitionContainerDefinitionSecret>(guardedValue, (value) => DaemonTaskDefinitionContainerDefinitionSecret.fromMap((value as Map).cast<String, dynamic>()))); })(),
      startTimeout: (() { final guardedValue = map['startTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      stopTimeout: (() { final guardedValue = map['stopTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      systemControls: (() { final guardedValue = map['systemControls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DaemonTaskDefinitionContainerDefinitionSystemControl>(guardedValue, (value) => DaemonTaskDefinitionContainerDefinitionSystemControl.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ulimits: (() { final guardedValue = map['ulimits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DaemonTaskDefinitionContainerDefinitionUlimit>(guardedValue, (value) => DaemonTaskDefinitionContainerDefinitionUlimit.fromMap((value as Map).cast<String, dynamic>()))); })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workingDirectory: (() { final guardedValue = map['workingDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
