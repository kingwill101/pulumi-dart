// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_definition_node_property_node_range_property_container_environment.dart';
import 'get_job_definition_node_property_node_range_property_container_ephemeral_storage.dart';
import 'get_job_definition_node_property_node_range_property_container_fargate_platform_configuration.dart';
import 'get_job_definition_node_property_node_range_property_container_linux_parameter.dart';
import 'get_job_definition_node_property_node_range_property_container_log_configuration.dart';
import 'get_job_definition_node_property_node_range_property_container_mount_point.dart';
import 'get_job_definition_node_property_node_range_property_container_network_configuration.dart';
import 'get_job_definition_node_property_node_range_property_container_resource_requirement.dart';
import 'get_job_definition_node_property_node_range_property_container_runtime_platform.dart';
import 'get_job_definition_node_property_node_range_property_container_secret.dart';
import 'get_job_definition_node_property_node_range_property_container_ulimit.dart';
import 'get_job_definition_node_property_node_range_property_container_volume.dart';

class GetJobDefinitionNodePropertyNodeRangePropertyContainer {
  /// The command that's passed to the container.
  final pulumi.Input<List<String>> commands;

  /// The environment variables to pass to a container.
  final pulumi.Input<
    List<GetJobDefinitionNodePropertyNodeRangePropertyContainerEnvironment>
  >
  environments;

  /// The amount of ephemeral storage to allocate for the task. This parameter is used to expand the total amount of ephemeral storage available, beyond the default amount, for tasks hosted on AWS Fargate.
  final pulumi.Input<
    List<GetJobDefinitionNodePropertyNodeRangePropertyContainerEphemeralStorage>
  >
  ephemeralStorages;

  /// The Amazon Resource Name (ARN) of the execution role that AWS Batch can assume. For jobs that run on Fargate resources, you must provide an execution role.
  final pulumi.Input<String> executionRoleArn;

  /// The platform configuration for jobs that are running on Fargate resources. Jobs that are running on EC2 resources must not specify this parameter.
  final pulumi.Input<
    List<
      GetJobDefinitionNodePropertyNodeRangePropertyContainerFargatePlatformConfiguration
    >
  >
  fargatePlatformConfigurations;

  /// The image used to start a container.
  final pulumi.Input<String> image;

  /// The instance type to use for a multi-node parallel job.
  final pulumi.Input<String> instanceType;

  /// The Amazon Resource Name (ARN) of the IAM role that the container can assume for AWS permissions.
  final pulumi.Input<String> jobRoleArn;

  /// Linux-specific modifications that are applied to the container.
  final pulumi.Input<
    List<GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameter>
  >
  linuxParameters;

  /// The log configuration specification for the container.
  final pulumi.Input<
    List<GetJobDefinitionNodePropertyNodeRangePropertyContainerLogConfiguration>
  >
  logConfigurations;

  /// The mount points for data volumes in your container.
  final pulumi.Input<
    List<GetJobDefinitionNodePropertyNodeRangePropertyContainerMountPoint>
  >
  mountPoints;

  /// The network configuration for jobs that are running on Fargate resources.
  final pulumi.Input<
    List<
      GetJobDefinitionNodePropertyNodeRangePropertyContainerNetworkConfiguration
    >
  >
  networkConfigurations;

  /// When this parameter is true, the container is given elevated permissions on the host container instance (similar to the root user).
  final pulumi.Input<bool> privileged;

  /// When this parameter is true, the container is given read-only access to its root file system.
  final pulumi.Input<bool> readonlyRootFilesystem;

  /// The type and amount of resources to assign to a container.
  final pulumi.Input<
    List<
      GetJobDefinitionNodePropertyNodeRangePropertyContainerResourceRequirement
    >
  >
  resourceRequirements;

  /// An object that represents the compute environment architecture for AWS Batch jobs on Fargate.
  final pulumi.Input<
    List<GetJobDefinitionNodePropertyNodeRangePropertyContainerRuntimePlatform>
  >
  runtimePlatforms;

  /// The secrets for the container.
  final pulumi.Input<
    List<GetJobDefinitionNodePropertyNodeRangePropertyContainerSecret>
  >
  secrets;

  /// A list of ulimits to set in the container.
  final pulumi.Input<
    List<GetJobDefinitionNodePropertyNodeRangePropertyContainerUlimit>
  >
  ulimits;

  /// The user name to use inside the container.
  final pulumi.Input<String> user;

  /// A list of data volumes used in a job.
  final pulumi.Input<
    List<GetJobDefinitionNodePropertyNodeRangePropertyContainerVolume>
  >
  volumes;

  /// Creates a new [GetJobDefinitionNodePropertyNodeRangePropertyContainer].
  /// [commands] The command that's passed to the container.
  /// [environments] The environment variables to pass to a container.
  /// [ephemeralStorages] The amount of ephemeral storage to allocate for the task. This parameter is used to expand the total amount of ephemeral storage available, beyond the default amount, for tasks hosted on AWS Fargate.
  /// [executionRoleArn] The Amazon Resource Name (ARN) of the execution role that AWS Batch can assume. For jobs that run on Fargate resources, you must provide an execution role.
  /// [fargatePlatformConfigurations] The platform configuration for jobs that are running on Fargate resources. Jobs that are running on EC2 resources must not specify this parameter.
  /// [image] The image used to start a container.
  /// [instanceType] The instance type to use for a multi-node parallel job.
  /// [jobRoleArn] The Amazon Resource Name (ARN) of the IAM role that the container can assume for AWS permissions.
  /// [linuxParameters] Linux-specific modifications that are applied to the container.
  /// [logConfigurations] The log configuration specification for the container.
  /// [mountPoints] The mount points for data volumes in your container.
  /// [networkConfigurations] The network configuration for jobs that are running on Fargate resources.
  /// [privileged] When this parameter is true, the container is given elevated permissions on the host container instance (similar to the root user).
  /// [readonlyRootFilesystem] When this parameter is true, the container is given read-only access to its root file system.
  /// [resourceRequirements] The type and amount of resources to assign to a container.
  /// [runtimePlatforms] An object that represents the compute environment architecture for AWS Batch jobs on Fargate.
  /// [secrets] The secrets for the container.
  /// [ulimits] A list of ulimits to set in the container.
  /// [user] The user name to use inside the container.
  /// [volumes] A list of data volumes used in a job.
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
    return <String, dynamic>{
      'commands': commands,
      'environments':
          pulumi.Input.mapInputValue<
            List<
              GetJobDefinitionNodePropertyNodeRangePropertyContainerEnvironment
            >,
            List<Map<String, dynamic>>
          >(
            environments,
            (value) =>
                pulumi.Input.encodeList<
                  GetJobDefinitionNodePropertyNodeRangePropertyContainerEnvironment,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ephemeralStorages':
          pulumi.Input.mapInputValue<
            List<
              GetJobDefinitionNodePropertyNodeRangePropertyContainerEphemeralStorage
            >,
            List<Map<String, dynamic>>
          >(
            ephemeralStorages,
            (value) =>
                pulumi.Input.encodeList<
                  GetJobDefinitionNodePropertyNodeRangePropertyContainerEphemeralStorage,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'executionRoleArn': executionRoleArn,
      'fargatePlatformConfigurations':
          pulumi.Input.mapInputValue<
            List<
              GetJobDefinitionNodePropertyNodeRangePropertyContainerFargatePlatformConfiguration
            >,
            List<Map<String, dynamic>>
          >(
            fargatePlatformConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  GetJobDefinitionNodePropertyNodeRangePropertyContainerFargatePlatformConfiguration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'image': image,
      'instanceType': instanceType,
      'jobRoleArn': jobRoleArn,
      'linuxParameters':
          pulumi.Input.mapInputValue<
            List<
              GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameter
            >,
            List<Map<String, dynamic>>
          >(
            linuxParameters,
            (value) =>
                pulumi.Input.encodeList<
                  GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'logConfigurations':
          pulumi.Input.mapInputValue<
            List<
              GetJobDefinitionNodePropertyNodeRangePropertyContainerLogConfiguration
            >,
            List<Map<String, dynamic>>
          >(
            logConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  GetJobDefinitionNodePropertyNodeRangePropertyContainerLogConfiguration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'mountPoints':
          pulumi.Input.mapInputValue<
            List<
              GetJobDefinitionNodePropertyNodeRangePropertyContainerMountPoint
            >,
            List<Map<String, dynamic>>
          >(
            mountPoints,
            (value) =>
                pulumi.Input.encodeList<
                  GetJobDefinitionNodePropertyNodeRangePropertyContainerMountPoint,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'networkConfigurations':
          pulumi.Input.mapInputValue<
            List<
              GetJobDefinitionNodePropertyNodeRangePropertyContainerNetworkConfiguration
            >,
            List<Map<String, dynamic>>
          >(
            networkConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  GetJobDefinitionNodePropertyNodeRangePropertyContainerNetworkConfiguration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'privileged': privileged,
      'readonlyRootFilesystem': readonlyRootFilesystem,
      'resourceRequirements':
          pulumi.Input.mapInputValue<
            List<
              GetJobDefinitionNodePropertyNodeRangePropertyContainerResourceRequirement
            >,
            List<Map<String, dynamic>>
          >(
            resourceRequirements,
            (value) =>
                pulumi.Input.encodeList<
                  GetJobDefinitionNodePropertyNodeRangePropertyContainerResourceRequirement,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'runtimePlatforms':
          pulumi.Input.mapInputValue<
            List<
              GetJobDefinitionNodePropertyNodeRangePropertyContainerRuntimePlatform
            >,
            List<Map<String, dynamic>>
          >(
            runtimePlatforms,
            (value) =>
                pulumi.Input.encodeList<
                  GetJobDefinitionNodePropertyNodeRangePropertyContainerRuntimePlatform,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'secrets':
          pulumi.Input.mapInputValue<
            List<GetJobDefinitionNodePropertyNodeRangePropertyContainerSecret>,
            List<Map<String, dynamic>>
          >(
            secrets,
            (value) =>
                pulumi.Input.encodeList<
                  GetJobDefinitionNodePropertyNodeRangePropertyContainerSecret,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ulimits':
          pulumi.Input.mapInputValue<
            List<GetJobDefinitionNodePropertyNodeRangePropertyContainerUlimit>,
            List<Map<String, dynamic>>
          >(
            ulimits,
            (value) =>
                pulumi.Input.encodeList<
                  GetJobDefinitionNodePropertyNodeRangePropertyContainerUlimit,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'user': user,
      'volumes':
          pulumi.Input.mapInputValue<
            List<GetJobDefinitionNodePropertyNodeRangePropertyContainerVolume>,
            List<Map<String, dynamic>>
          >(
            volumes,
            (value) =>
                pulumi.Input.encodeList<
                  GetJobDefinitionNodePropertyNodeRangePropertyContainerVolume,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetJobDefinitionNodePropertyNodeRangePropertyContainer.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetJobDefinitionNodePropertyNodeRangePropertyContainer(
      commands: pulumi.Input.fromValue(
        (map['commands'] as List).cast<String>(),
      ),
      environments: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetJobDefinitionNodePropertyNodeRangePropertyContainerEnvironment
        >(
          map['environments']!,
          (value) =>
              GetJobDefinitionNodePropertyNodeRangePropertyContainerEnvironment.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      ephemeralStorages: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetJobDefinitionNodePropertyNodeRangePropertyContainerEphemeralStorage
        >(
          map['ephemeralStorages']!,
          (value) =>
              GetJobDefinitionNodePropertyNodeRangePropertyContainerEphemeralStorage.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      executionRoleArn: pulumi.Input.fromValue(
        map['executionRoleArn'] as String,
      ),
      fargatePlatformConfigurations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetJobDefinitionNodePropertyNodeRangePropertyContainerFargatePlatformConfiguration
        >(
          map['fargatePlatformConfigurations']!,
          (value) =>
              GetJobDefinitionNodePropertyNodeRangePropertyContainerFargatePlatformConfiguration.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      image: pulumi.Input.fromValue(map['image'] as String),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      jobRoleArn: pulumi.Input.fromValue(map['jobRoleArn'] as String),
      linuxParameters: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameter
        >(
          map['linuxParameters']!,
          (value) =>
              GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameter.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      logConfigurations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetJobDefinitionNodePropertyNodeRangePropertyContainerLogConfiguration
        >(
          map['logConfigurations']!,
          (value) =>
              GetJobDefinitionNodePropertyNodeRangePropertyContainerLogConfiguration.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      mountPoints: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetJobDefinitionNodePropertyNodeRangePropertyContainerMountPoint
        >(
          map['mountPoints']!,
          (value) =>
              GetJobDefinitionNodePropertyNodeRangePropertyContainerMountPoint.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      networkConfigurations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetJobDefinitionNodePropertyNodeRangePropertyContainerNetworkConfiguration
        >(
          map['networkConfigurations']!,
          (value) =>
              GetJobDefinitionNodePropertyNodeRangePropertyContainerNetworkConfiguration.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      privileged: pulumi.Input.fromValue(map['privileged'] as bool),
      readonlyRootFilesystem: pulumi.Input.fromValue(
        map['readonlyRootFilesystem'] as bool,
      ),
      resourceRequirements: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetJobDefinitionNodePropertyNodeRangePropertyContainerResourceRequirement
        >(
          map['resourceRequirements']!,
          (value) =>
              GetJobDefinitionNodePropertyNodeRangePropertyContainerResourceRequirement.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      runtimePlatforms: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetJobDefinitionNodePropertyNodeRangePropertyContainerRuntimePlatform
        >(
          map['runtimePlatforms']!,
          (value) =>
              GetJobDefinitionNodePropertyNodeRangePropertyContainerRuntimePlatform.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      secrets: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetJobDefinitionNodePropertyNodeRangePropertyContainerSecret
        >(
          map['secrets']!,
          (value) =>
              GetJobDefinitionNodePropertyNodeRangePropertyContainerSecret.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      ulimits: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetJobDefinitionNodePropertyNodeRangePropertyContainerUlimit
        >(
          map['ulimits']!,
          (value) =>
              GetJobDefinitionNodePropertyNodeRangePropertyContainerUlimit.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      user: pulumi.Input.fromValue(map['user'] as String),
      volumes: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetJobDefinitionNodePropertyNodeRangePropertyContainerVolume
        >(
          map['volumes']!,
          (value) =>
              GetJobDefinitionNodePropertyNodeRangePropertyContainerVolume.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
