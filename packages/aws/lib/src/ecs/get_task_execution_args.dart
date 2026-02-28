// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_task_execution_capacity_provider_strategy.dart';
import 'get_task_execution_network_configuration.dart';
import 'get_task_execution_overrides.dart';
import 'get_task_execution_placement_constraint.dart';
import 'get_task_execution_placement_strategy.dart';

/// {@template pulumi_ecs_get_task_execution_get_task_execution_args_doc}
/// Arguments for getTaskExecution.
/// {@endtemplate}
/// {@macro pulumi_ecs_get_task_execution_get_task_execution_args_doc}
class GetTaskExecutionArgs {
  /// Set of capacity provider strategies to use for the cluster. See below.
  final pulumi.Input<List<GetTaskExecutionCapacityProviderStrategy>>?
      capacityProviderStrategies;

  /// An identifier that you provide to ensure the idempotency of the request. It must be unique and is case sensitive. Up to 64 characters are allowed. The valid characters are characters in the range of 33-126, inclusive. For more information, see [Ensuring idempotency](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/ECS_Idempotency.html).
  final pulumi.Input<String>? clientToken;

  /// Short name or full Amazon Resource Name (ARN) of the cluster to run the task on.
  final pulumi.Input<String> cluster;

  /// Number of instantiations of the specified task to place on your cluster. You can specify up to 10 tasks for each call.
  final pulumi.Input<int>? desiredCount;

  /// Specifies whether to enable Amazon ECS managed tags for the tasks within the service.
  final pulumi.Input<bool>? enableEcsManagedTags;

  /// Specifies whether to enable Amazon ECS Exec for the tasks within the service.
  final pulumi.Input<bool>? enableExecuteCommand;

  /// Name of the task group to associate with the task. The default value is the family name of the task definition.
  final pulumi.Input<String>? group;

  /// Launch type on which to run your service. Valid values are `EC2`, `FARGATE`, and `EXTERNAL`.
  final pulumi.Input<String>? launchType;

  /// Network configuration for the service. This parameter is required for task definitions that use the `awsvpc` network mode to receive their own Elastic Network Interface, and it is not supported for other network modes. See below.
  final pulumi.Input<GetTaskExecutionNetworkConfiguration>?
      networkConfiguration;

  /// A list of container overrides that specify the name of a container in the specified task definition and the overrides it should receive.
  final pulumi.Input<GetTaskExecutionOverrides>? overrides;

  /// An array of placement constraint objects to use for the task. You can specify up to 10 constraints for each task. See below.
  final pulumi.Input<List<GetTaskExecutionPlacementConstraint>>?
      placementConstraints;

  /// The placement strategy objects to use for the task. You can specify a maximum of 5 strategy rules for each task. See below.
  final pulumi.Input<List<GetTaskExecutionPlacementStrategy>>?
      placementStrategies;

  /// The platform version the task uses. A platform version is only specified for tasks hosted on Fargate. If one isn't specified, the `LATEST` platform version is used.
  final pulumi.Input<String>? platformVersion;

  /// Specifies whether to propagate the tags from the task definition to the task. If no value is specified, the tags aren't propagated. An error will be received if you specify the `SERVICE` option when running a task. Valid values are `TASK_DEFINITION` or `NONE`.
  final pulumi.Input<String>? propagateTags;

  /// The reference ID to use for the task.
  final pulumi.Input<String>? referenceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// An optional tag specified when a task is started.
  final pulumi.Input<String>? startedBy;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The `family` and `revision` (`family:revision`) or full ARN of the task definition to run. If a revision isn't specified, the latest `ACTIVE` revision is used.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> taskDefinition;

  /// Creates a new [GetTaskExecutionArgs].
  /// [capacityProviderStrategies] Set of capacity provider strategies to use for the cluster. See below.
  /// [clientToken] An identifier that you provide to ensure the idempotency of the request. It must be unique and is case sensitive. Up to 64 characters are allowed. The valid characters are characters in the range of 33-126, inclusive. For more information, see [Ensuring idempotency](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/ECS_Idempotency.html).
  /// [cluster] Short name or full Amazon Resource Name (ARN) of the cluster to run the task on.
  /// [desiredCount] Number of instantiations of the specified task to place on your cluster. You can specify up to 10 tasks for each call.
  /// [enableEcsManagedTags] Specifies whether to enable Amazon ECS managed tags for the tasks within the service.
  /// [enableExecuteCommand] Specifies whether to enable Amazon ECS Exec for the tasks within the service.
  /// [group] Name of the task group to associate with the task. The default value is the family name of the task definition.
  /// [launchType] Launch type on which to run your service. Valid values are `EC2`, `FARGATE`, and `EXTERNAL`.
  /// [networkConfiguration] Network configuration for the service. This parameter is required for task definitions that use the `awsvpc` network mode to receive their own Elastic Network Interface, and it is not supported for other network modes. See below.
  /// [overrides] A list of container overrides that specify the name of a container in the specified task definition and the overrides it should receive.
  /// [placementConstraints] An array of placement constraint objects to use for the task. You can specify up to 10 constraints for each task. See below.
  /// [placementStrategies] The placement strategy objects to use for the task. You can specify a maximum of 5 strategy rules for each task. See below.
  /// [platformVersion] The platform version the task uses. A platform version is only specified for tasks hosted on Fargate. If one isn't specified, the `LATEST` platform version is used.
  /// [propagateTags] Specifies whether to propagate the tags from the task definition to the task. If no value is specified, the tags aren't propagated. An error will be received if you specify the `SERVICE` option when running a task. Valid values are `TASK_DEFINITION` or `NONE`.
  /// [referenceId] The reference ID to use for the task.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [startedBy] An optional tag specified when a task is started.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [taskDefinition] The `family` and `revision` (`family:revision`) or full ARN of the task definition to run. If a revision isn't specified, the latest `ACTIVE` revision is used.
  GetTaskExecutionArgs({
    List<GetTaskExecutionCapacityProviderStrategy>? capacityProviderStrategies,
    String? clientToken,
    required String cluster,
    int? desiredCount,
    bool? enableEcsManagedTags,
    bool? enableExecuteCommand,
    String? group,
    String? launchType,
    GetTaskExecutionNetworkConfiguration? networkConfiguration,
    GetTaskExecutionOverrides? overrides,
    List<GetTaskExecutionPlacementConstraint>? placementConstraints,
    List<GetTaskExecutionPlacementStrategy>? placementStrategies,
    String? platformVersion,
    String? propagateTags,
    String? referenceId,
    String? region,
    String? startedBy,
    Map<String, String>? tags,
    required String taskDefinition,
  })  : capacityProviderStrategies = pulumi.Input.asOptionalInput<
                List<GetTaskExecutionCapacityProviderStrategy>>(
            capacityProviderStrategies),
        clientToken = pulumi.Input.asOptionalInput<String>(clientToken),
        cluster = pulumi.Input.asInput<String>(cluster),
        desiredCount = pulumi.Input.asOptionalInput<int>(desiredCount),
        enableEcsManagedTags =
            pulumi.Input.asOptionalInput<bool>(enableEcsManagedTags),
        enableExecuteCommand =
            pulumi.Input.asOptionalInput<bool>(enableExecuteCommand),
        group = pulumi.Input.asOptionalInput<String>(group),
        launchType = pulumi.Input.asOptionalInput<String>(launchType),
        networkConfiguration =
            pulumi.Input.asOptionalInput<GetTaskExecutionNetworkConfiguration>(
                networkConfiguration),
        overrides =
            pulumi.Input.asOptionalInput<GetTaskExecutionOverrides>(overrides),
        placementConstraints = pulumi.Input.asOptionalInput<
            List<GetTaskExecutionPlacementConstraint>>(placementConstraints),
        placementStrategies = pulumi.Input.asOptionalInput<
            List<GetTaskExecutionPlacementStrategy>>(placementStrategies),
        platformVersion = pulumi.Input.asOptionalInput<String>(platformVersion),
        propagateTags = pulumi.Input.asOptionalInput<String>(propagateTags),
        referenceId = pulumi.Input.asOptionalInput<String>(referenceId),
        region = pulumi.Input.asOptionalInput<String>(region),
        startedBy = pulumi.Input.asOptionalInput<String>(startedBy),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        taskDefinition = pulumi.Input.asInput<String>(taskDefinition);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final capacityProviderStrategiesValue = capacityProviderStrategies;
    if (capacityProviderStrategiesValue != null) {
      map['capacityProviderStrategies'] = pulumi.Input.mapOptionalInputValue<
              List<GetTaskExecutionCapacityProviderStrategy>,
              List<Map<String, dynamic>>>(
          capacityProviderStrategiesValue,
          (value) => pulumi.Input.encodeList<
              GetTaskExecutionCapacityProviderStrategy,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final clientTokenValue = clientToken;
    if (clientTokenValue != null) {
      map['clientToken'] = clientTokenValue;
    }
    map['cluster'] = cluster;
    final desiredCountValue = desiredCount;
    if (desiredCountValue != null) {
      map['desiredCount'] = desiredCountValue;
    }
    final enableEcsManagedTagsValue = enableEcsManagedTags;
    if (enableEcsManagedTagsValue != null) {
      map['enableEcsManagedTags'] = enableEcsManagedTagsValue;
    }
    final enableExecuteCommandValue = enableExecuteCommand;
    if (enableExecuteCommandValue != null) {
      map['enableExecuteCommand'] = enableExecuteCommandValue;
    }
    final groupValue = group;
    if (groupValue != null) {
      map['group'] = groupValue;
    }
    final launchTypeValue = launchType;
    if (launchTypeValue != null) {
      map['launchType'] = launchTypeValue;
    }
    final networkConfigurationValue = networkConfiguration;
    if (networkConfigurationValue != null) {
      map['networkConfiguration'] = pulumi.Input.mapOptionalInputValue<
              GetTaskExecutionNetworkConfiguration, Map<String, dynamic>>(
          networkConfigurationValue, (value) => value.toMap());
    }
    final overridesValue = overrides;
    if (overridesValue != null) {
      map['overrides'] = pulumi.Input.mapOptionalInputValue<
          GetTaskExecutionOverrides,
          Map<String, dynamic>>(overridesValue, (value) => value.toMap());
    }
    final placementConstraintsValue = placementConstraints;
    if (placementConstraintsValue != null) {
      map['placementConstraints'] = pulumi.Input.mapOptionalInputValue<
              List<GetTaskExecutionPlacementConstraint>,
              List<Map<String, dynamic>>>(
          placementConstraintsValue,
          (value) => pulumi.Input.encodeList<
              GetTaskExecutionPlacementConstraint,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final placementStrategiesValue = placementStrategies;
    if (placementStrategiesValue != null) {
      map['placementStrategies'] = pulumi.Input.mapOptionalInputValue<
              List<GetTaskExecutionPlacementStrategy>,
              List<Map<String, dynamic>>>(
          placementStrategiesValue,
          (value) => pulumi.Input.encodeList<GetTaskExecutionPlacementStrategy,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final platformVersionValue = platformVersion;
    if (platformVersionValue != null) {
      map['platformVersion'] = platformVersionValue;
    }
    final propagateTagsValue = propagateTags;
    if (propagateTagsValue != null) {
      map['propagateTags'] = propagateTagsValue;
    }
    final referenceIdValue = referenceId;
    if (referenceIdValue != null) {
      map['referenceId'] = referenceIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final startedByValue = startedBy;
    if (startedByValue != null) {
      map['startedBy'] = startedByValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['taskDefinition'] = taskDefinition;
    return map;
  }

  factory GetTaskExecutionArgs.fromMap(Map<String, dynamic> map) {
    return GetTaskExecutionArgs(
      capacityProviderStrategies: map['capacityProviderStrategies'] == null
          ? null
          : pulumi.Input.decodeList<GetTaskExecutionCapacityProviderStrategy>(
              map['capacityProviderStrategies'],
              (value) => GetTaskExecutionCapacityProviderStrategy.fromMap(
                  (value as Map).cast<String, dynamic>())),
      clientToken:
          map['clientToken'] == null ? null : map['clientToken'] as String,
      cluster: map['cluster'] as String,
      desiredCount:
          map['desiredCount'] == null ? null : map['desiredCount'] as int,
      enableEcsManagedTags: map['enableEcsManagedTags'] == null
          ? null
          : map['enableEcsManagedTags'] as bool,
      enableExecuteCommand: map['enableExecuteCommand'] == null
          ? null
          : map['enableExecuteCommand'] as bool,
      group: map['group'] == null ? null : map['group'] as String,
      launchType:
          map['launchType'] == null ? null : map['launchType'] as String,
      networkConfiguration: map['networkConfiguration'] == null
          ? null
          : GetTaskExecutionNetworkConfiguration.fromMap(
              (map['networkConfiguration'] as Map).cast<String, dynamic>()),
      overrides: map['overrides'] == null
          ? null
          : GetTaskExecutionOverrides.fromMap(
              (map['overrides'] as Map).cast<String, dynamic>()),
      placementConstraints: map['placementConstraints'] == null
          ? null
          : pulumi.Input.decodeList<GetTaskExecutionPlacementConstraint>(
              map['placementConstraints'],
              (value) => GetTaskExecutionPlacementConstraint.fromMap(
                  (value as Map).cast<String, dynamic>())),
      placementStrategies: map['placementStrategies'] == null
          ? null
          : pulumi.Input.decodeList<GetTaskExecutionPlacementStrategy>(
              map['placementStrategies'],
              (value) => GetTaskExecutionPlacementStrategy.fromMap(
                  (value as Map).cast<String, dynamic>())),
      platformVersion: map['platformVersion'] == null
          ? null
          : map['platformVersion'] as String,
      propagateTags:
          map['propagateTags'] == null ? null : map['propagateTags'] as String,
      referenceId:
          map['referenceId'] == null ? null : map['referenceId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      startedBy: map['startedBy'] == null ? null : map['startedBy'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      taskDefinition: map['taskDefinition'] as String,
    );
  }
}
