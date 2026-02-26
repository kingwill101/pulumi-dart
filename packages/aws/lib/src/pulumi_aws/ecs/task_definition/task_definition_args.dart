// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../task_definition_ephemeral_storage/task_definition_ephemeral_storage.dart';
import '../task_definition_placement_constraint/task_definition_placement_constraint.dart';
import '../task_definition_proxy_configuration/task_definition_proxy_configuration.dart';
import '../task_definition_runtime_platform/task_definition_runtime_platform.dart';
import '../task_definition_volume/task_definition_volume.dart';

/// The set of arguments for TaskDefinition.
class TaskDefinitionArgs {
  /// A list of valid [container definitions](http://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ContainerDefinition.html) provided as a single valid JSON document. Please note that you should only provide values that are part of the container definition document. For a detailed description of what parameters are available, see the [Task Definition Parameters](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html) section from the official [Developer Guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide).
  final Input<String> containerDefinitions;

  /// Number of cpu units used by the task. If the <span pulumi-lang-nodejs="`requiresCompatibilities`" pulumi-lang-dotnet="`RequiresCompatibilities`" pulumi-lang-go="`requiresCompatibilities`" pulumi-lang-python="`requires_compatibilities`" pulumi-lang-yaml="`requiresCompatibilities`" pulumi-lang-java="`requiresCompatibilities`">`requires_compatibilities`</span> is `FARGATE` this field is required.
  final Input<String>? cpu;

  /// Enables fault injection and allows for fault injection requests to be accepted from the task's containers. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? enableFaultInjection;

  /// The amount of ephemeral storage to allocate for the task. This parameter is used to expand the total amount of ephemeral storage available, beyond the default amount, for tasks hosted on AWS Fargate. See Ephemeral Storage.
  final Input<TaskDefinitionEphemeralStorage>? ephemeralStorage;

  /// ARN of the task execution role that the Amazon ECS container agent and the Docker daemon can assume.
  final Input<String>? executionRoleArn;

  /// A unique name for your task definition.
  ///
  /// The following arguments are optional:
  final Input<String> family;

  /// IPC resource namespace to be used for the containers in the task. Valid values: <span pulumi-lang-nodejs="`host`" pulumi-lang-dotnet="`Host`" pulumi-lang-go="`host`" pulumi-lang-python="`host`" pulumi-lang-yaml="`host`" pulumi-lang-java="`host`">`host`</span>, <span pulumi-lang-nodejs="`task`" pulumi-lang-dotnet="`Task`" pulumi-lang-go="`task`" pulumi-lang-python="`task`" pulumi-lang-yaml="`task`" pulumi-lang-java="`task`">`task`</span>, <span pulumi-lang-nodejs="`none`" pulumi-lang-dotnet="`None`" pulumi-lang-go="`none`" pulumi-lang-python="`none`" pulumi-lang-yaml="`none`" pulumi-lang-java="`none`">`none`</span>.
  final Input<String>? ipcMode;

  /// Amount (in MiB) of memory used by the task. If the <span pulumi-lang-nodejs="`requiresCompatibilities`" pulumi-lang-dotnet="`RequiresCompatibilities`" pulumi-lang-go="`requiresCompatibilities`" pulumi-lang-python="`requires_compatibilities`" pulumi-lang-yaml="`requiresCompatibilities`" pulumi-lang-java="`requiresCompatibilities`">`requires_compatibilities`</span> is `FARGATE` this field is required.
  final Input<String>? memory;

  /// Docker networking mode to use for the containers in the task. Valid values: <span pulumi-lang-nodejs="`awsvpc`" pulumi-lang-dotnet="`Awsvpc`" pulumi-lang-go="`awsvpc`" pulumi-lang-python="`awsvpc`" pulumi-lang-yaml="`awsvpc`" pulumi-lang-java="`awsvpc`">`awsvpc`</span>, <span pulumi-lang-nodejs="`bridge`" pulumi-lang-dotnet="`Bridge`" pulumi-lang-go="`bridge`" pulumi-lang-python="`bridge`" pulumi-lang-yaml="`bridge`" pulumi-lang-java="`bridge`">`bridge`</span>, <span pulumi-lang-nodejs="`host`" pulumi-lang-dotnet="`Host`" pulumi-lang-go="`host`" pulumi-lang-python="`host`" pulumi-lang-yaml="`host`" pulumi-lang-java="`host`">`host`</span>, and <span pulumi-lang-nodejs="`none`" pulumi-lang-dotnet="`None`" pulumi-lang-go="`none`" pulumi-lang-python="`none`" pulumi-lang-yaml="`none`" pulumi-lang-java="`none`">`none`</span>.
  final Input<String>? networkMode;

  /// Process namespace to use for the containers in the task. Valid values: host`, <span pulumi-lang-nodejs="`task`" pulumi-lang-dotnet="`Task`" pulumi-lang-go="`task`" pulumi-lang-python="`task`" pulumi-lang-yaml="`task`" pulumi-lang-java="`task`">`task`</span>.
  final Input<String>? pidMode;

  /// Configuration block for rules that are taken into consideration during task placement. Maximum number of <span pulumi-lang-nodejs="`placementConstraints`" pulumi-lang-dotnet="`PlacementConstraints`" pulumi-lang-go="`placementConstraints`" pulumi-lang-python="`placement_constraints`" pulumi-lang-yaml="`placementConstraints`" pulumi-lang-java="`placementConstraints`">`placement_constraints`</span> is <span pulumi-lang-nodejs="`10`" pulumi-lang-dotnet="`10`" pulumi-lang-go="`10`" pulumi-lang-python="`10`" pulumi-lang-yaml="`10`" pulumi-lang-java="`10`">`10`</span>. Detailed below.
  final Input<List<TaskDefinitionPlacementConstraint>>? placementConstraints;

  /// Configuration block for the App Mesh proxy. Detailed below.
  final Input<TaskDefinitionProxyConfiguration>? proxyConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Set of launch types required by the task. Valid values: `EC2`, `EXTERNAL`, `FARGATE`, `MANAGED_INSTANCES`.
  final Input<List<String>>? requiresCompatibilities;

  /// Configuration block for<span pulumi-lang-nodejs=" runtimePlatform " pulumi-lang-dotnet=" RuntimePlatform " pulumi-lang-go=" runtimePlatform " pulumi-lang-python=" runtime_platform " pulumi-lang-yaml=" runtimePlatform " pulumi-lang-java=" runtimePlatform "> runtime_platform </span>that containers in your task may use.
  final Input<TaskDefinitionRuntimePlatform>? runtimePlatform;

  /// Whether to retain the old revision when the resource is destroyed or replacement is necessary. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? skipDestroy;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// ARN of IAM role that allows your Amazon ECS container task to make calls to other AWS services.
  final Input<String>? taskRoleArn;

  /// Whether should track latest `ACTIVE` task definition on AWS or the one created with the resource stored in state. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. Useful in the event the task definition is modified outside of this resource.
  final Input<bool>? trackLatest;

  /// Repeatable configuration block for volumes that containers in your task may use. Detailed below.
  ///
  /// > **NOTE:** Proper escaping is required for JSON field values containing quotes (`"`) such as <span pulumi-lang-nodejs="`environment`" pulumi-lang-dotnet="`Environment`" pulumi-lang-go="`environment`" pulumi-lang-python="`environment`" pulumi-lang-yaml="`environment`" pulumi-lang-java="`environment`">`environment`</span> values. If directly setting the JSON, they should be escaped as `\"` in the JSON,  e.g., `"value": "I \"love\" escaped quotes"`. If using a variable value, they should be escaped as `\\\"` in the variable, e.g., `value = "I \\\"love\\\" escaped quotes"` in the variable and `"value": "${var.myvariable}"` in the JSON.
  ///
  /// > **Note:** Fault injection only works with tasks using the <span pulumi-lang-nodejs="`awsvpc`" pulumi-lang-dotnet="`Awsvpc`" pulumi-lang-go="`awsvpc`" pulumi-lang-python="`awsvpc`" pulumi-lang-yaml="`awsvpc`" pulumi-lang-java="`awsvpc`">`awsvpc`</span> or <span pulumi-lang-nodejs="`host`" pulumi-lang-dotnet="`Host`" pulumi-lang-go="`host`" pulumi-lang-python="`host`" pulumi-lang-yaml="`host`" pulumi-lang-java="`host`">`host`</span> network modes. Fault injection isn't available on Windows.
  final Input<List<TaskDefinitionVolume>>? volumes;

  TaskDefinitionArgs({
    required this.containerDefinitions,
    this.cpu,
    this.enableFaultInjection,
    this.ephemeralStorage,
    this.executionRoleArn,
    required this.family,
    this.ipcMode,
    this.memory,
    this.networkMode,
    this.pidMode,
    this.placementConstraints,
    this.proxyConfiguration,
    this.region,
    this.requiresCompatibilities,
    this.runtimePlatform,
    this.skipDestroy,
    this.tags,
    this.taskRoleArn,
    this.trackLatest,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['containerDefinitions'] = containerDefinitions;
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
      map['ephemeralStorage'] = Input.mapOptionalInputValue<
              TaskDefinitionEphemeralStorage, Map<String, dynamic>>(
          ephemeralStorageValue, (value) => value.toMap());
    }
    final executionRoleArnValue = executionRoleArn;
    if (executionRoleArnValue != null) {
      map['executionRoleArn'] = executionRoleArnValue;
    }
    map['family'] = family;
    final ipcModeValue = ipcMode;
    if (ipcModeValue != null) {
      map['ipcMode'] = ipcModeValue;
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
      map['placementConstraints'] = Input.mapOptionalInputValue<
              List<TaskDefinitionPlacementConstraint>,
              List<Map<String, dynamic>>>(
          placementConstraintsValue,
          (value) => Input.encodeList<TaskDefinitionPlacementConstraint,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final proxyConfigurationValue = proxyConfiguration;
    if (proxyConfigurationValue != null) {
      map['proxyConfiguration'] = Input.mapOptionalInputValue<
              TaskDefinitionProxyConfiguration, Map<String, dynamic>>(
          proxyConfigurationValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final requiresCompatibilitiesValue = requiresCompatibilities;
    if (requiresCompatibilitiesValue != null) {
      map['requiresCompatibilities'] = requiresCompatibilitiesValue;
    }
    final runtimePlatformValue = runtimePlatform;
    if (runtimePlatformValue != null) {
      map['runtimePlatform'] = Input.mapOptionalInputValue<
          TaskDefinitionRuntimePlatform,
          Map<String, dynamic>>(runtimePlatformValue, (value) => value.toMap());
    }
    final skipDestroyValue = skipDestroy;
    if (skipDestroyValue != null) {
      map['skipDestroy'] = skipDestroyValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final taskRoleArnValue = taskRoleArn;
    if (taskRoleArnValue != null) {
      map['taskRoleArn'] = taskRoleArnValue;
    }
    final trackLatestValue = trackLatest;
    if (trackLatestValue != null) {
      map['trackLatest'] = trackLatestValue;
    }
    final volumesValue = volumes;
    if (volumesValue != null) {
      map['volumes'] = Input.mapOptionalInputValue<List<TaskDefinitionVolume>,
              List<Map<String, dynamic>>>(
          volumesValue,
          (value) =>
              Input.encodeList<TaskDefinitionVolume, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    return map;
  }

  factory TaskDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionArgs(
      containerDefinitions: Input.asInput<String>(map['containerDefinitions']),
      cpu: Input.asOptionalInput<String>(map['cpu']),
      enableFaultInjection:
          Input.asOptionalInput<bool>(map['enableFaultInjection']),
      ephemeralStorage: Input.asOptionalInput<TaskDefinitionEphemeralStorage>(
          map['ephemeralStorage']),
      executionRoleArn: Input.asOptionalInput<String>(map['executionRoleArn']),
      family: Input.asInput<String>(map['family']),
      ipcMode: Input.asOptionalInput<String>(map['ipcMode']),
      memory: Input.asOptionalInput<String>(map['memory']),
      networkMode: Input.asOptionalInput<String>(map['networkMode']),
      pidMode: Input.asOptionalInput<String>(map['pidMode']),
      placementConstraints:
          Input.asOptionalInput<List<TaskDefinitionPlacementConstraint>>(
              map['placementConstraints']),
      proxyConfiguration:
          Input.asOptionalInput<TaskDefinitionProxyConfiguration>(
              map['proxyConfiguration']),
      region: Input.asOptionalInput<String>(map['region']),
      requiresCompatibilities:
          Input.asOptionalInput<List<String>>(map['requiresCompatibilities']),
      runtimePlatform: Input.asOptionalInput<TaskDefinitionRuntimePlatform>(
          map['runtimePlatform']),
      skipDestroy: Input.asOptionalInput<bool>(map['skipDestroy']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      taskRoleArn: Input.asOptionalInput<String>(map['taskRoleArn']),
      trackLatest: Input.asOptionalInput<bool>(map['trackLatest']),
      volumes:
          Input.asOptionalInput<List<TaskDefinitionVolume>>(map['volumes']),
    );
  }
}
