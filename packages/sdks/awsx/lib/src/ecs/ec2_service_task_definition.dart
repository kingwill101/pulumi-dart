// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../awsx/default_log_group.dart';
import '../awsx/default_role_with_policy.dart';
import 'task_definition_container_definition.dart';
import 'package:pulumi_aws/ecs.dart' as pulumi_aws_ecs;

/// Create a TaskDefinition resource with the given unique name, arguments, and options.
/// Creates required log-group and task & execution roles.
/// Presents required Service load balancers if target group included in port mappings.
class EC2ServiceTaskDefinition {
  /// Single container to make a TaskDefinition from.  Useful for simple cases where there aren't
  /// multiple containers, especially when creating a TaskDefinition to call [run] on.
  ///
  /// Either [container] or [containers] must be provided.
  final TaskDefinitionContainerDefinition? container;
  /// All the containers to make a TaskDefinition from.  Useful when creating a Service that will
  /// contain many containers within.
  ///
  /// Either [container] or [containers] must be provided.
  final Map<String, TaskDefinitionContainerDefinition>? containers;
  /// The number of cpu units used by the task. If not provided, a default will be computed based on the cumulative needs specified by [containerDefinitions]
  final String? cpu;
  /// Enables fault injection and allows for fault injection requests to be accepted from the task's containers. Default is `false`.
  final bool? enableFaultInjection;
  /// The amount of ephemeral storage to allocate for the task. This parameter is used to expand the total amount of ephemeral storage available, beyond the default amount, for tasks hosted on AWS Fargate. See Ephemeral Storage.
  final pulumi_aws_ecs.TaskDefinitionEphemeralStorage? ephemeralStorage;
  /// The execution role that the Amazon ECS container agent and the Docker daemon can assume.
  /// Will be created automatically if not defined.
  final DefaultRoleWithPolicy? executionRole;
  /// An optional unique name for your task definition. If not specified, then a default will be created.
  final String? family;
  /// IPC resource namespace to be used for the containers in the task The valid values are `host`, `task`, and `none`.
  final String? ipcMode;
  /// A set of volume blocks that containers in your task may use.
  final DefaultLogGroup? logGroup;
  /// The amount (in MiB) of memory used by the task.  If not provided, a default will be computed
  /// based on the cumulative needs specified by [containerDefinitions]
  final String? memory;
  /// Docker networking mode to use for the containers in the task. Valid values are `none`, `bridge`, `awsvpc`, and `host`.
  final String? networkMode;
  /// Process namespace to use for the containers in the task. The valid values are `host` and `task`.
  final String? pidMode;
  /// Configuration block for rules that are taken into consideration during task placement. Maximum number of `placement_constraints` is `10`. Detailed below.
  final List<pulumi_aws_ecs.TaskDefinitionPlacementConstraint>? placementConstraints;
  /// Configuration block for the App Mesh proxy. Detailed below.
  final pulumi_aws_ecs.TaskDefinitionProxyConfiguration? proxyConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final String? region;
  /// Configuration block for runtime_platform that containers in your task may use.
  final pulumi_aws_ecs.TaskDefinitionRuntimePlatform? runtimePlatform;
  /// Whether to retain the old revision when the resource is destroyed or replacement is necessary. Default is `false`.
  final bool? skipDestroy;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Map<String, String>? tags;
  /// IAM role that allows your Amazon ECS container task to make calls to other AWS services.
  /// Will be created automatically if not defined.
  final DefaultRoleWithPolicy? taskRole;
  /// Whether should track latest `ACTIVE` task definition on AWS or the one created with the resource stored in state. Default is `false`. Useful in the event the task definition is modified outside of this resource.
  final bool? trackLatest;
  /// Repeatable configuration block for volumes that containers in your task may use. Detailed below.
  ///
  /// > **NOTE:** Proper escaping is required for JSON field values containing quotes (`"`) such as `environment` values. If directly setting the JSON, they should be escaped as `\"` in the JSON,  e.g., `"value": "I \"love\" escaped quotes"`. If using a variable value, they should be escaped as `\\\"` in the variable, e.g., `value = "I \\\"love\\\" escaped quotes"` in the variable and `"value": "${var.myvariable}"` in the JSON.
  ///
  /// > **Note:** Fault injection only works with tasks using the `awsvpc` or `host` network modes. Fault injection isn't available on Windows.
  final List<pulumi_aws_ecs.TaskDefinitionVolume>? volumes;

  /// Creates a new [EC2ServiceTaskDefinition].
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
  EC2ServiceTaskDefinition({
    this.container,
    this.containers,
    this.cpu,
    this.enableFaultInjection,
    this.ephemeralStorage,
    this.executionRole,
    this.family,
    this.ipcMode,
    this.logGroup,
    this.memory,
    this.networkMode,
    this.pidMode,
    this.placementConstraints,
    this.proxyConfiguration,
    this.region,
    this.runtimePlatform,
    this.skipDestroy,
    this.tags,
    this.taskRole,
    this.trackLatest,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'container': ?container == null ? null : container!.toMap(),
      'containers': ?containers == null ? null : pulumi.Input.encodeMapValues<TaskDefinitionContainerDefinition, Map<String, dynamic>>(containers!, (value) => value.toMap()),
      'cpu': ?cpu,
      'enableFaultInjection': ?enableFaultInjection,
      'ephemeralStorage': ?ephemeralStorage == null ? null : ephemeralStorage!.toMap(),
      'executionRole': ?executionRole == null ? null : executionRole!.toMap(),
      'family': ?family,
      'ipcMode': ?ipcMode,
      'logGroup': ?logGroup == null ? null : logGroup!.toMap(),
      'memory': ?memory,
      'networkMode': ?networkMode,
      'pidMode': ?pidMode,
      'placementConstraints': ?placementConstraints == null ? null : pulumi.Input.encodeList<pulumi_aws_ecs.TaskDefinitionPlacementConstraint, Map<String, dynamic>>(placementConstraints!, (value) => value.toMap()),
      'proxyConfiguration': ?proxyConfiguration == null ? null : proxyConfiguration!.toMap(),
      'region': ?region,
      'runtimePlatform': ?runtimePlatform == null ? null : runtimePlatform!.toMap(),
      'skipDestroy': ?skipDestroy,
      'tags': ?tags,
      'taskRole': ?taskRole == null ? null : taskRole!.toMap(),
      'trackLatest': ?trackLatest,
      'volumes': ?volumes == null ? null : pulumi.Input.encodeList<pulumi_aws_ecs.TaskDefinitionVolume, Map<String, dynamic>>(volumes!, (value) => value.toMap()),
    };
  }

  factory EC2ServiceTaskDefinition.fromMap(Map<String, dynamic> map) {
    return EC2ServiceTaskDefinition(
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

