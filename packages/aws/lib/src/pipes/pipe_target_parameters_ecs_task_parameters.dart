// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipe_target_parameters_ecs_task_parameters_capacity_provider_strategy.dart';
import 'pipe_target_parameters_ecs_task_parameters_network_configuration.dart';
import 'pipe_target_parameters_ecs_task_parameters_overrides.dart';
import 'pipe_target_parameters_ecs_task_parameters_placement_constraint.dart';
import 'pipe_target_parameters_ecs_task_parameters_placement_strategy.dart';

class PipeTargetParametersEcsTaskParameters {
  /// List of capacity provider strategies to use for the task. If a capacityProviderStrategy is specified, the launchType parameter must be omitted. If no capacityProviderStrategy or launchType is specified, the defaultCapacityProviderStrategy for the cluster is used. Detailed below.
  final List<PipeTargetParametersEcsTaskParametersCapacityProviderStrategy>?
      capacityProviderStrategies;

  /// Specifies whether to enable Amazon ECS managed tags for the task. Valid values: true, false.
  final bool? enableEcsManagedTags;

  /// Whether or not to enable the execute command functionality for the containers in this task. If true, this enables execute command functionality on all containers in the task. Valid values: true, false.
  final bool? enableExecuteCommand;

  /// Specifies an Amazon ECS task group for the task. The maximum length is 255 characters.
  final String? group;

  /// Specifies the launch type on which your task is running. The launch type that you specify here must match one of the launch type (compatibilities) of the target task. The FARGATE value is supported only in the Regions where AWS Fargate with Amazon ECS is supported. Valid Values: EC2, FARGATE, EXTERNAL
  final String? launchType;

  /// Use this structure if the Amazon ECS task uses the awsvpc network mode. This structure specifies the VPC subnets and security groups associated with the task, and whether a public IP address is to be used. This structure is required if LaunchType is FARGATE because the awsvpc mode is required for Fargate tasks. If you specify NetworkConfiguration when the target ECS task does not use the awsvpc network mode, the task fails. Detailed below.
  final PipeTargetParametersEcsTaskParametersNetworkConfiguration?
      networkConfiguration;

  /// The overrides that are associated with a task. Detailed below.
  final PipeTargetParametersEcsTaskParametersOverrides? overrides;

  /// An array of placement constraint objects to use for the task. You can specify up to 10 constraints per task (including constraints in the task definition and those specified at runtime). Detailed below.
  final List<PipeTargetParametersEcsTaskParametersPlacementConstraint>?
      placementConstraints;

  /// The placement strategy objects to use for the task. You can specify a maximum of five strategy rules per task. Detailed below.
  final List<PipeTargetParametersEcsTaskParametersPlacementStrategy>?
      placementStrategies;

  /// Specifies the platform version for the task. Specify only the numeric portion of the platform version, such as 1.1.0. This structure is used only if LaunchType is FARGATE.
  final String? platformVersion;

  /// Specifies whether to propagate the tags from the task definition to the task. If no value is specified, the tags are not propagated. Tags can only be propagated to the task during task creation. To add tags to a task after task creation, use the TagResource API action. Valid Values: TASK_DEFINITION
  final String? propagateTags;

  /// The reference ID to use for the task. Maximum length of 1,024.
  final String? referenceId;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Map<String, String>? tags;

  /// The number of tasks to create based on TaskDefinition. The default is 1.
  final int? taskCount;

  /// The ARN of the task definition to use if the event target is an Amazon ECS task.
  final String taskDefinitionArn;

  /// Creates a new [PipeTargetParametersEcsTaskParameters].
  /// [capacityProviderStrategies] List of capacity provider strategies to use for the task. If a capacityProviderStrategy is specified, the launchType parameter must be omitted. If no capacityProviderStrategy or launchType is specified, the defaultCapacityProviderStrategy for the cluster is used. Detailed below.
  /// [enableEcsManagedTags] Specifies whether to enable Amazon ECS managed tags for the task. Valid values: true, false.
  /// [enableExecuteCommand] Whether or not to enable the execute command functionality for the containers in this task. If true, this enables execute command functionality on all containers in the task. Valid values: true, false.
  /// [group] Specifies an Amazon ECS task group for the task. The maximum length is 255 characters.
  /// [launchType] Specifies the launch type on which your task is running. The launch type that you specify here must match one of the launch type (compatibilities) of the target task. The FARGATE value is supported only in the Regions where AWS Fargate with Amazon ECS is supported. Valid Values: EC2, FARGATE, EXTERNAL
  /// [networkConfiguration] Use this structure if the Amazon ECS task uses the awsvpc network mode. This structure specifies the VPC subnets and security groups associated with the task, and whether a public IP address is to be used. This structure is required if LaunchType is FARGATE because the awsvpc mode is required for Fargate tasks. If you specify NetworkConfiguration when the target ECS task does not use the awsvpc network mode, the task fails. Detailed below.
  /// [overrides] The overrides that are associated with a task. Detailed below.
  /// [placementConstraints] An array of placement constraint objects to use for the task. You can specify up to 10 constraints per task (including constraints in the task definition and those specified at runtime). Detailed below.
  /// [placementStrategies] The placement strategy objects to use for the task. You can specify a maximum of five strategy rules per task. Detailed below.
  /// [platformVersion] Specifies the platform version for the task. Specify only the numeric portion of the platform version, such as 1.1.0. This structure is used only if LaunchType is FARGATE.
  /// [propagateTags] Specifies whether to propagate the tags from the task definition to the task. If no value is specified, the tags are not propagated. Tags can only be propagated to the task during task creation. To add tags to a task after task creation, use the TagResource API action. Valid Values: TASK_DEFINITION
  /// [referenceId] The reference ID to use for the task. Maximum length of 1,024.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [taskCount] The number of tasks to create based on TaskDefinition. The default is 1.
  /// [taskDefinitionArn] The ARN of the task definition to use if the event target is an Amazon ECS task.
  PipeTargetParametersEcsTaskParameters({
    this.capacityProviderStrategies,
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
    this.tags,
    this.taskCount,
    required this.taskDefinitionArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final capacityProviderStrategiesValue = capacityProviderStrategies;
    if (capacityProviderStrategiesValue != null) {
      map['capacityProviderStrategies'] = pulumi.Input.encodeList<
              PipeTargetParametersEcsTaskParametersCapacityProviderStrategy,
              Map<String, dynamic>>(
          capacityProviderStrategiesValue, (value) => value.toMap());
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
      map['networkConfiguration'] = networkConfigurationValue.toMap();
    }
    final overridesValue = overrides;
    if (overridesValue != null) {
      map['overrides'] = overridesValue.toMap();
    }
    final placementConstraintsValue = placementConstraints;
    if (placementConstraintsValue != null) {
      map['placementConstraints'] = pulumi.Input.encodeList<
              PipeTargetParametersEcsTaskParametersPlacementConstraint,
              Map<String, dynamic>>(
          placementConstraintsValue, (value) => value.toMap());
    }
    final placementStrategiesValue = placementStrategies;
    if (placementStrategiesValue != null) {
      map['placementStrategies'] = pulumi.Input.encodeList<
              PipeTargetParametersEcsTaskParametersPlacementStrategy,
              Map<String, dynamic>>(
          placementStrategiesValue, (value) => value.toMap());
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
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final taskCountValue = taskCount;
    if (taskCountValue != null) {
      map['taskCount'] = taskCountValue;
    }
    map['taskDefinitionArn'] = taskDefinitionArn;
    return map;
  }

  factory PipeTargetParametersEcsTaskParameters.fromMap(
      Map<String, dynamic> map) {
    return PipeTargetParametersEcsTaskParameters(
      capacityProviderStrategies: map['capacityProviderStrategies'] == null
          ? null
          : pulumi.Input.decodeList<
                  PipeTargetParametersEcsTaskParametersCapacityProviderStrategy>(
              map['capacityProviderStrategies'],
              (value) =>
                  PipeTargetParametersEcsTaskParametersCapacityProviderStrategy
                      .fromMap((value as Map).cast<String, dynamic>())),
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
          : PipeTargetParametersEcsTaskParametersNetworkConfiguration.fromMap(
              (map['networkConfiguration'] as Map).cast<String, dynamic>()),
      overrides: map['overrides'] == null
          ? null
          : PipeTargetParametersEcsTaskParametersOverrides.fromMap(
              (map['overrides'] as Map).cast<String, dynamic>()),
      placementConstraints: map['placementConstraints'] == null
          ? null
          : pulumi.Input.decodeList<
                  PipeTargetParametersEcsTaskParametersPlacementConstraint>(
              map['placementConstraints'],
              (value) =>
                  PipeTargetParametersEcsTaskParametersPlacementConstraint
                      .fromMap((value as Map).cast<String, dynamic>())),
      placementStrategies: map['placementStrategies'] == null
          ? null
          : pulumi.Input.decodeList<
                  PipeTargetParametersEcsTaskParametersPlacementStrategy>(
              map['placementStrategies'],
              (value) => PipeTargetParametersEcsTaskParametersPlacementStrategy
                  .fromMap((value as Map).cast<String, dynamic>())),
      platformVersion: map['platformVersion'] == null
          ? null
          : map['platformVersion'] as String,
      propagateTags:
          map['propagateTags'] == null ? null : map['propagateTags'] as String,
      referenceId:
          map['referenceId'] == null ? null : map['referenceId'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      taskCount: map['taskCount'] == null ? null : map['taskCount'] as int,
      taskDefinitionArn: map['taskDefinitionArn'] as String,
    );
  }
}
