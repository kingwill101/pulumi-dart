// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_task_definition_ephemeral_storage/get_task_definition_ephemeral_storage.dart';
import '../get_task_definition_placement_constraint/get_task_definition_placement_constraint.dart';
import '../get_task_definition_proxy_configuration/get_task_definition_proxy_configuration.dart';
import '../get_task_definition_runtime_platform/get_task_definition_runtime_platform.dart';
import '../get_task_definition_volume/get_task_definition_volume.dart';

/// Result data returned by getTaskDefinition.
class GetTaskDefinitionResult {
  /// ARN of the task definition.
  final String arn;

  /// ARN of the Task Definition with the trailing `revision` removed. This may be useful for situations where the latest task definition is always desired. If a revision isn't specified, the latest ACTIVE revision is used. See the [AWS documentation](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_StartTask.html#ECS-StartTask-request-taskDefinition) for details.
  final String arnWithoutRevision;

  /// A list of valid [container definitions](http://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ContainerDefinition.html) provided as a single valid JSON document. Please note that you should only provide values that are part of the container definition document. For a detailed description of what parameters are available, see the [Task Definition Parameters](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html) section from the official [Developer Guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide).
  final String containerDefinitions;

  /// Number of cpu units used by the task. If the `requires_compatibilities` is `FARGATE` this field is required.
  final String cpu;

  /// Enables fault injection and allows for fault injection requests to be accepted from the task's containers. Default is `false`.
  final bool enableFaultInjection;

  /// The amount of ephemeral storage to allocate for the task. This parameter is used to expand the total amount of ephemeral storage available, beyond the default amount, for tasks hosted on AWS Fargate. See Ephemeral Storage.
  final List<GetTaskDefinitionEphemeralStorage> ephemeralStorages;

  /// ARN of the task execution role that the Amazon ECS container agent and the Docker daemon can assume.
  final String executionRoleArn;

  /// A unique name for your task definition.
  /// The following arguments are optional:
  final String family;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// IPC resource namespace to be used for the containers in the task The valid values are `host`, `task`, and `none`.
  final String ipcMode;

  /// Amount (in MiB) of memory used by the task. If the `requires_compatibilities` is `FARGATE` this field is required.
  final String memory;

  /// Docker networking mode to use for the containers in the task. Valid values are `none`, `bridge`, `awsvpc`, and `host`.
  final String networkMode;

  /// Process namespace to use for the containers in the task. The valid values are `host` and `task`.
  final String pidMode;

  /// Configuration block for rules that are taken into consideration during task placement. Maximum number of `placement_constraints` is `10`. Detailed below.
  final List<GetTaskDefinitionPlacementConstraint> placementConstraints;

  /// Configuration block for the App Mesh proxy. Detailed below.
  final List<GetTaskDefinitionProxyConfiguration> proxyConfigurations;
  final String region;

  /// Set of launch types required by the task. The valid values are `EC2` and `FARGATE`.
  final List<String> requiresCompatibilities;

  /// Revision of the task in a particular family.
  final int revision;

  /// Configuration block for runtime_platform that containers in your task may use.
  final List<GetTaskDefinitionRuntimePlatform> runtimePlatforms;

  /// Status of the task definition.
  final String status;
  final String taskDefinition;

  /// ARN of IAM role that allows your Amazon ECS container task to make calls to other AWS services.
  final String taskRoleArn;

  /// Configuration block for volumes that containers in your task may use. Detailed below.
  final List<GetTaskDefinitionVolume> volumes;

  GetTaskDefinitionResult({
    required this.arn,
    required this.arnWithoutRevision,
    required this.containerDefinitions,
    required this.cpu,
    required this.enableFaultInjection,
    required this.ephemeralStorages,
    required this.executionRoleArn,
    required this.family,
    required this.id,
    required this.ipcMode,
    required this.memory,
    required this.networkMode,
    required this.pidMode,
    required this.placementConstraints,
    required this.proxyConfigurations,
    required this.region,
    required this.requiresCompatibilities,
    required this.revision,
    required this.runtimePlatforms,
    required this.status,
    required this.taskDefinition,
    required this.taskRoleArn,
    required this.volumes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['arnWithoutRevision'] = arnWithoutRevision;
    map['containerDefinitions'] = containerDefinitions;
    map['cpu'] = cpu;
    map['enableFaultInjection'] = enableFaultInjection;
    map['ephemeralStorages'] = Input.encodeList<
        GetTaskDefinitionEphemeralStorage,
        Map<String, dynamic>>(ephemeralStorages, (value) => value.toMap());
    map['executionRoleArn'] = executionRoleArn;
    map['family'] = family;
    map['id'] = id;
    map['ipcMode'] = ipcMode;
    map['memory'] = memory;
    map['networkMode'] = networkMode;
    map['pidMode'] = pidMode;
    map['placementConstraints'] = Input.encodeList<
        GetTaskDefinitionPlacementConstraint,
        Map<String, dynamic>>(placementConstraints, (value) => value.toMap());
    map['proxyConfigurations'] = Input.encodeList<
        GetTaskDefinitionProxyConfiguration,
        Map<String, dynamic>>(proxyConfigurations, (value) => value.toMap());
    map['region'] = region;
    map['requiresCompatibilities'] = requiresCompatibilities;
    map['revision'] = revision;
    map['runtimePlatforms'] = Input.encodeList<GetTaskDefinitionRuntimePlatform,
        Map<String, dynamic>>(runtimePlatforms, (value) => value.toMap());
    map['status'] = status;
    map['taskDefinition'] = taskDefinition;
    map['taskRoleArn'] = taskRoleArn;
    map['volumes'] =
        Input.encodeList<GetTaskDefinitionVolume, Map<String, dynamic>>(
            volumes, (value) => value.toMap());
    return map;
  }

  factory GetTaskDefinitionResult.fromMap(Map<String, dynamic> map) {
    return GetTaskDefinitionResult(
      arn: map['arn'] as String,
      arnWithoutRevision: map['arnWithoutRevision'] as String,
      containerDefinitions: map['containerDefinitions'] as String,
      cpu: map['cpu'] as String,
      enableFaultInjection: map['enableFaultInjection'] as bool,
      ephemeralStorages: Input.decodeList<GetTaskDefinitionEphemeralStorage>(
          map['ephemeralStorages'],
          (value) => GetTaskDefinitionEphemeralStorage.fromMap(
              (value as Map).cast<String, dynamic>())),
      executionRoleArn: map['executionRoleArn'] as String,
      family: map['family'] as String,
      id: map['id'] as String,
      ipcMode: map['ipcMode'] as String,
      memory: map['memory'] as String,
      networkMode: map['networkMode'] as String,
      pidMode: map['pidMode'] as String,
      placementConstraints:
          Input.decodeList<GetTaskDefinitionPlacementConstraint>(
              map['placementConstraints'],
              (value) => GetTaskDefinitionPlacementConstraint.fromMap(
                  (value as Map).cast<String, dynamic>())),
      proxyConfigurations:
          Input.decodeList<GetTaskDefinitionProxyConfiguration>(
              map['proxyConfigurations'],
              (value) => GetTaskDefinitionProxyConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
      requiresCompatibilities:
          (map['requiresCompatibilities'] as List).cast<String>(),
      revision: map['revision'] as int,
      runtimePlatforms: Input.decodeList<GetTaskDefinitionRuntimePlatform>(
          map['runtimePlatforms'],
          (value) => GetTaskDefinitionRuntimePlatform.fromMap(
              (value as Map).cast<String, dynamic>())),
      status: map['status'] as String,
      taskDefinition: map['taskDefinition'] as String,
      taskRoleArn: map['taskRoleArn'] as String,
      volumes: Input.decodeList<GetTaskDefinitionVolume>(
          map['volumes'],
          (value) => GetTaskDefinitionVolume.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
