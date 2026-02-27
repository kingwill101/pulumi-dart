// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../awsx/default_log_group.dart';
import '../awsx/default_role_with_policy.dart';
import 'task_definition_container_definition.dart';

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
  final Map<String, dynamic>? ephemeralStorage;

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
  final List<Map<String, dynamic>>? placementConstraints;

  /// Configuration block for the App Mesh proxy. Detailed below.
  final Map<String, dynamic>? proxyConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final String? region;

  /// Configuration block for runtime_platform that containers in your task may use.
  final Map<String, dynamic>? runtimePlatform;

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
  final List<Map<String, dynamic>>? volumes;

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
    final map = <String, dynamic>{};
    final containerValue = container;
    if (containerValue != null) {
      map['container'] = containerValue.toMap();
    }
    final containersValue = containers;
    if (containersValue != null) {
      map['containers'] = pulumi.Input.encodeMapValues<
          TaskDefinitionContainerDefinition,
          Map<String, dynamic>>(containersValue, (value) => value.toMap());
    }
    final cpuValue = cpu;
    if (cpuValue != null) {
      map['cpu'] = cpuValue;
    }
    final enableFaultInjectionValue = enableFaultInjection;
    if (enableFaultInjectionValue != null) {
      map['enableFaultInjection'] = enableFaultInjectionValue;
    }
    final ephemeralStorageValue = ephemeralStorage;
    if (ephemeralStorageValue != null) {
      map['ephemeralStorage'] = ephemeralStorageValue;
    }
    final executionRoleValue = executionRole;
    if (executionRoleValue != null) {
      map['executionRole'] = executionRoleValue.toMap();
    }
    final familyValue = family;
    if (familyValue != null) {
      map['family'] = familyValue;
    }
    final ipcModeValue = ipcMode;
    if (ipcModeValue != null) {
      map['ipcMode'] = ipcModeValue;
    }
    final logGroupValue = logGroup;
    if (logGroupValue != null) {
      map['logGroup'] = logGroupValue.toMap();
    }
    final memoryValue = memory;
    if (memoryValue != null) {
      map['memory'] = memoryValue;
    }
    final networkModeValue = networkMode;
    if (networkModeValue != null) {
      map['networkMode'] = networkModeValue;
    }
    final pidModeValue = pidMode;
    if (pidModeValue != null) {
      map['pidMode'] = pidModeValue;
    }
    final placementConstraintsValue = placementConstraints;
    if (placementConstraintsValue != null) {
      map['placementConstraints'] = placementConstraintsValue;
    }
    final proxyConfigurationValue = proxyConfiguration;
    if (proxyConfigurationValue != null) {
      map['proxyConfiguration'] = proxyConfigurationValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final runtimePlatformValue = runtimePlatform;
    if (runtimePlatformValue != null) {
      map['runtimePlatform'] = runtimePlatformValue;
    }
    final skipDestroyValue = skipDestroy;
    if (skipDestroyValue != null) {
      map['skipDestroy'] = skipDestroyValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final taskRoleValue = taskRole;
    if (taskRoleValue != null) {
      map['taskRole'] = taskRoleValue.toMap();
    }
    final trackLatestValue = trackLatest;
    if (trackLatestValue != null) {
      map['trackLatest'] = trackLatestValue;
    }
    final volumesValue = volumes;
    if (volumesValue != null) {
      map['volumes'] = volumesValue;
    }
    return map;
  }

  factory EC2ServiceTaskDefinition.fromMap(Map<String, dynamic> map) {
    return EC2ServiceTaskDefinition(
      container: map['container'] == null
          ? null
          : TaskDefinitionContainerDefinition.fromMap(
              (map['container'] as Map).cast<String, dynamic>()),
      containers: map['containers'] == null
          ? null
          : pulumi.Input.decodeMapValues<TaskDefinitionContainerDefinition>(
              map['containers'],
              (value) => TaskDefinitionContainerDefinition.fromMap(
                  (value as Map).cast<String, dynamic>())),
      cpu: map['cpu'] == null ? null : map['cpu'] as String,
      enableFaultInjection: map['enableFaultInjection'] == null
          ? null
          : map['enableFaultInjection'] as bool,
      ephemeralStorage: map['ephemeralStorage'] == null
          ? null
          : (map['ephemeralStorage'] as Map).cast<String, dynamic>(),
      executionRole: map['executionRole'] == null
          ? null
          : DefaultRoleWithPolicy.fromMap(
              (map['executionRole'] as Map).cast<String, dynamic>()),
      family: map['family'] == null ? null : map['family'] as String,
      ipcMode: map['ipcMode'] == null ? null : map['ipcMode'] as String,
      logGroup: map['logGroup'] == null
          ? null
          : DefaultLogGroup.fromMap(
              (map['logGroup'] as Map).cast<String, dynamic>()),
      memory: map['memory'] == null ? null : map['memory'] as String,
      networkMode:
          map['networkMode'] == null ? null : map['networkMode'] as String,
      pidMode: map['pidMode'] == null ? null : map['pidMode'] as String,
      placementConstraints: map['placementConstraints'] == null
          ? null
          : (map['placementConstraints'] as List).cast<Map<String, dynamic>>(),
      proxyConfiguration: map['proxyConfiguration'] == null
          ? null
          : (map['proxyConfiguration'] as Map).cast<String, dynamic>(),
      region: map['region'] == null ? null : map['region'] as String,
      runtimePlatform: map['runtimePlatform'] == null
          ? null
          : (map['runtimePlatform'] as Map).cast<String, dynamic>(),
      skipDestroy:
          map['skipDestroy'] == null ? null : map['skipDestroy'] as bool,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      taskRole: map['taskRole'] == null
          ? null
          : DefaultRoleWithPolicy.fromMap(
              (map['taskRole'] as Map).cast<String, dynamic>()),
      trackLatest:
          map['trackLatest'] == null ? null : map['trackLatest'] as bool,
      volumes: map['volumes'] == null
          ? null
          : (map['volumes'] as List).cast<Map<String, dynamic>>(),
    );
  }
}
