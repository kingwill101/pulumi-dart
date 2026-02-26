// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_task_execution_capacity_provider_strategy/get_task_execution_capacity_provider_strategy.dart';
import '../get_task_execution_network_configuration/get_task_execution_network_configuration.dart';
import '../get_task_execution_overrides/get_task_execution_overrides.dart';
import '../get_task_execution_placement_constraint/get_task_execution_placement_constraint.dart';
import '../get_task_execution_placement_strategy/get_task_execution_placement_strategy.dart';

/// Arguments for getTaskExecution.
class GetTaskExecutionArgs {
  /// Set of capacity provider strategies to use for the cluster. See below.
  final Input<List<GetTaskExecutionCapacityProviderStrategy>>?
      capacityProviderStrategies;

  /// An identifier that you provide to ensure the idempotency of the request. It must be unique and is case sensitive. Up to 64 characters are allowed. The valid characters are characters in the range of 33-126, inclusive. For more information, see [Ensuring idempotency](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/ECS_Idempotency.html).
  final Input<String>? clientToken;

  /// Short name or full Amazon Resource Name (ARN) of the cluster to run the task on.
  final Input<String> cluster;

  /// Number of instantiations of the specified task to place on your cluster. You can specify up to 10 tasks for each call.
  final Input<int>? desiredCount;

  /// Specifies whether to enable Amazon ECS managed tags for the tasks within the service.
  final Input<bool>? enableEcsManagedTags;

  /// Specifies whether to enable Amazon ECS Exec for the tasks within the service.
  final Input<bool>? enableExecuteCommand;

  /// Name of the task group to associate with the task. The default value is the family name of the task definition.
  final Input<String>? group;

  /// Launch type on which to run your service. Valid values are `EC2`, `FARGATE`, and `EXTERNAL`.
  final Input<String>? launchType;

  /// Network configuration for the service. This parameter is required for task definitions that use the <span pulumi-lang-nodejs="`awsvpc`" pulumi-lang-dotnet="`Awsvpc`" pulumi-lang-go="`awsvpc`" pulumi-lang-python="`awsvpc`" pulumi-lang-yaml="`awsvpc`" pulumi-lang-java="`awsvpc`">`awsvpc`</span> network mode to receive their own Elastic Network Interface, and it is not supported for other network modes. See below.
  final Input<GetTaskExecutionNetworkConfiguration>? networkConfiguration;

  /// A list of container overrides that specify the name of a container in the specified task definition and the overrides it should receive.
  final Input<GetTaskExecutionOverrides>? overrides;

  /// An array of placement constraint objects to use for the task. You can specify up to 10 constraints for each task. See below.
  final Input<List<GetTaskExecutionPlacementConstraint>>? placementConstraints;

  /// The placement strategy objects to use for the task. You can specify a maximum of 5 strategy rules for each task. See below.
  final Input<List<GetTaskExecutionPlacementStrategy>>? placementStrategies;

  /// The platform version the task uses. A platform version is only specified for tasks hosted on Fargate. If one isn't specified, the `LATEST` platform version is used.
  final Input<String>? platformVersion;

  /// Specifies whether to propagate the tags from the task definition to the task. If no value is specified, the tags aren't propagated. An error will be received if you specify the `SERVICE` option when running a task. Valid values are `TASK_DEFINITION` or `NONE`.
  final Input<String>? propagateTags;

  /// The reference ID to use for the task.
  final Input<String>? referenceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// An optional tag specified when a task is started.
  final Input<String>? startedBy;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The <span pulumi-lang-nodejs="`family`" pulumi-lang-dotnet="`Family`" pulumi-lang-go="`family`" pulumi-lang-python="`family`" pulumi-lang-yaml="`family`" pulumi-lang-java="`family`">`family`</span> and <span pulumi-lang-nodejs="`revision`" pulumi-lang-dotnet="`Revision`" pulumi-lang-go="`revision`" pulumi-lang-python="`revision`" pulumi-lang-yaml="`revision`" pulumi-lang-java="`revision`">`revision`</span> (`family:revision`) or full ARN of the task definition to run. If a revision isn't specified, the latest `ACTIVE` revision is used.
  ///
  /// The following arguments are optional:
  final Input<String> taskDefinition;

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
      map['capacityProviderStrategies'] = Input.mapOptionalInputValue<
              List<GetTaskExecutionCapacityProviderStrategy>,
              List<Map<String, dynamic>>>(
          capacityProviderStrategiesValue,
          (value) => Input.encodeList<GetTaskExecutionCapacityProviderStrategy,
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
      map['networkConfiguration'] = Input.mapOptionalInputValue<
              GetTaskExecutionNetworkConfiguration, Map<String, dynamic>>(
          networkConfigurationValue, (value) => value.toMap());
    }
    final overridesValue = overrides;
    if (overridesValue != null) {
      map['overrides'] = Input.mapOptionalInputValue<GetTaskExecutionOverrides,
          Map<String, dynamic>>(overridesValue, (value) => value.toMap());
    }
    final placementConstraintsValue = placementConstraints;
    if (placementConstraintsValue != null) {
      map['placementConstraints'] = Input.mapOptionalInputValue<
              List<GetTaskExecutionPlacementConstraint>,
              List<Map<String, dynamic>>>(
          placementConstraintsValue,
          (value) => Input.encodeList<GetTaskExecutionPlacementConstraint,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final placementStrategiesValue = placementStrategies;
    if (placementStrategiesValue != null) {
      map['placementStrategies'] = Input.mapOptionalInputValue<
              List<GetTaskExecutionPlacementStrategy>,
              List<Map<String, dynamic>>>(
          placementStrategiesValue,
          (value) => Input.encodeList<GetTaskExecutionPlacementStrategy,
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
      capacityProviderStrategies:
          Input.asOptionalInput<List<GetTaskExecutionCapacityProviderStrategy>>(
              map['capacityProviderStrategies']),
      clientToken: Input.asOptionalInput<String>(map['clientToken']),
      cluster: Input.asInput<String>(map['cluster']),
      desiredCount: Input.asOptionalInput<int>(map['desiredCount']),
      enableEcsManagedTags:
          Input.asOptionalInput<bool>(map['enableEcsManagedTags']),
      enableExecuteCommand:
          Input.asOptionalInput<bool>(map['enableExecuteCommand']),
      group: Input.asOptionalInput<String>(map['group']),
      launchType: Input.asOptionalInput<String>(map['launchType']),
      networkConfiguration:
          Input.asOptionalInput<GetTaskExecutionNetworkConfiguration>(
              map['networkConfiguration']),
      overrides:
          Input.asOptionalInput<GetTaskExecutionOverrides>(map['overrides']),
      placementConstraints:
          Input.asOptionalInput<List<GetTaskExecutionPlacementConstraint>>(
              map['placementConstraints']),
      placementStrategies:
          Input.asOptionalInput<List<GetTaskExecutionPlacementStrategy>>(
              map['placementStrategies']),
      platformVersion: Input.asOptionalInput<String>(map['platformVersion']),
      propagateTags: Input.asOptionalInput<String>(map['propagateTags']),
      referenceId: Input.asOptionalInput<String>(map['referenceId']),
      region: Input.asOptionalInput<String>(map['region']),
      startedBy: Input.asOptionalInput<String>(map['startedBy']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      taskDefinition: Input.asInput<String>(map['taskDefinition']),
    );
  }
}
