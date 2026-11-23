// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'awsvpc_port_mapping.dart';
import 'container_dependency.dart';
import 'container_health_check.dart';
import 'container_logging.dart';
import 'environment_file.dart';
import 'environment_variable.dart';
import 'fargate_credential_spec.dart';
import 'linux_parameters.dart';
import 'system_control.dart';
import 'ulimit.dart';
import 'volume_from.dart';

class ContainerDefinition {
  /// The command passed to the container.
  ///
  /// Default - The command configured in the container image.
  final pulumi.Input<List<String>?>? command;
  /// CPU units reserved for this container. Within a task CPU limit, these control relative shares
  /// under contention.
  ///
  /// Default - No minimum CPU reservation.
  final pulumi.Input<double?>? cpuUnits;
  /// Domainless Active Directory authentication using an S3 credential specification. This component
  /// currently supports this integration only for Fargate-only tasks.
  ///
  /// Default - No Active Directory authentication.
  final pulumi.Input<FargateCredentialSpec?>? credentialSpec;
  /// Startup ordering dependencies on other containers. ECS reverses them during shutdown.
  ///
  /// Default - No dependencies.
  final pulumi.Input<List<ContainerDependency>?>? dependsOn;
  /// Labels to add to the container.
  ///
  /// Default - No labels.
  final pulumi.Input<Map<String, String>?>? dockerLabels;
  /// The entry point passed to the container.
  ///
  /// Default - The entry point configured in the container image.
  ///
  /// For more information, see [Dockerfile
  /// ENTRYPOINT](https://docs.docker.com/reference/dockerfile/#entrypoint).
  final pulumi.Input<List<String>?>? entryPoint;
  /// Environment variables keyed by name, including ordinary values, Pulumi secret-marked values,
  /// and references to existing SSM parameters or Secrets Manager secrets.
  ///
  /// Default - No environment variables.
  final pulumi.Input<Map<String, EnvironmentVariable>?>? environment;
  /// Environment files passed to the container.
  final pulumi.Input<List<EnvironmentFile>?>? environmentFiles;
  /// Whether the container is essential to the task.
  ///
  /// If an essential container stops, ECS stops all other containers in the task. Each task must
  /// have at least one essential container.
  ///
  /// Default - `true`.
  final pulumi.Input<bool?>? essential;
  /// Positive whole number of physical GPUs reserved for this container. Does not work with Fargate
  /// capability
  ///
  /// Default - No GPUs.
  final pulumi.Input<double?>? gpuCount;
  /// The health check command and settings for the container.
  ///
  /// Use a health check when the container can remain running while the application is unhealthy,
  /// such as an unresponsive server or a worker that has stopped processing jobs. A health check is
  /// not required merely to validate startup configuration if the application exits when that
  /// validation fails.
  ///
  /// ECS services can replace tasks with unhealthy essential containers. A health check does not
  /// provide automatic replacement for standalone tasks.
  ///
  /// ECS only monitors health checks specified in the task definition. It does not monitor a health
  /// check configured only in the container image.
  ///
  /// Default - No ECS container health check.
  ///
  /// For more information, see [Determine Amazon ECS task health using container health
  /// checks](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/healthcheck.html).
  final pulumi.Input<ContainerHealthCheck?>? healthCheck;
  /// The image used to start the container.
  final pulumi.Input<String> image;
  /// Whether to keep standard input open for the container when no client is attached.
  ///
  /// Default - `false`.
  final pulumi.Input<bool?>? interactive;
  /// Linux capability and init-process settings. Fargate permits adding only SYS_PTRACE.
  final pulumi.Input<LinuxParameters?>? linuxParameters;
  /// Log collection. AWSX grants the execution role access to the configured log group.
  ///
  /// Default - CloudWatch logging with a shared log group created by this component.
  final pulumi.Input<ContainerLogging?>? logging;
  /// Hard memory limit in MiB. ECS stops the container if it exceeds this limit. Must exceed
  /// memoryReservationMiB when both are set.
  ///
  /// Default - No container-level hard memory limit. A task memory limit or container reservation is
  /// required.
  final pulumi.Input<double?>? memoryMiB;
  /// Soft memory reservation in MiB. The container can grow beyond this reservation when memory is
  /// available, up to its hard limit or the task's shared memory limit.
  ///
  /// Default - No soft memory reservation.
  final pulumi.Input<double?>? memoryReservationMiB;
  /// Ports exposed on the task's network interface.
  final pulumi.Input<List<AwsvpcPortMapping>?>? portMappings;
  /// Run with elevated host privileges. Not supported by Fargate.
  ///
  /// Default - false.
  final pulumi.Input<bool?>? privileged;
  /// Whether to allocate a TTY for the container.
  ///
  /// Default - `false`.
  final pulumi.Input<bool?>? pseudoTerminal;
  /// Whether the container has read-only access to its root file system.
  ///
  /// Default - `false`.
  final pulumi.Input<bool?>? readonlyRootFilesystem;
  /// Time in seconds to wait for this container's startup dependencies to become ready.
  ///
  /// Fargate accepts 2 through 120 seconds. Managed Instances allows up to 600 seconds. EC2 allows
  /// up to 120 seconds. Every selected compatibility's limit applies.
  ///
  /// Default - No container-specific startup timeout.
  final pulumi.Input<double?>? startTimeoutSeconds;
  /// Time in seconds to wait before forcefully stopping a container that does not exit normally.
  ///
  /// Fargate accepts 2 through 120 seconds. Managed Instances allows up to 86400 seconds. EC2 uses
  /// the container agent's timeout when this is omitted.
  ///
  /// Default - 30 seconds, or the EC2 container agent's configured stop timeout.
  final pulumi.Input<double?>? stopTimeoutSeconds;
  /// Namespaced kernel parameters to set in the container.
  ///
  /// Default - No system controls.
  ///
  /// For more information, see [System
  /// controls](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html#container_definition_systemcontrols).
  final pulumi.Input<List<SystemControl>?>? systemControls;
  /// Linux resource limits. Explicit values override runtime defaults.
  ///
  /// Default - Runtime defaults.
  final pulumi.Input<List<Ulimit>?>? ulimits;
  /// The user that runs commands inside the container.
  ///
  /// The value can be a user name, user ID, or a user and group pair supported by the container
  /// operating system. This property is not supported for Windows containers.
  ///
  /// Default - The user configured in the container image, or the root user if the image does not
  /// configure one.
  final pulumi.Input<String?>? user;
  /// Whether ECS resolves image tags to digests so service tasks use a consistent image version.
  ///
  /// Default - true.
  final pulumi.Input<bool?>? versionConsistencyEnabled;
  /// Data volumes to mount from another container in the same task.
  ///
  /// Each entry identifies the source container and whether this container has read-only access to
  /// its volumes.
  ///
  /// Default - No inherited volumes.
  final pulumi.Input<List<VolumeFrom>?>? volumesFrom;
  /// The working directory in which commands run inside the container.
  ///
  /// Default - The working directory configured in the container image, or `/` if the image does not
  /// configure one.
  final pulumi.Input<String?>? workingDirectory;

  /// Creates a new [ContainerDefinition].
  /// [command] The command passed to the container.
  /// [cpuUnits] CPU units reserved for this container. Within a task CPU limit, these control relative shares
  /// [credentialSpec] Domainless Active Directory authentication using an S3 credential specification. This component
  /// [dependsOn] Startup ordering dependencies on other containers. ECS reverses them during shutdown.
  /// [dockerLabels] Labels to add to the container.
  /// [entryPoint] The entry point passed to the container.
  /// [environment] Environment variables keyed by name, including ordinary values, Pulumi secret-marked values,
  /// [environmentFiles] Environment files passed to the container.
  /// [essential] Whether the container is essential to the task.
  /// [gpuCount] Positive whole number of physical GPUs reserved for this container. Does not work with Fargate
  /// [healthCheck] The health check command and settings for the container.
  /// [image] The image used to start the container.
  /// [interactive] Whether to keep standard input open for the container when no client is attached.
  /// [linuxParameters] Linux capability and init-process settings. Fargate permits adding only SYS_PTRACE.
  /// [logging] Log collection. AWSX grants the execution role access to the configured log group.
  /// [memoryMiB] Hard memory limit in MiB. ECS stops the container if it exceeds this limit. Must exceed
  /// [memoryReservationMiB] Soft memory reservation in MiB. The container can grow beyond this reservation when memory is
  /// [portMappings] Ports exposed on the task's network interface.
  /// [privileged] Run with elevated host privileges. Not supported by Fargate.
  /// [pseudoTerminal] Whether to allocate a TTY for the container.
  /// [readonlyRootFilesystem] Whether the container has read-only access to its root file system.
  /// [startTimeoutSeconds] Time in seconds to wait for this container's startup dependencies to become ready.
  /// [stopTimeoutSeconds] Time in seconds to wait before forcefully stopping a container that does not exit normally.
  /// [systemControls] Namespaced kernel parameters to set in the container.
  /// [ulimits] Linux resource limits. Explicit values override runtime defaults.
  /// [user] The user that runs commands inside the container.
  /// [versionConsistencyEnabled] Whether ECS resolves image tags to digests so service tasks use a consistent image version.
  /// [volumesFrom] Data volumes to mount from another container in the same task.
  /// [workingDirectory] The working directory in which commands run inside the container.
  const ContainerDefinition({
    this.command,
    this.cpuUnits,
    this.credentialSpec,
    this.dependsOn,
    this.dockerLabels,
    this.entryPoint,
    this.environment,
    this.environmentFiles,
    this.essential,
    this.gpuCount,
    this.healthCheck,
    required this.image,
    this.interactive,
    this.linuxParameters,
    this.logging,
    this.memoryMiB,
    this.memoryReservationMiB,
    this.portMappings,
    this.privileged,
    this.pseudoTerminal,
    this.readonlyRootFilesystem,
    this.startTimeoutSeconds,
    this.stopTimeoutSeconds,
    this.systemControls,
    this.ulimits,
    this.user,
    this.versionConsistencyEnabled,
    this.volumesFrom,
    this.workingDirectory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'command': ?command,
      'cpuUnits': ?cpuUnits,
      'credentialSpec': ?pulumi.Input.mapOptionalInputValue<FargateCredentialSpec, Map<String, dynamic>>(credentialSpec, (value) => value.toMap()),
      'dependsOn': ?pulumi.Input.mapOptionalInputValue<List<ContainerDependency>, List<Map<String, dynamic>>>(dependsOn, (value) => pulumi.Input.encodeList<ContainerDependency, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dockerLabels': ?dockerLabels,
      'entryPoint': ?entryPoint,
      'environment': ?pulumi.Input.mapOptionalInputValue<Map<String, EnvironmentVariable>, Map<String, Map<String, dynamic>>>(environment, (value) => pulumi.Input.encodeMapValues<EnvironmentVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'environmentFiles': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentFile>, List<Map<String, dynamic>>>(environmentFiles, (value) => pulumi.Input.encodeList<EnvironmentFile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'essential': ?essential,
      'gpuCount': ?gpuCount,
      'healthCheck': ?pulumi.Input.mapOptionalInputValue<ContainerHealthCheck, Map<String, dynamic>>(healthCheck, (value) => value.toMap()),
      'image': image,
      'interactive': ?interactive,
      'linuxParameters': ?pulumi.Input.mapOptionalInputValue<LinuxParameters, Map<String, dynamic>>(linuxParameters, (value) => value.toMap()),
      'logging': ?pulumi.Input.mapOptionalInputValue<ContainerLogging, Map<String, dynamic>>(logging, (value) => value.toMap()),
      'memoryMiB': ?memoryMiB,
      'memoryReservationMiB': ?memoryReservationMiB,
      'portMappings': ?pulumi.Input.mapOptionalInputValue<List<AwsvpcPortMapping>, List<Map<String, dynamic>>>(portMappings, (value) => pulumi.Input.encodeList<AwsvpcPortMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privileged': ?privileged,
      'pseudoTerminal': ?pseudoTerminal,
      'readonlyRootFilesystem': ?readonlyRootFilesystem,
      'startTimeoutSeconds': ?startTimeoutSeconds,
      'stopTimeoutSeconds': ?stopTimeoutSeconds,
      'systemControls': ?pulumi.Input.mapOptionalInputValue<List<SystemControl>, List<Map<String, dynamic>>>(systemControls, (value) => pulumi.Input.encodeList<SystemControl, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ulimits': ?pulumi.Input.mapOptionalInputValue<List<Ulimit>, List<Map<String, dynamic>>>(ulimits, (value) => pulumi.Input.encodeList<Ulimit, Map<String, dynamic>>(value, (value) => value.toMap())),
      'user': ?user,
      'versionConsistencyEnabled': ?versionConsistencyEnabled,
      'volumesFrom': ?pulumi.Input.mapOptionalInputValue<List<VolumeFrom>, List<Map<String, dynamic>>>(volumesFrom, (value) => pulumi.Input.encodeList<VolumeFrom, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workingDirectory': ?workingDirectory,
    };
  }

  factory ContainerDefinition.fromMap(Map<String, dynamic> map) {
    return ContainerDefinition(
      command: (() { final guardedValue = map['command']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      cpuUnits: (() { final guardedValue = map['cpuUnits']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      credentialSpec: (() { final guardedValue = map['credentialSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FargateCredentialSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dependsOn: (() { final guardedValue = map['dependsOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerDependency>(guardedValue, (value) => ContainerDependency.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dockerLabels: (() { final guardedValue = map['dockerLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      entryPoint: (() { final guardedValue = map['entryPoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<EnvironmentVariable>(guardedValue, (value) => EnvironmentVariable.fromMap((value as Map).cast<String, dynamic>()))); })(),
      environmentFiles: (() { final guardedValue = map['environmentFiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnvironmentFile>(guardedValue, (value) => EnvironmentFile.fromMap((value as Map).cast<String, dynamic>()))); })(),
      essential: (() { final guardedValue = map['essential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      gpuCount: (() { final guardedValue = map['gpuCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      healthCheck: (() { final guardedValue = map['healthCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerHealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      image: pulumi.Input.fromValue(map['image'] as String),
      interactive: (() { final guardedValue = map['interactive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      linuxParameters: (() { final guardedValue = map['linuxParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinuxParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logging: (() { final guardedValue = map['logging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerLogging.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      memoryMiB: (() { final guardedValue = map['memoryMiB']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      memoryReservationMiB: (() { final guardedValue = map['memoryReservationMiB']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      portMappings: (() { final guardedValue = map['portMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AwsvpcPortMapping>(guardedValue, (value) => AwsvpcPortMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      privileged: (() { final guardedValue = map['privileged']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      pseudoTerminal: (() { final guardedValue = map['pseudoTerminal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      readonlyRootFilesystem: (() { final guardedValue = map['readonlyRootFilesystem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      startTimeoutSeconds: (() { final guardedValue = map['startTimeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      stopTimeoutSeconds: (() { final guardedValue = map['stopTimeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      systemControls: (() { final guardedValue = map['systemControls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SystemControl>(guardedValue, (value) => SystemControl.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ulimits: (() { final guardedValue = map['ulimits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Ulimit>(guardedValue, (value) => Ulimit.fromMap((value as Map).cast<String, dynamic>()))); })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionConsistencyEnabled: (() { final guardedValue = map['versionConsistencyEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      volumesFrom: (() { final guardedValue = map['volumesFrom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VolumeFrom>(guardedValue, (value) => VolumeFrom.fromMap((value as Map).cast<String, dynamic>()))); })(),
      workingDirectory: (() { final guardedValue = map['workingDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
