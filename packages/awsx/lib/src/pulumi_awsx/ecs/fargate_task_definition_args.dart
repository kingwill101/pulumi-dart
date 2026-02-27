// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../awsx/default_log_group.dart';
import '../awsx/default_role_with_policy.dart';
import 'task_definition_container_definition.dart';

/// The set of arguments for FargateTaskDefinition.
class FargateTaskDefinitionArgs {
  /// Single container to make a TaskDefinition from.  Useful for simple cases where there aren't
  /// multiple containers, especially when creating a TaskDefinition to call [run] on.
  ///
  /// Either [container] or [containers] must be provided.
  final pulumi.Input<TaskDefinitionContainerDefinition>? container;

  /// All the containers to make a TaskDefinition from.  Useful when creating a Service that will
  /// contain many containers within.
  ///
  /// Either [container] or [containers] must be provided.
  final pulumi.Input<Map<String, TaskDefinitionContainerDefinition>>?
      containers;

  /// The number of cpu units used by the task. If not provided, a default will be computed based on the cumulative needs specified by [containerDefinitions]
  final pulumi.Input<String>? cpu;

  /// Enables fault injection and allows for fault injection requests to be accepted from the task's containers. Default is `false`.
  final pulumi.Input<bool>? enableFaultInjection;

  /// The amount of ephemeral storage to allocate for the task. This parameter is used to expand the total amount of ephemeral storage available, beyond the default amount, for tasks hosted on AWS Fargate. See Ephemeral Storage.
  final pulumi.Input<Map<String, dynamic>>? ephemeralStorage;

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

  /// Process namespace to use for the containers in the task. The valid values are `host` and `task`.
  final pulumi.Input<String>? pidMode;

  /// Configuration block for rules that are taken into consideration during task placement. Maximum number of `placement_constraints` is `10`. Detailed below.
  final pulumi.Input<List<Map<String, dynamic>>>? placementConstraints;

  /// Configuration block for the App Mesh proxy. Detailed below.
  final pulumi.Input<Map<String, dynamic>>? proxyConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Configuration block for runtime_platform that containers in your task may use.
  final pulumi.Input<Map<String, dynamic>>? runtimePlatform;

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
  final pulumi.Input<List<Map<String, dynamic>>>? volumes;

  FargateTaskDefinitionArgs({
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
      map['container'] = pulumi.Input.mapOptionalInputValue<
          TaskDefinitionContainerDefinition,
          Map<String, dynamic>>(containerValue, (value) => value.toMap());
    }
    final containersValue = containers;
    if (containersValue != null) {
      map['containers'] = pulumi.Input.mapOptionalInputValue<
              Map<String, TaskDefinitionContainerDefinition>,
              Map<String, Map<String, dynamic>>>(
          containersValue,
          (value) => pulumi.Input.encodeMapValues<
              TaskDefinitionContainerDefinition,
              Map<String, dynamic>>(value, (value) => value.toMap()));
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
      map['executionRole'] = pulumi.Input.mapOptionalInputValue<
          DefaultRoleWithPolicy,
          Map<String, dynamic>>(executionRoleValue, (value) => value.toMap());
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
      map['logGroup'] = pulumi.Input.mapOptionalInputValue<DefaultLogGroup,
          Map<String, dynamic>>(logGroupValue, (value) => value.toMap());
    }
    final memoryValue = memory;
    if (memoryValue != null) {
      map['memory'] = memoryValue;
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
      map['taskRole'] = pulumi.Input.mapOptionalInputValue<
          DefaultRoleWithPolicy,
          Map<String, dynamic>>(taskRoleValue, (value) => value.toMap());
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

  factory FargateTaskDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return FargateTaskDefinitionArgs(
      container:
          pulumi.Input.asOptionalInput<TaskDefinitionContainerDefinition>(
              map['container']),
      containers: pulumi.Input.asOptionalInput<
          Map<String, TaskDefinitionContainerDefinition>>(map['containers']),
      cpu: pulumi.Input.asOptionalInput<String>(map['cpu']),
      enableFaultInjection:
          pulumi.Input.asOptionalInput<bool>(map['enableFaultInjection']),
      ephemeralStorage: pulumi.Input.asOptionalInput<Map<String, dynamic>>(
          map['ephemeralStorage']),
      executionRole: pulumi.Input.asOptionalInput<DefaultRoleWithPolicy>(
          map['executionRole']),
      family: pulumi.Input.asOptionalInput<String>(map['family']),
      ipcMode: pulumi.Input.asOptionalInput<String>(map['ipcMode']),
      logGroup: pulumi.Input.asOptionalInput<DefaultLogGroup>(map['logGroup']),
      memory: pulumi.Input.asOptionalInput<String>(map['memory']),
      pidMode: pulumi.Input.asOptionalInput<String>(map['pidMode']),
      placementConstraints:
          pulumi.Input.asOptionalInput<List<Map<String, dynamic>>>(
              map['placementConstraints']),
      proxyConfiguration: pulumi.Input.asOptionalInput<Map<String, dynamic>>(
          map['proxyConfiguration']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      runtimePlatform: pulumi.Input.asOptionalInput<Map<String, dynamic>>(
          map['runtimePlatform']),
      skipDestroy: pulumi.Input.asOptionalInput<bool>(map['skipDestroy']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      taskRole:
          pulumi.Input.asOptionalInput<DefaultRoleWithPolicy>(map['taskRole']),
      trackLatest: pulumi.Input.asOptionalInput<bool>(map['trackLatest']),
      volumes: pulumi.Input.asOptionalInput<List<Map<String, dynamic>>>(
          map['volumes']),
    );
  }
}
