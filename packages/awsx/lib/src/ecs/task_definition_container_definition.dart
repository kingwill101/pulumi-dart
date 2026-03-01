// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'task_definition_container_dependency.dart';
import 'task_definition_environment_file.dart';
import 'task_definition_firelens_configuration.dart';
import 'task_definition_health_check.dart';
import 'task_definition_host_entry.dart';
import 'task_definition_key_value_pair.dart';
import 'task_definition_linux_parameters.dart';
import 'task_definition_log_configuration.dart';
import 'task_definition_mount_point.dart';
import 'task_definition_port_mapping.dart';
import 'task_definition_repository_credentials.dart';
import 'task_definition_resource_requirement.dart';
import 'task_definition_secret.dart';
import 'task_definition_system_control.dart';
import 'task_definition_ulimit.dart';
import 'task_definition_volume_from.dart';

/// List of container definitions that are passed to the Docker daemon on a container instance
class TaskDefinitionContainerDefinition {
  final List<String>? command;
  final int? cpu;
  final List<TaskDefinitionContainerDependency>? dependsOn;
  final bool? disableNetworking;
  final List<String>? dnsSearchDomains;
  final List<String>? dnsServers;
  final dynamic dockerLabels;
  final List<String>? dockerSecurityOptions;
  final List<String>? entryPoint;

  /// The environment variables to pass to a container
  final List<TaskDefinitionKeyValuePair>? environment;

  /// The list of one or more files that contain the environment variables to pass to a container
  final List<TaskDefinitionEnvironmentFile>? environmentFiles;
  final bool? essential;
  final List<TaskDefinitionHostEntry>? extraHosts;
  final TaskDefinitionFirelensConfiguration? firelensConfiguration;
  final TaskDefinitionHealthCheck? healthCheck;
  final String? hostname;

  /// The image used to start a container. This string is passed directly to the Docker daemon.
  final String image;
  final bool? interactive;
  final List<String>? links;
  final TaskDefinitionLinuxParameters? linuxParameters;
  final TaskDefinitionLogConfiguration? logConfiguration;

  /// The amount (in MiB) of memory to present to the container. If your container attempts to exceed the memory specified here, the container is killed.
  final int? memory;
  final int? memoryReservation;
  final List<TaskDefinitionMountPoint>? mountPoints;

  /// The name of a container. Up to 255 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed
  final String name;

  /// Port mappings allow containers to access ports on the host container instance to send or receive traffic.
  final List<TaskDefinitionPortMapping>? portMappings;
  final bool? privileged;
  final bool? pseudoTerminal;
  final bool? readonlyRootFilesystem;
  final TaskDefinitionRepositoryCredentials? repositoryCredentials;
  final List<TaskDefinitionResourceRequirement>? resourceRequirements;
  final List<TaskDefinitionSecret>? secrets;
  final int? startTimeout;
  final int? stopTimeout;
  final List<TaskDefinitionSystemControl>? systemControls;
  final List<TaskDefinitionUlimit>? ulimits;
  final String? user;
  final List<TaskDefinitionVolumeFrom>? volumesFrom;
  final String? workingDirectory;

  /// Creates a new [TaskDefinitionContainerDefinition].
  /// [command] Optional.
  /// [cpu] Optional.
  /// [dependsOn] Optional.
  /// [disableNetworking] Optional.
  /// [dnsSearchDomains] Optional.
  /// [dnsServers] Optional.
  /// [dockerLabels] Optional.
  /// [dockerSecurityOptions] Optional.
  /// [entryPoint] Optional.
  /// [environment] The environment variables to pass to a container
  /// [environmentFiles] The list of one or more files that contain the environment variables to pass to a container
  /// [essential] Optional.
  /// [extraHosts] Optional.
  /// [firelensConfiguration] Optional.
  /// [healthCheck] Optional.
  /// [hostname] Optional.
  /// [image] The image used to start a container. This string is passed directly to the Docker daemon.
  /// [interactive] Optional.
  /// [links] Optional.
  /// [linuxParameters] Optional.
  /// [logConfiguration] Optional.
  /// [memory] The amount (in MiB) of memory to present to the container. If your container attempts to exceed the memory specified here, the container is killed.
  /// [memoryReservation] Optional.
  /// [mountPoints] Optional.
  /// [name] The name of a container. Up to 255 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed
  /// [portMappings] Port mappings allow containers to access ports on the host container instance to send or receive traffic.
  /// [privileged] Optional.
  /// [pseudoTerminal] Optional.
  /// [readonlyRootFilesystem] Optional.
  /// [repositoryCredentials] Optional.
  /// [resourceRequirements] Optional.
  /// [secrets] Optional.
  /// [startTimeout] Optional.
  /// [stopTimeout] Optional.
  /// [systemControls] Optional.
  /// [ulimits] Optional.
  /// [user] Optional.
  /// [volumesFrom] Optional.
  /// [workingDirectory] Optional.
  TaskDefinitionContainerDefinition({
    this.command,
    this.cpu,
    this.dependsOn,
    this.disableNetworking,
    this.dnsSearchDomains,
    this.dnsServers,
    this.dockerLabels,
    this.dockerSecurityOptions,
    this.entryPoint,
    this.environment,
    this.environmentFiles,
    this.essential,
    this.extraHosts,
    this.firelensConfiguration,
    this.healthCheck,
    this.hostname,
    required this.image,
    this.interactive,
    this.links,
    this.linuxParameters,
    this.logConfiguration,
    this.memory,
    this.memoryReservation,
    this.mountPoints,
    required this.name,
    this.portMappings,
    this.privileged,
    this.pseudoTerminal,
    this.readonlyRootFilesystem,
    this.repositoryCredentials,
    this.resourceRequirements,
    this.secrets,
    this.startTimeout,
    this.stopTimeout,
    this.systemControls,
    this.ulimits,
    this.user,
    this.volumesFrom,
    this.workingDirectory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'command': ?command,
      'cpu': ?cpu,
      'dependsOn': ?dependsOn == null
          ? null
          : pulumi.Input.encodeList<
              TaskDefinitionContainerDependency,
              Map<String, dynamic>
            >(dependsOn!, (value) => value.toMap()),
      'disableNetworking': ?disableNetworking,
      'dnsSearchDomains': ?dnsSearchDomains,
      'dnsServers': ?dnsServers,
      'dockerLabels': ?dockerLabels,
      'dockerSecurityOptions': ?dockerSecurityOptions,
      'entryPoint': ?entryPoint,
      'environment': ?environment == null
          ? null
          : pulumi.Input.encodeList<
              TaskDefinitionKeyValuePair,
              Map<String, dynamic>
            >(environment!, (value) => value.toMap()),
      'environmentFiles': ?environmentFiles == null
          ? null
          : pulumi.Input.encodeList<
              TaskDefinitionEnvironmentFile,
              Map<String, dynamic>
            >(environmentFiles!, (value) => value.toMap()),
      'essential': ?essential,
      'extraHosts': ?extraHosts == null
          ? null
          : pulumi.Input.encodeList<
              TaskDefinitionHostEntry,
              Map<String, dynamic>
            >(extraHosts!, (value) => value.toMap()),
      'firelensConfiguration': ?firelensConfiguration == null
          ? null
          : firelensConfiguration!.toMap(),
      'healthCheck': ?healthCheck == null ? null : healthCheck!.toMap(),
      'hostname': ?hostname,
      'image': image,
      'interactive': ?interactive,
      'links': ?links,
      'linuxParameters': ?linuxParameters == null
          ? null
          : linuxParameters!.toMap(),
      'logConfiguration': ?logConfiguration == null
          ? null
          : logConfiguration!.toMap(),
      'memory': ?memory,
      'memoryReservation': ?memoryReservation,
      'mountPoints': ?mountPoints == null
          ? null
          : pulumi.Input.encodeList<
              TaskDefinitionMountPoint,
              Map<String, dynamic>
            >(mountPoints!, (value) => value.toMap()),
      'name': name,
      'portMappings': ?portMappings == null
          ? null
          : pulumi.Input.encodeList<
              TaskDefinitionPortMapping,
              Map<String, dynamic>
            >(portMappings!, (value) => value.toMap()),
      'privileged': ?privileged,
      'pseudoTerminal': ?pseudoTerminal,
      'readonlyRootFilesystem': ?readonlyRootFilesystem,
      'repositoryCredentials': ?repositoryCredentials == null
          ? null
          : repositoryCredentials!.toMap(),
      'resourceRequirements': ?resourceRequirements == null
          ? null
          : pulumi.Input.encodeList<
              TaskDefinitionResourceRequirement,
              Map<String, dynamic>
            >(resourceRequirements!, (value) => value.toMap()),
      'secrets': ?secrets == null
          ? null
          : pulumi.Input.encodeList<TaskDefinitionSecret, Map<String, dynamic>>(
              secrets!,
              (value) => value.toMap(),
            ),
      'startTimeout': ?startTimeout,
      'stopTimeout': ?stopTimeout,
      'systemControls': ?systemControls == null
          ? null
          : pulumi.Input.encodeList<
              TaskDefinitionSystemControl,
              Map<String, dynamic>
            >(systemControls!, (value) => value.toMap()),
      'ulimits': ?ulimits == null
          ? null
          : pulumi.Input.encodeList<TaskDefinitionUlimit, Map<String, dynamic>>(
              ulimits!,
              (value) => value.toMap(),
            ),
      'user': ?user,
      'volumesFrom': ?volumesFrom == null
          ? null
          : pulumi.Input.encodeList<
              TaskDefinitionVolumeFrom,
              Map<String, dynamic>
            >(volumesFrom!, (value) => value.toMap()),
      'workingDirectory': ?workingDirectory,
    };
  }

  factory TaskDefinitionContainerDefinition.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionContainerDefinition(
      command: map['command'] == null
          ? null
          : (map['command'] as List).cast<String>(),
      cpu: map['cpu'] == null ? null : map['cpu'] as int,
      dependsOn: map['dependsOn'] == null
          ? null
          : pulumi.Input.decodeList<TaskDefinitionContainerDependency>(
              map['dependsOn'],
              (value) => TaskDefinitionContainerDependency.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      disableNetworking: map['disableNetworking'] == null
          ? null
          : map['disableNetworking'] as bool,
      dnsSearchDomains: map['dnsSearchDomains'] == null
          ? null
          : (map['dnsSearchDomains'] as List).cast<String>(),
      dnsServers: map['dnsServers'] == null
          ? null
          : (map['dnsServers'] as List).cast<String>(),
      dockerLabels: map['dockerLabels'] == null ? null : map['dockerLabels'],
      dockerSecurityOptions: map['dockerSecurityOptions'] == null
          ? null
          : (map['dockerSecurityOptions'] as List).cast<String>(),
      entryPoint: map['entryPoint'] == null
          ? null
          : (map['entryPoint'] as List).cast<String>(),
      environment: map['environment'] == null
          ? null
          : pulumi.Input.decodeList<TaskDefinitionKeyValuePair>(
              map['environment'],
              (value) => TaskDefinitionKeyValuePair.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      environmentFiles: map['environmentFiles'] == null
          ? null
          : pulumi.Input.decodeList<TaskDefinitionEnvironmentFile>(
              map['environmentFiles'],
              (value) => TaskDefinitionEnvironmentFile.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      essential: map['essential'] == null ? null : map['essential'] as bool,
      extraHosts: map['extraHosts'] == null
          ? null
          : pulumi.Input.decodeList<TaskDefinitionHostEntry>(
              map['extraHosts'],
              (value) => TaskDefinitionHostEntry.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      firelensConfiguration: map['firelensConfiguration'] == null
          ? null
          : TaskDefinitionFirelensConfiguration.fromMap(
              (map['firelensConfiguration'] as Map).cast<String, dynamic>(),
            ),
      healthCheck: map['healthCheck'] == null
          ? null
          : TaskDefinitionHealthCheck.fromMap(
              (map['healthCheck'] as Map).cast<String, dynamic>(),
            ),
      hostname: map['hostname'] == null ? null : map['hostname'] as String,
      image: map['image'] as String,
      interactive: map['interactive'] == null
          ? null
          : map['interactive'] as bool,
      links: map['links'] == null
          ? null
          : (map['links'] as List).cast<String>(),
      linuxParameters: map['linuxParameters'] == null
          ? null
          : TaskDefinitionLinuxParameters.fromMap(
              (map['linuxParameters'] as Map).cast<String, dynamic>(),
            ),
      logConfiguration: map['logConfiguration'] == null
          ? null
          : TaskDefinitionLogConfiguration.fromMap(
              (map['logConfiguration'] as Map).cast<String, dynamic>(),
            ),
      memory: map['memory'] == null ? null : map['memory'] as int,
      memoryReservation: map['memoryReservation'] == null
          ? null
          : map['memoryReservation'] as int,
      mountPoints: map['mountPoints'] == null
          ? null
          : pulumi.Input.decodeList<TaskDefinitionMountPoint>(
              map['mountPoints'],
              (value) => TaskDefinitionMountPoint.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      name: map['name'] as String,
      portMappings: map['portMappings'] == null
          ? null
          : pulumi.Input.decodeList<TaskDefinitionPortMapping>(
              map['portMappings'],
              (value) => TaskDefinitionPortMapping.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      privileged: map['privileged'] == null ? null : map['privileged'] as bool,
      pseudoTerminal: map['pseudoTerminal'] == null
          ? null
          : map['pseudoTerminal'] as bool,
      readonlyRootFilesystem: map['readonlyRootFilesystem'] == null
          ? null
          : map['readonlyRootFilesystem'] as bool,
      repositoryCredentials: map['repositoryCredentials'] == null
          ? null
          : TaskDefinitionRepositoryCredentials.fromMap(
              (map['repositoryCredentials'] as Map).cast<String, dynamic>(),
            ),
      resourceRequirements: map['resourceRequirements'] == null
          ? null
          : pulumi.Input.decodeList<TaskDefinitionResourceRequirement>(
              map['resourceRequirements'],
              (value) => TaskDefinitionResourceRequirement.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      secrets: map['secrets'] == null
          ? null
          : pulumi.Input.decodeList<TaskDefinitionSecret>(
              map['secrets'],
              (value) => TaskDefinitionSecret.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      startTimeout: map['startTimeout'] == null
          ? null
          : map['startTimeout'] as int,
      stopTimeout: map['stopTimeout'] == null
          ? null
          : map['stopTimeout'] as int,
      systemControls: map['systemControls'] == null
          ? null
          : pulumi.Input.decodeList<TaskDefinitionSystemControl>(
              map['systemControls'],
              (value) => TaskDefinitionSystemControl.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      ulimits: map['ulimits'] == null
          ? null
          : pulumi.Input.decodeList<TaskDefinitionUlimit>(
              map['ulimits'],
              (value) => TaskDefinitionUlimit.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      user: map['user'] == null ? null : map['user'] as String,
      volumesFrom: map['volumesFrom'] == null
          ? null
          : pulumi.Input.decodeList<TaskDefinitionVolumeFrom>(
              map['volumesFrom'],
              (value) => TaskDefinitionVolumeFrom.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      workingDirectory: map['workingDirectory'] == null
          ? null
          : map['workingDirectory'] as String,
    );
  }
}
