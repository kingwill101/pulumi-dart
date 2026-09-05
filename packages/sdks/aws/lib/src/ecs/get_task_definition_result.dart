// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_task_definition_ephemeral_storage.dart';
import 'get_task_definition_placement_constraint.dart';
import 'get_task_definition_proxy_configuration.dart';
import 'get_task_definition_runtime_platform.dart';
import 'get_task_definition_volume.dart';

/// Result data returned by getTaskDefinition.
class GetTaskDefinitionResult {
  /// ARN of the task definition.
  final String? arn;
  /// ARN of the Task Definition with the trailing `revision` removed. This may be useful for situations where the latest task definition is always desired. If a revision isn't specified, the latest ACTIVE revision is used. See the [AWS documentation](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_StartTask.html#ECS-StartTask-request-taskDefinition) for details.
  final String? arnWithoutRevision;
  /// List of valid [container definitions](http://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ContainerDefinition.html) provided as a single valid JSON document. Please note that you should only provide values that are part of the container definition document. For a detailed description of what parameters are available, see the [Task Definition Parameters](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html) section from the official [Developer Guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide).
  final String? containerDefinitions;
  /// Number of cpu units used by the task. If the `requiresCompatibilities` is `FARGATE` this field is required.
  final String? cpu;
  /// Enables fault injection and allows for fault injection requests to be accepted from the task's containers. Default is `false`.
  final bool? enableFaultInjection;
  /// Amount of ephemeral storage to allocate for the task. This parameter is used to expand the total amount of ephemeral storage available, beyond the default amount, for tasks hosted on AWS Fargate. See `ephemeralStorage` Block.
  final List<GetTaskDefinitionEphemeralStorage>? ephemeralStorages;
  /// ARN of the task execution role that the Amazon ECS container agent and the Docker daemon can assume.
  final String? executionRoleArn;
  /// Unique name for your task definition.
  /// The following arguments are optional:
  final String? family;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// IPC resource namespace to be used for the containers in the task The valid values are `host`, `task`, and `none`.
  final String? ipcMode;
  /// Amount (in MiB) of memory used by the task. If the `requiresCompatibilities` is `FARGATE` this field is required.
  final String? memory;
  /// Docker networking mode to use for the containers in the task. Valid values are `none`, `bridge`, `awsvpc`, and `host`.
  final String? networkMode;
  /// Process namespace to use for the containers in the task. The valid values are `host` and `task`.
  final String? pidMode;
  /// Configuration block for rules that are taken into consideration during task placement. Maximum number of `placementConstraints` is `10`. See `placementConstraints` Block.
  final List<GetTaskDefinitionPlacementConstraint>? placementConstraints;
  /// Configuration block for the App Mesh proxy. See `proxyConfiguration` Block.
  final List<GetTaskDefinitionProxyConfiguration>? proxyConfigurations;
  final String? region;
  /// Set of launch types required by the task. The valid values are `EC2` and `FARGATE`.
  final List<String>? requiresCompatibilities;
  /// Revision of the task in a particular family.
  final int? revision;
  /// Configuration block for runtimePlatform that containers in your task may use.
  final List<GetTaskDefinitionRuntimePlatform>? runtimePlatforms;
  /// Status of the task definition.
  final String? status;
  final String? taskDefinition;
  /// ARN of IAM role that allows your Amazon ECS container task to make calls to other AWS services.
  final String? taskRoleArn;
  /// Configuration block for volumes that containers in your task may use. See `volume` Block for details.
  final List<GetTaskDefinitionVolume>? volumes;

  /// Creates a new [GetTaskDefinitionResult].
  /// [arn] ARN of the task definition.
  /// [arnWithoutRevision] ARN of the Task Definition with the trailing `revision` removed. This may be useful for situations where the latest task definition is always desired. If a revision isn't specified, the latest ACTIVE revision is used. See the [AWS documentation](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_StartTask.html#ECS-StartTask-request-taskDefinition) for details.
  /// [containerDefinitions] List of valid [container definitions](http://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ContainerDefinition.html) provided as a single valid JSON document. Please note that you should only provide values that are part of the container definition document. For a detailed description of what parameters are available, see the [Task Definition Parameters](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html) section from the official [Developer Guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide).
  /// [cpu] Number of cpu units used by the task. If the `requiresCompatibilities` is `FARGATE` this field is required.
  /// [enableFaultInjection] Enables fault injection and allows for fault injection requests to be accepted from the task's containers. Default is `false`.
  /// [ephemeralStorages] Amount of ephemeral storage to allocate for the task. This parameter is used to expand the total amount of ephemeral storage available, beyond the default amount, for tasks hosted on AWS Fargate. See `ephemeralStorage` Block.
  /// [executionRoleArn] ARN of the task execution role that the Amazon ECS container agent and the Docker daemon can assume.
  /// [family] Unique name for your task definition.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipcMode] IPC resource namespace to be used for the containers in the task The valid values are `host`, `task`, and `none`.
  /// [memory] Amount (in MiB) of memory used by the task. If the `requiresCompatibilities` is `FARGATE` this field is required.
  /// [networkMode] Docker networking mode to use for the containers in the task. Valid values are `none`, `bridge`, `awsvpc`, and `host`.
  /// [pidMode] Process namespace to use for the containers in the task. The valid values are `host` and `task`.
  /// [placementConstraints] Configuration block for rules that are taken into consideration during task placement. Maximum number of `placementConstraints` is `10`. See `placementConstraints` Block.
  /// [proxyConfigurations] Configuration block for the App Mesh proxy. See `proxyConfiguration` Block.
  /// [region] Optional.
  /// [requiresCompatibilities] Set of launch types required by the task. The valid values are `EC2` and `FARGATE`.
  /// [revision] Revision of the task in a particular family.
  /// [runtimePlatforms] Configuration block for runtimePlatform that containers in your task may use.
  /// [status] Status of the task definition.
  /// [taskDefinition] Optional.
  /// [taskRoleArn] ARN of IAM role that allows your Amazon ECS container task to make calls to other AWS services.
  /// [volumes] Configuration block for volumes that containers in your task may use. See `volume` Block for details.
  const GetTaskDefinitionResult({
    this.arn,
    this.arnWithoutRevision,
    this.containerDefinitions,
    this.cpu,
    this.enableFaultInjection,
    this.ephemeralStorages,
    this.executionRoleArn,
    this.family,
    this.id,
    this.ipcMode,
    this.memory,
    this.networkMode,
    this.pidMode,
    this.placementConstraints,
    this.proxyConfigurations,
    this.region,
    this.requiresCompatibilities,
    this.revision,
    this.runtimePlatforms,
    this.status,
    this.taskDefinition,
    this.taskRoleArn,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'arnWithoutRevision': ?arnWithoutRevision,
      'containerDefinitions': ?containerDefinitions,
      'cpu': ?cpu,
      'enableFaultInjection': ?enableFaultInjection,
      'ephemeralStorages': ?(() { final guardedValue = ephemeralStorages; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTaskDefinitionEphemeralStorage, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'executionRoleArn': ?executionRoleArn,
      'family': ?family,
      'id': ?id,
      'ipcMode': ?ipcMode,
      'memory': ?memory,
      'networkMode': ?networkMode,
      'pidMode': ?pidMode,
      'placementConstraints': ?(() { final guardedValue = placementConstraints; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTaskDefinitionPlacementConstraint, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'proxyConfigurations': ?(() { final guardedValue = proxyConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTaskDefinitionProxyConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
      'requiresCompatibilities': ?requiresCompatibilities,
      'revision': ?revision,
      'runtimePlatforms': ?(() { final guardedValue = runtimePlatforms; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTaskDefinitionRuntimePlatform, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'status': ?status,
      'taskDefinition': ?taskDefinition,
      'taskRoleArn': ?taskRoleArn,
      'volumes': ?(() { final guardedValue = volumes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTaskDefinitionVolume, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetTaskDefinitionResult.fromMap(Map<String, dynamic> map) {
    return GetTaskDefinitionResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arnWithoutRevision: (() { final guardedValue = map['arnWithoutRevision']; if (guardedValue == null) return null; return guardedValue as String; })(),
      containerDefinitions: (() { final guardedValue = map['containerDefinitions']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enableFaultInjection: (() { final guardedValue = map['enableFaultInjection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      ephemeralStorages: (() { final guardedValue = map['ephemeralStorages']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTaskDefinitionEphemeralStorage>(guardedValue, (value) => GetTaskDefinitionEphemeralStorage.fromMap((value as Map).cast<String, dynamic>())); })(),
      executionRoleArn: (() { final guardedValue = map['executionRoleArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      family: (() { final guardedValue = map['family']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipcMode: (() { final guardedValue = map['ipcMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      memory: (() { final guardedValue = map['memory']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkMode: (() { final guardedValue = map['networkMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pidMode: (() { final guardedValue = map['pidMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      placementConstraints: (() { final guardedValue = map['placementConstraints']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTaskDefinitionPlacementConstraint>(guardedValue, (value) => GetTaskDefinitionPlacementConstraint.fromMap((value as Map).cast<String, dynamic>())); })(),
      proxyConfigurations: (() { final guardedValue = map['proxyConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTaskDefinitionProxyConfiguration>(guardedValue, (value) => GetTaskDefinitionProxyConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      requiresCompatibilities: (() { final guardedValue = map['requiresCompatibilities']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      runtimePlatforms: (() { final guardedValue = map['runtimePlatforms']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTaskDefinitionRuntimePlatform>(guardedValue, (value) => GetTaskDefinitionRuntimePlatform.fromMap((value as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      taskDefinition: (() { final guardedValue = map['taskDefinition']; if (guardedValue == null) return null; return guardedValue as String; })(),
      taskRoleArn: (() { final guardedValue = map['taskRoleArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      volumes: (() { final guardedValue = map['volumes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTaskDefinitionVolume>(guardedValue, (value) => GetTaskDefinitionVolume.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
