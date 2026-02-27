// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_task_execution_capacity_provider_strategy/get_task_execution_capacity_provider_strategy.dart';
import '../get_task_execution_network_configuration/get_task_execution_network_configuration.dart';
import '../get_task_execution_overrides/get_task_execution_overrides.dart';
import '../get_task_execution_placement_constraint/get_task_execution_placement_constraint.dart';
import '../get_task_execution_placement_strategy/get_task_execution_placement_strategy.dart';

/// Arguments for getTaskExecution.
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

  GetTaskExecutionArgs({
    this.capacityProviderStrategies,
    this.clientToken,
    required this.cluster,
    this.desiredCount,
    this.enableEcsManagedTags,
    this.enableExecuteCommand,
    this.group,
    this.launchType,
    this.networkConfiguration,
    this.overrides,
    this.placementConstraints,
    this.placementStrategies,
    this.platformVersion,
    this.propagateTags,
    this.referenceId,
    this.region,
    this.startedBy,
    this.tags,
    required this.taskDefinition,
  });

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
      capacityProviderStrategies: pulumi.Input.asOptionalInput<
              List<GetTaskExecutionCapacityProviderStrategy>>(
          map['capacityProviderStrategies']),
      clientToken: pulumi.Input.asOptionalInput<String>(map['clientToken']),
      cluster: pulumi.Input.asInput<String>(map['cluster']),
      desiredCount: pulumi.Input.asOptionalInput<int>(map['desiredCount']),
      enableEcsManagedTags:
          pulumi.Input.asOptionalInput<bool>(map['enableEcsManagedTags']),
      enableExecuteCommand:
          pulumi.Input.asOptionalInput<bool>(map['enableExecuteCommand']),
      group: pulumi.Input.asOptionalInput<String>(map['group']),
      launchType: pulumi.Input.asOptionalInput<String>(map['launchType']),
      networkConfiguration:
          pulumi.Input.asOptionalInput<GetTaskExecutionNetworkConfiguration>(
              map['networkConfiguration']),
      overrides: pulumi.Input.asOptionalInput<GetTaskExecutionOverrides>(
          map['overrides']),
      placementConstraints: pulumi.Input.asOptionalInput<
              List<GetTaskExecutionPlacementConstraint>>(
          map['placementConstraints']),
      placementStrategies:
          pulumi.Input.asOptionalInput<List<GetTaskExecutionPlacementStrategy>>(
              map['placementStrategies']),
      platformVersion:
          pulumi.Input.asOptionalInput<String>(map['platformVersion']),
      propagateTags: pulumi.Input.asOptionalInput<String>(map['propagateTags']),
      referenceId: pulumi.Input.asOptionalInput<String>(map['referenceId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      startedBy: pulumi.Input.asOptionalInput<String>(map['startedBy']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      taskDefinition: pulumi.Input.asInput<String>(map['taskDefinition']),
    );
  }
}
