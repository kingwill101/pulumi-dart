// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'task_definition_ephemeral_storage.dart';
import 'task_definition_placement_constraint.dart';
import 'task_definition_proxy_configuration.dart';
import 'task_definition_runtime_platform.dart';
import 'task_definition_volume.dart';

/// {@template pulumi_ecs_task_definition_task_definition_args_doc}
/// The set of arguments for TaskDefinition.
/// {@endtemplate}
/// {@macro pulumi_ecs_task_definition_task_definition_args_doc}
class TaskDefinitionArgs {
  /// A list of valid [container definitions](http://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ContainerDefinition.html) provided as a single valid JSON document. Please note that you should only provide values that are part of the container definition document. For a detailed description of what parameters are available, see the [Task Definition Parameters](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html) section from the official [Developer Guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide).
  final pulumi.Input<String> containerDefinitions;
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
  final pulumi.Input<String> family;
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
  /// Configuration block for runtime_platform that containers in your task may use.
  final pulumi.Input<TaskDefinitionRuntimePlatform>? runtimePlatform;
  /// Whether to retain the old revision when the resource is destroyed or replacement is necessary. Default is `false`.
  final pulumi.Input<bool>? skipDestroy;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// ARN of IAM role that allows your Amazon ECS container task to make calls to other AWS services.
  final pulumi.Input<String>? taskRoleArn;
  /// Whether should track latest `ACTIVE` task definition on AWS or the one created with the resource stored in state. Default is `false`. Useful in the event the task definition is modified outside of this resource.
  final pulumi.Input<bool>? trackLatest;
  /// Repeatable configuration block for volumes that containers in your task may use. Detailed below.
  ///
  /// > **NOTE:** Proper escaping is required for JSON field values containing quotes (`"`) such as `environment` values. If directly setting the JSON, they should be escaped as `\"` in the JSON,  e.g., `"value": "I \"love\" escaped quotes"`. If using a variable value, they should be escaped as `\\\"` in the variable, e.g., `value = "I \\\"love\\\" escaped quotes"` in the variable and `"value": "${var.myvariable}"` in the JSON.
  ///
  /// > **Note:** Fault injection only works with tasks using the `awsvpc` or `host` network modes. Fault injection isn't available on Windows.
  final pulumi.Input<List<TaskDefinitionVolume>>? volumes;

  /// Creates a new [TaskDefinitionArgs].
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
  /// [runtimePlatform] Configuration block for runtime_platform that containers in your task may use.
  /// [skipDestroy] Whether to retain the old revision when the resource is destroyed or replacement is necessary. Default is `false`.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [taskRoleArn] ARN of IAM role that allows your Amazon ECS container task to make calls to other AWS services.
  /// [trackLatest] Whether should track latest `ACTIVE` task definition on AWS or the one created with the resource stored in state. Default is `false`. Useful in the event the task definition is modified outside of this resource.
  /// [volumes] Repeatable configuration block for volumes that containers in your task may use. Detailed below.
  TaskDefinitionArgs({
    required pulumi.Output<String> containerDefinitions,
    pulumi.Output<String>? cpu,
    pulumi.Output<bool>? enableFaultInjection,
    pulumi.Output<TaskDefinitionEphemeralStorage>? ephemeralStorage,
    pulumi.Output<String>? executionRoleArn,
    required pulumi.Output<String> family,
    pulumi.Output<String>? ipcMode,
    pulumi.Output<String>? memory,
    pulumi.Output<String>? networkMode,
    pulumi.Output<String>? pidMode,
    pulumi.Output<List<TaskDefinitionPlacementConstraint>>? placementConstraints,
    pulumi.Output<TaskDefinitionProxyConfiguration>? proxyConfiguration,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? requiresCompatibilities,
    pulumi.Output<TaskDefinitionRuntimePlatform>? runtimePlatform,
    pulumi.Output<bool>? skipDestroy,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? taskRoleArn,
    pulumi.Output<bool>? trackLatest,
    pulumi.Output<List<TaskDefinitionVolume>>? volumes,
  }) :
      containerDefinitions = pulumi.Input.asInput<String>(containerDefinitions),
      cpu = pulumi.Input.asOptionalInput<String>(cpu),
      enableFaultInjection = pulumi.Input.asOptionalInput<bool>(enableFaultInjection),
      ephemeralStorage = pulumi.Input.asOptionalInput<TaskDefinitionEphemeralStorage>(ephemeralStorage),
      executionRoleArn = pulumi.Input.asOptionalInput<String>(executionRoleArn),
      family = pulumi.Input.asInput<String>(family),
      ipcMode = pulumi.Input.asOptionalInput<String>(ipcMode),
      memory = pulumi.Input.asOptionalInput<String>(memory),
      networkMode = pulumi.Input.asOptionalInput<String>(networkMode),
      pidMode = pulumi.Input.asOptionalInput<String>(pidMode),
      placementConstraints = pulumi.Input.asOptionalInput<List<TaskDefinitionPlacementConstraint>>(placementConstraints),
      proxyConfiguration = pulumi.Input.asOptionalInput<TaskDefinitionProxyConfiguration>(proxyConfiguration),
      region = pulumi.Input.asOptionalInput<String>(region),
      requiresCompatibilities = pulumi.Input.asOptionalInput<List<String>>(requiresCompatibilities),
      runtimePlatform = pulumi.Input.asOptionalInput<TaskDefinitionRuntimePlatform>(runtimePlatform),
      skipDestroy = pulumi.Input.asOptionalInput<bool>(skipDestroy),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      taskRoleArn = pulumi.Input.asOptionalInput<String>(taskRoleArn),
      trackLatest = pulumi.Input.asOptionalInput<bool>(trackLatest),
      volumes = pulumi.Input.asOptionalInput<List<TaskDefinitionVolume>>(volumes);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerDefinitions': containerDefinitions,
      'cpu': ?cpu,
      'enableFaultInjection': ?enableFaultInjection,
      'ephemeralStorage': ?pulumi.Input.mapOptionalInputValue<TaskDefinitionEphemeralStorage, Map<String, dynamic>>(ephemeralStorage, (value) => value.toMap()),
      'executionRoleArn': ?executionRoleArn,
      'family': family,
      'ipcMode': ?ipcMode,
      'memory': ?memory,
      'networkMode': ?networkMode,
      'pidMode': ?pidMode,
      'placementConstraints': ?pulumi.Input.mapOptionalInputValue<List<TaskDefinitionPlacementConstraint>, List<Map<String, dynamic>>>(placementConstraints, (value) => pulumi.Input.encodeList<TaskDefinitionPlacementConstraint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'proxyConfiguration': ?pulumi.Input.mapOptionalInputValue<TaskDefinitionProxyConfiguration, Map<String, dynamic>>(proxyConfiguration, (value) => value.toMap()),
      'region': ?region,
      'requiresCompatibilities': ?requiresCompatibilities,
      'runtimePlatform': ?pulumi.Input.mapOptionalInputValue<TaskDefinitionRuntimePlatform, Map<String, dynamic>>(runtimePlatform, (value) => value.toMap()),
      'skipDestroy': ?skipDestroy,
      'tags': ?tags,
      'taskRoleArn': ?taskRoleArn,
      'trackLatest': ?trackLatest,
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<TaskDefinitionVolume>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<TaskDefinitionVolume, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TaskDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionArgs(
      containerDefinitions: pulumi.Output.create<String>(map['containerDefinitions'] as String),
      cpu: map['cpu'] == null ? null : pulumi.Output.create<String>(map['cpu'] as String),
      enableFaultInjection: map['enableFaultInjection'] == null ? null : pulumi.Output.create<bool>(map['enableFaultInjection'] as bool),
      ephemeralStorage: map['ephemeralStorage'] == null ? null : pulumi.Output.create<TaskDefinitionEphemeralStorage>(TaskDefinitionEphemeralStorage.fromMap((map['ephemeralStorage'] as Map).cast<String, dynamic>())),
      executionRoleArn: map['executionRoleArn'] == null ? null : pulumi.Output.create<String>(map['executionRoleArn'] as String),
      family: pulumi.Output.create<String>(map['family'] as String),
      ipcMode: map['ipcMode'] == null ? null : pulumi.Output.create<String>(map['ipcMode'] as String),
      memory: map['memory'] == null ? null : pulumi.Output.create<String>(map['memory'] as String),
      networkMode: map['networkMode'] == null ? null : pulumi.Output.create<String>(map['networkMode'] as String),
      pidMode: map['pidMode'] == null ? null : pulumi.Output.create<String>(map['pidMode'] as String),
      placementConstraints: map['placementConstraints'] == null ? null : pulumi.Output.create<List<TaskDefinitionPlacementConstraint>>(pulumi.Input.decodeList<TaskDefinitionPlacementConstraint>(map['placementConstraints'], (value) => TaskDefinitionPlacementConstraint.fromMap((value as Map).cast<String, dynamic>()))),
      proxyConfiguration: map['proxyConfiguration'] == null ? null : pulumi.Output.create<TaskDefinitionProxyConfiguration>(TaskDefinitionProxyConfiguration.fromMap((map['proxyConfiguration'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      requiresCompatibilities: map['requiresCompatibilities'] == null ? null : pulumi.Output.create<List<String>>((map['requiresCompatibilities'] as List).cast<String>()),
      runtimePlatform: map['runtimePlatform'] == null ? null : pulumi.Output.create<TaskDefinitionRuntimePlatform>(TaskDefinitionRuntimePlatform.fromMap((map['runtimePlatform'] as Map).cast<String, dynamic>())),
      skipDestroy: map['skipDestroy'] == null ? null : pulumi.Output.create<bool>(map['skipDestroy'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      taskRoleArn: map['taskRoleArn'] == null ? null : pulumi.Output.create<String>(map['taskRoleArn'] as String),
      trackLatest: map['trackLatest'] == null ? null : pulumi.Output.create<bool>(map['trackLatest'] as bool),
      volumes: map['volumes'] == null ? null : pulumi.Output.create<List<TaskDefinitionVolume>>(pulumi.Input.decodeList<TaskDefinitionVolume>(map['volumes'], (value) => TaskDefinitionVolume.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

