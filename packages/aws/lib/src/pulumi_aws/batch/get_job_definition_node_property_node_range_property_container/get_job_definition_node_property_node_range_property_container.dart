// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_job_definition_node_property_node_range_property_container_environment/get_job_definition_node_property_node_range_property_container_environment.dart';
import '../get_job_definition_node_property_node_range_property_container_ephemeral_storage/get_job_definition_node_property_node_range_property_container_ephemeral_storage.dart';
import '../get_job_definition_node_property_node_range_property_container_fargate_platform_configuration/get_job_definition_node_property_node_range_property_container_fargate_platform_configuration.dart';
import '../get_job_definition_node_property_node_range_property_container_linux_parameter/get_job_definition_node_property_node_range_property_container_linux_parameter.dart';
import '../get_job_definition_node_property_node_range_property_container_log_configuration/get_job_definition_node_property_node_range_property_container_log_configuration.dart';
import '../get_job_definition_node_property_node_range_property_container_mount_point/get_job_definition_node_property_node_range_property_container_mount_point.dart';
import '../get_job_definition_node_property_node_range_property_container_network_configuration/get_job_definition_node_property_node_range_property_container_network_configuration.dart';
import '../get_job_definition_node_property_node_range_property_container_resource_requirement/get_job_definition_node_property_node_range_property_container_resource_requirement.dart';
import '../get_job_definition_node_property_node_range_property_container_runtime_platform/get_job_definition_node_property_node_range_property_container_runtime_platform.dart';
import '../get_job_definition_node_property_node_range_property_container_secret/get_job_definition_node_property_node_range_property_container_secret.dart';
import '../get_job_definition_node_property_node_range_property_container_ulimit/get_job_definition_node_property_node_range_property_container_ulimit.dart';
import '../get_job_definition_node_property_node_range_property_container_volume/get_job_definition_node_property_node_range_property_container_volume.dart';

class GetJobDefinitionNodePropertyNodeRangePropertyContainer {
  /// The command that's passed to the container.
  final List<String> commands;

  /// The environment variables to pass to a container.
  final List<GetJobDefinitionNodePropertyNodeRangePropertyContainerEnvironment>
      environments;

  /// The amount of ephemeral storage to allocate for the task. This parameter is used to expand the total amount of ephemeral storage available, beyond the default amount, for tasks hosted on AWS Fargate.
  final List<
          GetJobDefinitionNodePropertyNodeRangePropertyContainerEphemeralStorage>
      ephemeralStorages;

  /// The Amazon Resource Name (ARN) of the execution role that AWS Batch can assume. For jobs that run on Fargate resources, you must provide an execution role.
  final String executionRoleArn;

  /// The platform configuration for jobs that are running on Fargate resources. Jobs that are running on EC2 resources must not specify this parameter.
  final List<
          GetJobDefinitionNodePropertyNodeRangePropertyContainerFargatePlatformConfiguration>
      fargatePlatformConfigurations;

  /// The image used to start a container.
  final String image;

  /// The instance type to use for a multi-node parallel job.
  final String instanceType;

  /// The Amazon Resource Name (ARN) of the IAM role that the container can assume for AWS permissions.
  final String jobRoleArn;

  /// Linux-specific modifications that are applied to the container.
  final List<
          GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameter>
      linuxParameters;

  /// The log configuration specification for the container.
  final List<
          GetJobDefinitionNodePropertyNodeRangePropertyContainerLogConfiguration>
      logConfigurations;

  /// The mount points for data volumes in your container.
  final List<GetJobDefinitionNodePropertyNodeRangePropertyContainerMountPoint>
      mountPoints;

  /// The network configuration for jobs that are running on Fargate resources.
  final List<
          GetJobDefinitionNodePropertyNodeRangePropertyContainerNetworkConfiguration>
      networkConfigurations;

  /// When this parameter is true, the container is given elevated permissions on the host container instance (similar to the root user).
  final bool privileged;

  /// When this parameter is true, the container is given read-only access to its root file system.
  final bool readonlyRootFilesystem;

  /// The type and amount of resources to assign to a container.
  final List<
          GetJobDefinitionNodePropertyNodeRangePropertyContainerResourceRequirement>
      resourceRequirements;

  /// An object that represents the compute environment architecture for AWS Batch jobs on Fargate.
  final List<
          GetJobDefinitionNodePropertyNodeRangePropertyContainerRuntimePlatform>
      runtimePlatforms;

  /// The secrets for the container.
  final List<GetJobDefinitionNodePropertyNodeRangePropertyContainerSecret>
      secrets;

  /// A list of ulimits to set in the container.
  final List<GetJobDefinitionNodePropertyNodeRangePropertyContainerUlimit>
      ulimits;

  /// The user name to use inside the container.
  final String user;

  /// A list of data volumes used in a job.
  final List<GetJobDefinitionNodePropertyNodeRangePropertyContainerVolume>
      volumes;

  GetJobDefinitionNodePropertyNodeRangePropertyContainer({
    required this.commands,
    required this.environments,
    required this.ephemeralStorages,
    required this.executionRoleArn,
    required this.fargatePlatformConfigurations,
    required this.image,
    required this.instanceType,
    required this.jobRoleArn,
    required this.linuxParameters,
    required this.logConfigurations,
    required this.mountPoints,
    required this.networkConfigurations,
    required this.privileged,
    required this.readonlyRootFilesystem,
    required this.resourceRequirements,
    required this.runtimePlatforms,
    required this.secrets,
    required this.ulimits,
    required this.user,
    required this.volumes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['commands'] = commands;
    map['environments'] = Input.encodeList<
        GetJobDefinitionNodePropertyNodeRangePropertyContainerEnvironment,
        Map<String, dynamic>>(environments, (value) => value.toMap());
    map['ephemeralStorages'] = Input.encodeList<
        GetJobDefinitionNodePropertyNodeRangePropertyContainerEphemeralStorage,
        Map<String, dynamic>>(ephemeralStorages, (value) => value.toMap());
    map['executionRoleArn'] = executionRoleArn;
    map['fargatePlatformConfigurations'] = Input.encodeList<
        GetJobDefinitionNodePropertyNodeRangePropertyContainerFargatePlatformConfiguration,
        Map<String,
            dynamic>>(fargatePlatformConfigurations, (value) => value.toMap());
    map['image'] = image;
    map['instanceType'] = instanceType;
    map['jobRoleArn'] = jobRoleArn;
    map['linuxParameters'] = Input.encodeList<
        GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameter,
        Map<String, dynamic>>(linuxParameters, (value) => value.toMap());
    map['logConfigurations'] = Input.encodeList<
        GetJobDefinitionNodePropertyNodeRangePropertyContainerLogConfiguration,
        Map<String, dynamic>>(logConfigurations, (value) => value.toMap());
    map['mountPoints'] = Input.encodeList<
        GetJobDefinitionNodePropertyNodeRangePropertyContainerMountPoint,
        Map<String, dynamic>>(mountPoints, (value) => value.toMap());
    map['networkConfigurations'] = Input.encodeList<
        GetJobDefinitionNodePropertyNodeRangePropertyContainerNetworkConfiguration,
        Map<String, dynamic>>(networkConfigurations, (value) => value.toMap());
    map['privileged'] = privileged;
    map['readonlyRootFilesystem'] = readonlyRootFilesystem;
    map['resourceRequirements'] = Input.encodeList<
        GetJobDefinitionNodePropertyNodeRangePropertyContainerResourceRequirement,
        Map<String, dynamic>>(resourceRequirements, (value) => value.toMap());
    map['runtimePlatforms'] = Input.encodeList<
        GetJobDefinitionNodePropertyNodeRangePropertyContainerRuntimePlatform,
        Map<String, dynamic>>(runtimePlatforms, (value) => value.toMap());
    map['secrets'] = Input.encodeList<
        GetJobDefinitionNodePropertyNodeRangePropertyContainerSecret,
        Map<String, dynamic>>(secrets, (value) => value.toMap());
    map['ulimits'] = Input.encodeList<
        GetJobDefinitionNodePropertyNodeRangePropertyContainerUlimit,
        Map<String, dynamic>>(ulimits, (value) => value.toMap());
    map['user'] = user;
    map['volumes'] = Input.encodeList<
        GetJobDefinitionNodePropertyNodeRangePropertyContainerVolume,
        Map<String, dynamic>>(volumes, (value) => value.toMap());
    return map;
  }

  factory GetJobDefinitionNodePropertyNodeRangePropertyContainer.fromMap(
      Map<String, dynamic> map) {
    return GetJobDefinitionNodePropertyNodeRangePropertyContainer(
      commands: (map['commands'] as List).cast<String>(),
      environments: Input.decodeList<
              GetJobDefinitionNodePropertyNodeRangePropertyContainerEnvironment>(
          map['environments'],
          (value) =>
              GetJobDefinitionNodePropertyNodeRangePropertyContainerEnvironment
                  .fromMap((value as Map).cast<String, dynamic>())),
      ephemeralStorages: Input.decodeList<
              GetJobDefinitionNodePropertyNodeRangePropertyContainerEphemeralStorage>(
          map['ephemeralStorages'],
          (value) =>
              GetJobDefinitionNodePropertyNodeRangePropertyContainerEphemeralStorage
                  .fromMap((value as Map).cast<String, dynamic>())),
      executionRoleArn: map['executionRoleArn'] as String,
      fargatePlatformConfigurations: Input.decodeList<
              GetJobDefinitionNodePropertyNodeRangePropertyContainerFargatePlatformConfiguration>(
          map['fargatePlatformConfigurations'],
          (value) =>
              GetJobDefinitionNodePropertyNodeRangePropertyContainerFargatePlatformConfiguration
                  .fromMap((value as Map).cast<String, dynamic>())),
      image: map['image'] as String,
      instanceType: map['instanceType'] as String,
      jobRoleArn: map['jobRoleArn'] as String,
      linuxParameters: Input.decodeList<
              GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameter>(
          map['linuxParameters'],
          (value) =>
              GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameter
                  .fromMap((value as Map).cast<String, dynamic>())),
      logConfigurations: Input.decodeList<
              GetJobDefinitionNodePropertyNodeRangePropertyContainerLogConfiguration>(
          map['logConfigurations'],
          (value) =>
              GetJobDefinitionNodePropertyNodeRangePropertyContainerLogConfiguration
                  .fromMap((value as Map).cast<String, dynamic>())),
      mountPoints: Input.decodeList<
              GetJobDefinitionNodePropertyNodeRangePropertyContainerMountPoint>(
          map['mountPoints'],
          (value) =>
              GetJobDefinitionNodePropertyNodeRangePropertyContainerMountPoint
                  .fromMap((value as Map).cast<String, dynamic>())),
      networkConfigurations: Input.decodeList<
              GetJobDefinitionNodePropertyNodeRangePropertyContainerNetworkConfiguration>(
          map['networkConfigurations'],
          (value) =>
              GetJobDefinitionNodePropertyNodeRangePropertyContainerNetworkConfiguration
                  .fromMap((value as Map).cast<String, dynamic>())),
      privileged: map['privileged'] as bool,
      readonlyRootFilesystem: map['readonlyRootFilesystem'] as bool,
      resourceRequirements: Input.decodeList<
              GetJobDefinitionNodePropertyNodeRangePropertyContainerResourceRequirement>(
          map['resourceRequirements'],
          (value) =>
              GetJobDefinitionNodePropertyNodeRangePropertyContainerResourceRequirement
                  .fromMap((value as Map).cast<String, dynamic>())),
      runtimePlatforms: Input.decodeList<
              GetJobDefinitionNodePropertyNodeRangePropertyContainerRuntimePlatform>(
          map['runtimePlatforms'],
          (value) =>
              GetJobDefinitionNodePropertyNodeRangePropertyContainerRuntimePlatform
                  .fromMap((value as Map).cast<String, dynamic>())),
      secrets: Input.decodeList<
              GetJobDefinitionNodePropertyNodeRangePropertyContainerSecret>(
          map['secrets'],
          (value) =>
              GetJobDefinitionNodePropertyNodeRangePropertyContainerSecret
                  .fromMap((value as Map).cast<String, dynamic>())),
      ulimits: Input.decodeList<
              GetJobDefinitionNodePropertyNodeRangePropertyContainerUlimit>(
          map['ulimits'],
          (value) =>
              GetJobDefinitionNodePropertyNodeRangePropertyContainerUlimit
                  .fromMap((value as Map).cast<String, dynamic>())),
      user: map['user'] as String,
      volumes: Input.decodeList<
              GetJobDefinitionNodePropertyNodeRangePropertyContainerVolume>(
          map['volumes'],
          (value) =>
              GetJobDefinitionNodePropertyNodeRangePropertyContainerVolume
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
