// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../awsx/default_log_group.dart';
import '../awsx/default_role_with_policy.dart';
import 'task_definition_container_definition.dart';
import 'package:pulumi_aws/ecs.dart' as pulumi_aws_ecs;

/// {@template pulumi_ecs_ec2_task_definition_args_doc}
/// The set of arguments for EC2TaskDefinition.
/// {@endtemplate}
/// {@macro pulumi_ecs_ec2_task_definition_args_doc}
class EC2TaskDefinitionArgs {
  /// Single container to make a TaskDefinition from.  Useful for simple cases where there aren't
  /// multiple containers, especially when creating a TaskDefinition to call [run] on.
  ///
  /// Either [container] or [containers] must be provided.
  final pulumi.Input<TaskDefinitionContainerDefinition>? container;
  /// All the containers to make a TaskDefinition from.  Useful when creating a Service that will
  /// contain many containers within.
  ///
  /// Either [container] or [containers] must be provided.
  final pulumi.Input<Map<String, TaskDefinitionContainerDefinition>>? containers;
  /// The number of cpu units used by the task. If not provided, a default will be computed based on the cumulative needs specified by [containerDefinitions]
  final pulumi.Input<String>? cpu;
  /// Enables fault injection and allows for fault injection requests to be accepted from the task's containers. Default is `false`.
  final pulumi.Input<bool>? enableFaultInjection;
  /// The amount of ephemeral storage to allocate for the task. This parameter is used to expand the total amount of ephemeral storage available, beyond the default amount, for tasks hosted on AWS Fargate. See Ephemeral Storage.
  final pulumi.Input<pulumi_aws_ecs.TaskDefinitionEphemeralStorage>? ephemeralStorage;
  /// The execution role that the Amazon ECS container agent and the Docker daemon can assume.
  /// Will be created automatically if not defined.
  final pulumi.Input<DefaultRoleWithPolicy>? executionRole;
  /// An optional unique name for your task definition. If not specified, then a default will be created.
  final pulumi.Input<String>? family;
  /// IPC resource namespace to be used for the containers in the task The valid values are `host`, `task`, and `none`.
  final pulumi.Input<String>? ipcMode;
  /// A set of volume blocks that containers in your task may use.
  final pulumi.Input<DefaultLogGroup>? logGroup;
  /// The amount (in MiB) of memory used by the task.  If not provided, a default will be computed
  /// based on the cumulative needs specified by [containerDefinitions]
  final pulumi.Input<String>? memory;
  /// Docker networking mode to use for the containers in the task. Valid values are `none`, `bridge`, `awsvpc`, and `host`.
  final pulumi.Input<String>? networkMode;
  /// Process namespace to use for the containers in the task. The valid values are `host` and `task`.
  final pulumi.Input<String>? pidMode;
  /// Configuration block for rules that are taken into consideration during task placement. Maximum number of `placement_constraints` is `10`. Detailed below.
  final pulumi.Input<List<pulumi_aws_ecs.TaskDefinitionPlacementConstraint>>? placementConstraints;
  /// Configuration block for the App Mesh proxy. Detailed below.
  final pulumi.Input<pulumi_aws_ecs.TaskDefinitionProxyConfiguration>? proxyConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration block for runtime_platform that containers in your task may use.
  final pulumi.Input<pulumi_aws_ecs.TaskDefinitionRuntimePlatform>? runtimePlatform;
  /// Whether to retain the old revision when the resource is destroyed or replacement is necessary. Default is `false`.
  final pulumi.Input<bool>? skipDestroy;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// IAM role that allows your Amazon ECS container task to make calls to other AWS services.
  /// Will be created automatically if not defined.
  final pulumi.Input<DefaultRoleWithPolicy>? taskRole;
  /// Whether should track latest `ACTIVE` task definition on AWS or the one created with the resource stored in state. Default is `false`. Useful in the event the task definition is modified outside of this resource.
  final pulumi.Input<bool>? trackLatest;
  /// Repeatable configuration block for volumes that containers in your task may use. Detailed below.
  ///
  /// > **NOTE:** Proper escaping is required for JSON field values containing quotes (`"`) such as `environment` values. If directly setting the JSON, they should be escaped as `\"` in the JSON,  e.g., `"value": "I \"love\" escaped quotes"`. If using a variable value, they should be escaped as `\\\"` in the variable, e.g., `value = "I \\\"love\\\" escaped quotes"` in the variable and `"value": "${var.myvariable}"` in the JSON.
  ///
  /// > **Note:** Fault injection only works with tasks using the `awsvpc` or `host` network modes. Fault injection isn't available on Windows.
  final pulumi.Input<List<pulumi_aws_ecs.TaskDefinitionVolume>>? volumes;

  /// Creates a new [EC2TaskDefinitionArgs].
  /// [container] Single container to make a TaskDefinition from.  Useful for simple cases where there aren't
  /// [containers] All the containers to make a TaskDefinition from.  Useful when creating a Service that will
  /// [cpu] The number of cpu units used by the task. If not provided, a default will be computed based on the cumulative needs specified by [containerDefinitions]
  /// [enableFaultInjection] Enables fault injection and allows for fault injection requests to be accepted from the task's containers. Default is `false`.
  /// [ephemeralStorage] The amount of ephemeral storage to allocate for the task. This parameter is used to expand the total amount of ephemeral storage available, beyond the default amount, for tasks hosted on AWS Fargate. See Ephemeral Storage.
  /// [executionRole] The execution role that the Amazon ECS container agent and the Docker daemon can assume.
  /// [family] An optional unique name for your task definition. If not specified, then a default will be created.
  /// [ipcMode] IPC resource namespace to be used for the containers in the task The valid values are `host`, `task`, and `none`.
  /// [logGroup] A set of volume blocks that containers in your task may use.
  /// [memory] The amount (in MiB) of memory used by the task.  If not provided, a default will be computed
  /// [networkMode] Docker networking mode to use for the containers in the task. Valid values are `none`, `bridge`, `awsvpc`, and `host`.
  /// [pidMode] Process namespace to use for the containers in the task. The valid values are `host` and `task`.
  /// [placementConstraints] Configuration block for rules that are taken into consideration during task placement. Maximum number of `placement_constraints` is `10`. Detailed below.
  /// [proxyConfiguration] Configuration block for the App Mesh proxy. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [runtimePlatform] Configuration block for runtime_platform that containers in your task may use.
  /// [skipDestroy] Whether to retain the old revision when the resource is destroyed or replacement is necessary. Default is `false`.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [taskRole] IAM role that allows your Amazon ECS container task to make calls to other AWS services.
  /// [trackLatest] Whether should track latest `ACTIVE` task definition on AWS or the one created with the resource stored in state. Default is `false`. Useful in the event the task definition is modified outside of this resource.
  /// [volumes] Repeatable configuration block for volumes that containers in your task may use. Detailed below.
  EC2TaskDefinitionArgs({
    TaskDefinitionContainerDefinition? container,
    Map<String, TaskDefinitionContainerDefinition>? containers,
    String? cpu,
    bool? enableFaultInjection,
    pulumi_aws_ecs.TaskDefinitionEphemeralStorage? ephemeralStorage,
    DefaultRoleWithPolicy? executionRole,
    String? family,
    String? ipcMode,
    DefaultLogGroup? logGroup,
    String? memory,
    String? networkMode,
    String? pidMode,
    List<pulumi_aws_ecs.TaskDefinitionPlacementConstraint>? placementConstraints,
    pulumi_aws_ecs.TaskDefinitionProxyConfiguration? proxyConfiguration,
    String? region,
    pulumi_aws_ecs.TaskDefinitionRuntimePlatform? runtimePlatform,
    bool? skipDestroy,
    Map<String, String>? tags,
    DefaultRoleWithPolicy? taskRole,
    bool? trackLatest,
    List<pulumi_aws_ecs.TaskDefinitionVolume>? volumes,
  }) :
      container = pulumi.Input.asOptionalInput<TaskDefinitionContainerDefinition>(container),
      containers = pulumi.Input.asOptionalInput<Map<String, TaskDefinitionContainerDefinition>>(containers),
      cpu = pulumi.Input.asOptionalInput<String>(cpu),
      enableFaultInjection = pulumi.Input.asOptionalInput<bool>(enableFaultInjection),
      ephemeralStorage = pulumi.Input.asOptionalInput<pulumi_aws_ecs.TaskDefinitionEphemeralStorage>(ephemeralStorage),
      executionRole = pulumi.Input.asOptionalInput<DefaultRoleWithPolicy>(executionRole),
      family = pulumi.Input.asOptionalInput<String>(family),
      ipcMode = pulumi.Input.asOptionalInput<String>(ipcMode),
      logGroup = pulumi.Input.asOptionalInput<DefaultLogGroup>(logGroup),
      memory = pulumi.Input.asOptionalInput<String>(memory),
      networkMode = pulumi.Input.asOptionalInput<String>(networkMode),
      pidMode = pulumi.Input.asOptionalInput<String>(pidMode),
      placementConstraints = pulumi.Input.asOptionalInput<List<pulumi_aws_ecs.TaskDefinitionPlacementConstraint>>(placementConstraints),
      proxyConfiguration = pulumi.Input.asOptionalInput<pulumi_aws_ecs.TaskDefinitionProxyConfiguration>(proxyConfiguration),
      region = pulumi.Input.asOptionalInput<String>(region),
      runtimePlatform = pulumi.Input.asOptionalInput<pulumi_aws_ecs.TaskDefinitionRuntimePlatform>(runtimePlatform),
      skipDestroy = pulumi.Input.asOptionalInput<bool>(skipDestroy),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      taskRole = pulumi.Input.asOptionalInput<DefaultRoleWithPolicy>(taskRole),
      trackLatest = pulumi.Input.asOptionalInput<bool>(trackLatest),
      volumes = pulumi.Input.asOptionalInput<List<pulumi_aws_ecs.TaskDefinitionVolume>>(volumes);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'container': ?pulumi.Input.mapOptionalInputValue<TaskDefinitionContainerDefinition, Map<String, dynamic>>(container, (value) => value.toMap()),
      'containers': ?pulumi.Input.mapOptionalInputValue<Map<String, TaskDefinitionContainerDefinition>, Map<String, Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeMapValues<TaskDefinitionContainerDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cpu': ?cpu,
      'enableFaultInjection': ?enableFaultInjection,
      'ephemeralStorage': ?pulumi.Input.mapOptionalInputValue<pulumi_aws_ecs.TaskDefinitionEphemeralStorage, Map<String, dynamic>>(ephemeralStorage, (value) => value.toMap()),
      'executionRole': ?pulumi.Input.mapOptionalInputValue<DefaultRoleWithPolicy, Map<String, dynamic>>(executionRole, (value) => value.toMap()),
      'family': ?family,
      'ipcMode': ?ipcMode,
      'logGroup': ?pulumi.Input.mapOptionalInputValue<DefaultLogGroup, Map<String, dynamic>>(logGroup, (value) => value.toMap()),
      'memory': ?memory,
      'networkMode': ?networkMode,
      'pidMode': ?pidMode,
      'placementConstraints': ?pulumi.Input.mapOptionalInputValue<List<pulumi_aws_ecs.TaskDefinitionPlacementConstraint>, List<Map<String, dynamic>>>(placementConstraints, (value) => pulumi.Input.encodeList<pulumi_aws_ecs.TaskDefinitionPlacementConstraint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'proxyConfiguration': ?pulumi.Input.mapOptionalInputValue<pulumi_aws_ecs.TaskDefinitionProxyConfiguration, Map<String, dynamic>>(proxyConfiguration, (value) => value.toMap()),
      'region': ?region,
      'runtimePlatform': ?pulumi.Input.mapOptionalInputValue<pulumi_aws_ecs.TaskDefinitionRuntimePlatform, Map<String, dynamic>>(runtimePlatform, (value) => value.toMap()),
      'skipDestroy': ?skipDestroy,
      'tags': ?tags,
      'taskRole': ?pulumi.Input.mapOptionalInputValue<DefaultRoleWithPolicy, Map<String, dynamic>>(taskRole, (value) => value.toMap()),
      'trackLatest': ?trackLatest,
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<pulumi_aws_ecs.TaskDefinitionVolume>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<pulumi_aws_ecs.TaskDefinitionVolume, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EC2TaskDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return EC2TaskDefinitionArgs(
      container: map['container'] == null ? null : TaskDefinitionContainerDefinition.fromMap((map['container'] as Map).cast<String, dynamic>()),
      containers: map['containers'] == null ? null : pulumi.Input.decodeMapValues<TaskDefinitionContainerDefinition>(map['containers'], (value) => TaskDefinitionContainerDefinition.fromMap((value as Map).cast<String, dynamic>())),
      cpu: map['cpu'] == null ? null : map['cpu'] as String,
      enableFaultInjection: map['enableFaultInjection'] == null ? null : map['enableFaultInjection'] as bool,
      ephemeralStorage: map['ephemeralStorage'] == null ? null : pulumi_aws_ecs.TaskDefinitionEphemeralStorage.fromMap((map['ephemeralStorage'] as Map).cast<String, dynamic>()),
      executionRole: map['executionRole'] == null ? null : DefaultRoleWithPolicy.fromMap((map['executionRole'] as Map).cast<String, dynamic>()),
      family: map['family'] == null ? null : map['family'] as String,
      ipcMode: map['ipcMode'] == null ? null : map['ipcMode'] as String,
      logGroup: map['logGroup'] == null ? null : DefaultLogGroup.fromMap((map['logGroup'] as Map).cast<String, dynamic>()),
      memory: map['memory'] == null ? null : map['memory'] as String,
      networkMode: map['networkMode'] == null ? null : map['networkMode'] as String,
      pidMode: map['pidMode'] == null ? null : map['pidMode'] as String,
      placementConstraints: map['placementConstraints'] == null ? null : pulumi.Input.decodeList<pulumi_aws_ecs.TaskDefinitionPlacementConstraint>(map['placementConstraints'], (value) => pulumi_aws_ecs.TaskDefinitionPlacementConstraint.fromMap((value as Map).cast<String, dynamic>())),
      proxyConfiguration: map['proxyConfiguration'] == null ? null : pulumi_aws_ecs.TaskDefinitionProxyConfiguration.fromMap((map['proxyConfiguration'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      runtimePlatform: map['runtimePlatform'] == null ? null : pulumi_aws_ecs.TaskDefinitionRuntimePlatform.fromMap((map['runtimePlatform'] as Map).cast<String, dynamic>()),
      skipDestroy: map['skipDestroy'] == null ? null : map['skipDestroy'] as bool,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      taskRole: map['taskRole'] == null ? null : DefaultRoleWithPolicy.fromMap((map['taskRole'] as Map).cast<String, dynamic>()),
      trackLatest: map['trackLatest'] == null ? null : map['trackLatest'] as bool,
      volumes: map['volumes'] == null ? null : pulumi.Input.decodeList<pulumi_aws_ecs.TaskDefinitionVolume>(map['volumes'], (value) => pulumi_aws_ecs.TaskDefinitionVolume.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

