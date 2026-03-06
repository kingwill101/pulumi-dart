// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'task_definition_ephemeral_storage.dart';
import 'task_definition_placement_constraint.dart';
import 'task_definition_proxy_configuration.dart';
import 'task_definition_runtime_platform.dart';
import 'task_definition_volume.dart';

/// Input properties used for looking up and filtering TaskDefinition resources.
class TaskDefinitionState {
  /// Full ARN of the Task Definition (including both `family` and `revision`).
  final pulumi.Input<String>? arn;
  /// ARN of the Task Definition with the trailing `revision` removed. This may be useful for situations where the latest task definition is always desired. If a revision isn't specified, the latest ACTIVE revision is used. See the [AWS documentation](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_StartTask.html#ECS-StartTask-request-taskDefinition) for details.
  final pulumi.Input<String>? arnWithoutRevision;
  /// A list of valid [container definitions](http://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ContainerDefinition.html) provided as a single valid JSON document. Please note that you should only provide values that are part of the container definition document. For a detailed description of what parameters are available, see the [Task Definition Parameters](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html) section from the official [Developer Guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide).
  final pulumi.Input<String>? containerDefinitions;
  /// Number of cpu units used by the task. If the `requires_compatibilities` is `FARGATE` this field is required.
  final pulumi.Input<String>? cpu;
  /// Enables fault injection and allows for fault injection requests to be accepted from the task's containers. Default is `false`.
  final pulumi.Input<bool>? enableFaultInjection;
  /// The amount of ephemeral storage to allocate for the task. This parameter is used to expand the total amount of ephemeral storage available, beyond the default amount, for tasks hosted on AWS Fargate. See Ephemeral Storage.
  final pulumi.Input<TaskDefinitionEphemeralStorage>? ephemeralStorage;
  /// ARN of the task execution role that the Amazon ECS container agent and the Docker daemon can assume.
  final pulumi.Input<String>? executionRoleArn;
  /// A unique name for your task definition.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? family;
  /// IPC resource namespace to be used for the containers in the task. Valid values: `host`, `task`, `none`.
  final pulumi.Input<String>? ipcMode;
  /// Amount (in MiB) of memory used by the task. If the `requires_compatibilities` is `FARGATE` this field is required.
  final pulumi.Input<String>? memory;
  /// Docker networking mode to use for the containers in the task. Valid values: `awsvpc`, `bridge`, `host`, and `none`.
  final pulumi.Input<String>? networkMode;
  /// Process namespace to use for the containers in the task. Valid values: host`, `task`.
  final pulumi.Input<String>? pidMode;
  /// Configuration block for rules that are taken into consideration during task placement. Maximum number of `placement_constraints` is `10`. Detailed below.
  final pulumi.Input<List<TaskDefinitionPlacementConstraint>>? placementConstraints;
  /// Configuration block for the App Mesh proxy. Detailed below.
  final pulumi.Input<TaskDefinitionProxyConfiguration>? proxyConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Set of launch types required by the task. Valid values: `EC2`, `EXTERNAL`, `FARGATE`, `MANAGED_INSTANCES`.
  final pulumi.Input<List<String>>? requiresCompatibilities;
  /// Revision of the task in a particular family.
  final pulumi.Input<int>? revision;
  /// Configuration block for runtime_platform that containers in your task may use.
  final pulumi.Input<TaskDefinitionRuntimePlatform>? runtimePlatform;
  /// Whether to retain the old revision when the resource is destroyed or replacement is necessary. Default is `false`.
  final pulumi.Input<bool>? skipDestroy;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// ARN of IAM role that allows your Amazon ECS container task to make calls to other AWS services.
  final pulumi.Input<String>? taskRoleArn;
  /// Whether should track latest `ACTIVE` task definition on AWS or the one created with the resource stored in state. Default is `false`. Useful in the event the task definition is modified outside of this resource.
  final pulumi.Input<bool>? trackLatest;
  /// Repeatable configuration block for volumes that containers in your task may use. Detailed below.
  ///
  /// &gt; **NOTE:** Proper escaping is required for JSON field values containing quotes (`"`) such as `environment` values. If directly setting the JSON, they should be escaped as `\"` in the JSON,  e.g., `"value": "I \"love\" escaped quotes"`. If using a variable value, they should be escaped as `\\\"` in the variable, e.g., `value = "I \\\"love\\\" escaped quotes"` in the variable and `"value": "${var.myvariable}"` in the JSON.
  ///
  /// &gt; **Note:** Fault injection only works with tasks using the `awsvpc` or `host` network modes. Fault injection isn't available on Windows.
  final pulumi.Input<List<TaskDefinitionVolume>>? volumes;

  /// Creates a new [TaskDefinitionState].
  /// [arn] Full ARN of the Task Definition (including both `family` and `revision`).
  /// [arnWithoutRevision] ARN of the Task Definition with the trailing `revision` removed. This may be useful for situations where the latest task definition is always desired. If a revision isn't specified, the latest ACTIVE revision is used. See the [AWS documentation](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_StartTask.html#ECS-StartTask-request-taskDefinition) for details.
  /// [containerDefinitions] A list of valid [container definitions](http://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ContainerDefinition.html) provided as a single valid JSON document. Please note that you should only provide values that are part of the container definition document. For a detailed description of what parameters are available, see the [Task Definition Parameters](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html) section from the official [Developer Guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide).
  /// [cpu] Number of cpu units used by the task. If the `requires_compatibilities` is `FARGATE` this field is required.
  /// [enableFaultInjection] Enables fault injection and allows for fault injection requests to be accepted from the task's containers. Default is `false`.
  /// [ephemeralStorage] The amount of ephemeral storage to allocate for the task. This parameter is used to expand the total amount of ephemeral storage available, beyond the default amount, for tasks hosted on AWS Fargate. See Ephemeral Storage.
  /// [executionRoleArn] ARN of the task execution role that the Amazon ECS container agent and the Docker daemon can assume.
  /// [family] A unique name for your task definition.
  /// [ipcMode] IPC resource namespace to be used for the containers in the task. Valid values: `host`, `task`, `none`.
  /// [memory] Amount (in MiB) of memory used by the task. If the `requires_compatibilities` is `FARGATE` this field is required.
  /// [networkMode] Docker networking mode to use for the containers in the task. Valid values: `awsvpc`, `bridge`, `host`, and `none`.
  /// [pidMode] Process namespace to use for the containers in the task. Valid values: host`, `task`.
  /// [placementConstraints] Configuration block for rules that are taken into consideration during task placement. Maximum number of `placement_constraints` is `10`. Detailed below.
  /// [proxyConfiguration] Configuration block for the App Mesh proxy. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [requiresCompatibilities] Set of launch types required by the task. Valid values: `EC2`, `EXTERNAL`, `FARGATE`, `MANAGED_INSTANCES`.
  /// [revision] Revision of the task in a particular family.
  /// [runtimePlatform] Configuration block for runtime_platform that containers in your task may use.
  /// [skipDestroy] Whether to retain the old revision when the resource is destroyed or replacement is necessary. Default is `false`.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [taskRoleArn] ARN of IAM role that allows your Amazon ECS container task to make calls to other AWS services.
  /// [trackLatest] Whether should track latest `ACTIVE` task definition on AWS or the one created with the resource stored in state. Default is `false`. Useful in the event the task definition is modified outside of this resource.
  /// [volumes] Repeatable configuration block for volumes that containers in your task may use. Detailed below.
  const TaskDefinitionState({
    this.arn,
    this.arnWithoutRevision,
    this.containerDefinitions,
    this.cpu,
    this.enableFaultInjection,
    this.ephemeralStorage,
    this.executionRoleArn,
    this.family,
    this.ipcMode,
    this.memory,
    this.networkMode,
    this.pidMode,
    this.placementConstraints,
    this.proxyConfiguration,
    this.region,
    this.requiresCompatibilities,
    this.revision,
    this.runtimePlatform,
    this.skipDestroy,
    this.tags,
    this.tagsAll,
    this.taskRoleArn,
    this.trackLatest,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'arnWithoutRevision': ?arnWithoutRevision,
      'containerDefinitions': ?containerDefinitions,
      'cpu': ?cpu,
      'enableFaultInjection': ?enableFaultInjection,
      'ephemeralStorage': ?pulumi.Input.mapOptionalInputValue<TaskDefinitionEphemeralStorage, Map<String, dynamic>>(ephemeralStorage, (value) => value.toMap()),
      'executionRoleArn': ?executionRoleArn,
      'family': ?family,
      'ipcMode': ?ipcMode,
      'memory': ?memory,
      'networkMode': ?networkMode,
      'pidMode': ?pidMode,
      'placementConstraints': ?pulumi.Input.mapOptionalInputValue<List<TaskDefinitionPlacementConstraint>, List<Map<String, dynamic>>>(placementConstraints, (value) => pulumi.Input.encodeList<TaskDefinitionPlacementConstraint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'proxyConfiguration': ?pulumi.Input.mapOptionalInputValue<TaskDefinitionProxyConfiguration, Map<String, dynamic>>(proxyConfiguration, (value) => value.toMap()),
      'region': ?region,
      'requiresCompatibilities': ?requiresCompatibilities,
      'revision': ?revision,
      'runtimePlatform': ?pulumi.Input.mapOptionalInputValue<TaskDefinitionRuntimePlatform, Map<String, dynamic>>(runtimePlatform, (value) => value.toMap()),
      'skipDestroy': ?skipDestroy,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'taskRoleArn': ?taskRoleArn,
      'trackLatest': ?trackLatest,
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<TaskDefinitionVolume>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<TaskDefinitionVolume, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TaskDefinitionState.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arnWithoutRevision: (() { final guardedValue = map['arnWithoutRevision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerDefinitions: (() { final guardedValue = map['containerDefinitions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableFaultInjection: (() { final guardedValue = map['enableFaultInjection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ephemeralStorage: (() { final guardedValue = map['ephemeralStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TaskDefinitionEphemeralStorage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      executionRoleArn: (() { final guardedValue = map['executionRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      family: (() { final guardedValue = map['family']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipcMode: (() { final guardedValue = map['ipcMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memory: (() { final guardedValue = map['memory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkMode: (() { final guardedValue = map['networkMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pidMode: (() { final guardedValue = map['pidMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      placementConstraints: (() { final guardedValue = map['placementConstraints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TaskDefinitionPlacementConstraint>(guardedValue, (value) => TaskDefinitionPlacementConstraint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      proxyConfiguration: (() { final guardedValue = map['proxyConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TaskDefinitionProxyConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requiresCompatibilities: (() { final guardedValue = map['requiresCompatibilities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      runtimePlatform: (() { final guardedValue = map['runtimePlatform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TaskDefinitionRuntimePlatform.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      skipDestroy: (() { final guardedValue = map['skipDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      taskRoleArn: (() { final guardedValue = map['taskRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trackLatest: (() { final guardedValue = map['trackLatest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      volumes: (() { final guardedValue = map['volumes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TaskDefinitionVolume>(guardedValue, (value) => TaskDefinitionVolume.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

