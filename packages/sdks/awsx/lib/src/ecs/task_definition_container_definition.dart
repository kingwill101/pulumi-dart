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
  final pulumi.Input<List<String>>? command;
  final pulumi.Input<int>? cpu;
  final pulumi.Input<List<TaskDefinitionContainerDependency>>? dependsOn;
  final pulumi.Input<bool>? disableNetworking;
  final pulumi.Input<List<String>>? dnsSearchDomains;
  final pulumi.Input<List<String>>? dnsServers;
  final pulumi.Input<dynamic>? dockerLabels;
  final pulumi.Input<List<String>>? dockerSecurityOptions;
  final pulumi.Input<List<String>>? entryPoint;
  /// The environment variables to pass to a container
  final pulumi.Input<List<TaskDefinitionKeyValuePair>>? environment;
  /// The list of one or more files that contain the environment variables to pass to a container
  final pulumi.Input<List<TaskDefinitionEnvironmentFile>>? environmentFiles;
  final pulumi.Input<bool>? essential;
  final pulumi.Input<List<TaskDefinitionHostEntry>>? extraHosts;
  final pulumi.Input<TaskDefinitionFirelensConfiguration>? firelensConfiguration;
  final pulumi.Input<TaskDefinitionHealthCheck>? healthCheck;
  final pulumi.Input<String>? hostname;
  /// The image used to start a container. This string is passed directly to the Docker daemon.
  final pulumi.Input<String> image;
  final pulumi.Input<bool>? interactive;
  final pulumi.Input<List<String>>? links;
  final pulumi.Input<TaskDefinitionLinuxParameters>? linuxParameters;
  final pulumi.Input<TaskDefinitionLogConfiguration>? logConfiguration;
  /// The amount (in MiB) of memory to present to the container. If your container attempts to exceed the memory specified here, the container is killed.
  final pulumi.Input<int>? memory;
  final pulumi.Input<int>? memoryReservation;
  final pulumi.Input<List<TaskDefinitionMountPoint>>? mountPoints;
  /// The name of a container. Up to 255 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed
  final pulumi.Input<String> name;
  /// Port mappings allow containers to access ports on the host container instance to send or receive traffic.
  final pulumi.Input<List<TaskDefinitionPortMapping>>? portMappings;
  final pulumi.Input<bool>? privileged;
  final pulumi.Input<bool>? pseudoTerminal;
  final pulumi.Input<bool>? readonlyRootFilesystem;
  final pulumi.Input<TaskDefinitionRepositoryCredentials>? repositoryCredentials;
  final pulumi.Input<List<TaskDefinitionResourceRequirement>>? resourceRequirements;
  final pulumi.Input<List<TaskDefinitionSecret>>? secrets;
  final pulumi.Input<int>? startTimeout;
  final pulumi.Input<int>? stopTimeout;
  final pulumi.Input<List<TaskDefinitionSystemControl>>? systemControls;
  final pulumi.Input<List<TaskDefinitionUlimit>>? ulimits;
  final pulumi.Input<String>? user;
  final pulumi.Input<List<TaskDefinitionVolumeFrom>>? volumesFrom;
  final pulumi.Input<String>? workingDirectory;

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
      'dependsOn': ?pulumi.Input.mapOptionalInputValue<List<TaskDefinitionContainerDependency>, List<Map<String, dynamic>>>(dependsOn, (value) => pulumi.Input.encodeList<TaskDefinitionContainerDependency, Map<String, dynamic>>(value, (value) => value.toMap())),
      'disableNetworking': ?disableNetworking,
      'dnsSearchDomains': ?dnsSearchDomains,
      'dnsServers': ?dnsServers,
      'dockerLabels': ?dockerLabels,
      'dockerSecurityOptions': ?dockerSecurityOptions,
      'entryPoint': ?entryPoint,
      'environment': ?pulumi.Input.mapOptionalInputValue<List<TaskDefinitionKeyValuePair>, List<Map<String, dynamic>>>(environment, (value) => pulumi.Input.encodeList<TaskDefinitionKeyValuePair, Map<String, dynamic>>(value, (value) => value.toMap())),
      'environmentFiles': ?pulumi.Input.mapOptionalInputValue<List<TaskDefinitionEnvironmentFile>, List<Map<String, dynamic>>>(environmentFiles, (value) => pulumi.Input.encodeList<TaskDefinitionEnvironmentFile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'essential': ?essential,
      'extraHosts': ?pulumi.Input.mapOptionalInputValue<List<TaskDefinitionHostEntry>, List<Map<String, dynamic>>>(extraHosts, (value) => pulumi.Input.encodeList<TaskDefinitionHostEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'firelensConfiguration': ?pulumi.Input.mapOptionalInputValue<TaskDefinitionFirelensConfiguration, Map<String, dynamic>>(firelensConfiguration, (value) => value.toMap()),
      'healthCheck': ?pulumi.Input.mapOptionalInputValue<TaskDefinitionHealthCheck, Map<String, dynamic>>(healthCheck, (value) => value.toMap()),
      'hostname': ?hostname,
      'image': image,
      'interactive': ?interactive,
      'links': ?links,
      'linuxParameters': ?pulumi.Input.mapOptionalInputValue<TaskDefinitionLinuxParameters, Map<String, dynamic>>(linuxParameters, (value) => value.toMap()),
      'logConfiguration': ?pulumi.Input.mapOptionalInputValue<TaskDefinitionLogConfiguration, Map<String, dynamic>>(logConfiguration, (value) => value.toMap()),
      'memory': ?memory,
      'memoryReservation': ?memoryReservation,
      'mountPoints': ?pulumi.Input.mapOptionalInputValue<List<TaskDefinitionMountPoint>, List<Map<String, dynamic>>>(mountPoints, (value) => pulumi.Input.encodeList<TaskDefinitionMountPoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'portMappings': ?pulumi.Input.mapOptionalInputValue<List<TaskDefinitionPortMapping>, List<Map<String, dynamic>>>(portMappings, (value) => pulumi.Input.encodeList<TaskDefinitionPortMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privileged': ?privileged,
      'pseudoTerminal': ?pseudoTerminal,
      'readonlyRootFilesystem': ?readonlyRootFilesystem,
      'repositoryCredentials': ?pulumi.Input.mapOptionalInputValue<TaskDefinitionRepositoryCredentials, Map<String, dynamic>>(repositoryCredentials, (value) => value.toMap()),
      'resourceRequirements': ?pulumi.Input.mapOptionalInputValue<List<TaskDefinitionResourceRequirement>, List<Map<String, dynamic>>>(resourceRequirements, (value) => pulumi.Input.encodeList<TaskDefinitionResourceRequirement, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secrets': ?pulumi.Input.mapOptionalInputValue<List<TaskDefinitionSecret>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<TaskDefinitionSecret, Map<String, dynamic>>(value, (value) => value.toMap())),
      'startTimeout': ?startTimeout,
      'stopTimeout': ?stopTimeout,
      'systemControls': ?pulumi.Input.mapOptionalInputValue<List<TaskDefinitionSystemControl>, List<Map<String, dynamic>>>(systemControls, (value) => pulumi.Input.encodeList<TaskDefinitionSystemControl, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ulimits': ?pulumi.Input.mapOptionalInputValue<List<TaskDefinitionUlimit>, List<Map<String, dynamic>>>(ulimits, (value) => pulumi.Input.encodeList<TaskDefinitionUlimit, Map<String, dynamic>>(value, (value) => value.toMap())),
      'user': ?user,
      'volumesFrom': ?pulumi.Input.mapOptionalInputValue<List<TaskDefinitionVolumeFrom>, List<Map<String, dynamic>>>(volumesFrom, (value) => pulumi.Input.encodeList<TaskDefinitionVolumeFrom, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workingDirectory': ?workingDirectory,
    };
  }

  factory TaskDefinitionContainerDefinition.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionContainerDefinition(
      command: map['command'] == null ? null : ((map['command'] as List).cast<String>()).input(),
      cpu: map['cpu'] == null ? null : (map['cpu'] as int).input(),
      dependsOn: map['dependsOn'] == null ? null : (pulumi.Input.decodeList<TaskDefinitionContainerDependency>(map['dependsOn'], (value) => TaskDefinitionContainerDependency.fromMap((value as Map).cast<String, dynamic>()))).input(),
      disableNetworking: map['disableNetworking'] == null ? null : (map['disableNetworking'] as bool).input(),
      dnsSearchDomains: map['dnsSearchDomains'] == null ? null : ((map['dnsSearchDomains'] as List).cast<String>()).input(),
      dnsServers: map['dnsServers'] == null ? null : ((map['dnsServers'] as List).cast<String>()).input(),
      dockerLabels: map['dockerLabels'] == null ? null : (map['dockerLabels']).input(),
      dockerSecurityOptions: map['dockerSecurityOptions'] == null ? null : ((map['dockerSecurityOptions'] as List).cast<String>()).input(),
      entryPoint: map['entryPoint'] == null ? null : ((map['entryPoint'] as List).cast<String>()).input(),
      environment: map['environment'] == null ? null : (pulumi.Input.decodeList<TaskDefinitionKeyValuePair>(map['environment'], (value) => TaskDefinitionKeyValuePair.fromMap((value as Map).cast<String, dynamic>()))).input(),
      environmentFiles: map['environmentFiles'] == null ? null : (pulumi.Input.decodeList<TaskDefinitionEnvironmentFile>(map['environmentFiles'], (value) => TaskDefinitionEnvironmentFile.fromMap((value as Map).cast<String, dynamic>()))).input(),
      essential: map['essential'] == null ? null : (map['essential'] as bool).input(),
      extraHosts: map['extraHosts'] == null ? null : (pulumi.Input.decodeList<TaskDefinitionHostEntry>(map['extraHosts'], (value) => TaskDefinitionHostEntry.fromMap((value as Map).cast<String, dynamic>()))).input(),
      firelensConfiguration: map['firelensConfiguration'] == null ? null : (TaskDefinitionFirelensConfiguration.fromMap((map['firelensConfiguration'] as Map).cast<String, dynamic>())).input(),
      healthCheck: map['healthCheck'] == null ? null : (TaskDefinitionHealthCheck.fromMap((map['healthCheck'] as Map).cast<String, dynamic>())).input(),
      hostname: map['hostname'] == null ? null : (map['hostname'] as String).input(),
      image: (map['image'] as String).input(),
      interactive: map['interactive'] == null ? null : (map['interactive'] as bool).input(),
      links: map['links'] == null ? null : ((map['links'] as List).cast<String>()).input(),
      linuxParameters: map['linuxParameters'] == null ? null : (TaskDefinitionLinuxParameters.fromMap((map['linuxParameters'] as Map).cast<String, dynamic>())).input(),
      logConfiguration: map['logConfiguration'] == null ? null : (TaskDefinitionLogConfiguration.fromMap((map['logConfiguration'] as Map).cast<String, dynamic>())).input(),
      memory: map['memory'] == null ? null : (map['memory'] as int).input(),
      memoryReservation: map['memoryReservation'] == null ? null : (map['memoryReservation'] as int).input(),
      mountPoints: map['mountPoints'] == null ? null : (pulumi.Input.decodeList<TaskDefinitionMountPoint>(map['mountPoints'], (value) => TaskDefinitionMountPoint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
      portMappings: map['portMappings'] == null ? null : (pulumi.Input.decodeList<TaskDefinitionPortMapping>(map['portMappings'], (value) => TaskDefinitionPortMapping.fromMap((value as Map).cast<String, dynamic>()))).input(),
      privileged: map['privileged'] == null ? null : (map['privileged'] as bool).input(),
      pseudoTerminal: map['pseudoTerminal'] == null ? null : (map['pseudoTerminal'] as bool).input(),
      readonlyRootFilesystem: map['readonlyRootFilesystem'] == null ? null : (map['readonlyRootFilesystem'] as bool).input(),
      repositoryCredentials: map['repositoryCredentials'] == null ? null : (TaskDefinitionRepositoryCredentials.fromMap((map['repositoryCredentials'] as Map).cast<String, dynamic>())).input(),
      resourceRequirements: map['resourceRequirements'] == null ? null : (pulumi.Input.decodeList<TaskDefinitionResourceRequirement>(map['resourceRequirements'], (value) => TaskDefinitionResourceRequirement.fromMap((value as Map).cast<String, dynamic>()))).input(),
      secrets: map['secrets'] == null ? null : (pulumi.Input.decodeList<TaskDefinitionSecret>(map['secrets'], (value) => TaskDefinitionSecret.fromMap((value as Map).cast<String, dynamic>()))).input(),
      startTimeout: map['startTimeout'] == null ? null : (map['startTimeout'] as int).input(),
      stopTimeout: map['stopTimeout'] == null ? null : (map['stopTimeout'] as int).input(),
      systemControls: map['systemControls'] == null ? null : (pulumi.Input.decodeList<TaskDefinitionSystemControl>(map['systemControls'], (value) => TaskDefinitionSystemControl.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ulimits: map['ulimits'] == null ? null : (pulumi.Input.decodeList<TaskDefinitionUlimit>(map['ulimits'], (value) => TaskDefinitionUlimit.fromMap((value as Map).cast<String, dynamic>()))).input(),
      user: map['user'] == null ? null : (map['user'] as String).input(),
      volumesFrom: map['volumesFrom'] == null ? null : (pulumi.Input.decodeList<TaskDefinitionVolumeFrom>(map['volumesFrom'], (value) => TaskDefinitionVolumeFrom.fromMap((value as Map).cast<String, dynamic>()))).input(),
      workingDirectory: map['workingDirectory'] == null ? null : (map['workingDirectory'] as String).input(),
    );
  }
}

