// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../schedule_target_ecs_parameters_capacity_provider_strategy/schedule_target_ecs_parameters_capacity_provider_strategy.dart';
import '../schedule_target_ecs_parameters_network_configuration/schedule_target_ecs_parameters_network_configuration.dart';
import '../schedule_target_ecs_parameters_placement_constraint/schedule_target_ecs_parameters_placement_constraint.dart';
import '../schedule_target_ecs_parameters_placement_strategy/schedule_target_ecs_parameters_placement_strategy.dart';

class ScheduleTargetEcsParameters {
  /// Up to <span pulumi-lang-nodejs="`6`" pulumi-lang-dotnet="`6`" pulumi-lang-go="`6`" pulumi-lang-python="`6`" pulumi-lang-yaml="`6`" pulumi-lang-java="`6`">`6`</span> capacity provider strategies to use for the task. Detailed below.
  final List<ScheduleTargetEcsParametersCapacityProviderStrategy>?
      capacityProviderStrategies;

  /// Specifies whether to enable Amazon ECS managed tags for the task. For more information, see [Tagging Your Amazon ECS Resources](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html) in the Amazon ECS Developer Guide.
  final bool? enableEcsManagedTags;

  /// Specifies whether to enable the execute command functionality for the containers in this task.
  final bool? enableExecuteCommand;

  /// Specifies an ECS task group for the task. At most 255 characters.
  final String? group;

  /// Specifies the launch type on which your task is running. The launch type that you specify here must match one of the launch type (compatibilities) of the target task. One of: `EC2`, `FARGATE`, `EXTERNAL`.
  final String? launchType;

  /// Configures the networking associated with the task. Detailed below.
  final ScheduleTargetEcsParametersNetworkConfiguration? networkConfiguration;

  /// A set of up to 10 placement constraints to use for the task. Detailed below.
  final List<ScheduleTargetEcsParametersPlacementConstraint>?
      placementConstraints;

  /// A set of up to 5 placement strategies. Detailed below.
  final List<ScheduleTargetEcsParametersPlacementStrategy>? placementStrategies;

  /// Specifies the platform version for the task. Specify only the numeric portion of the platform version, such as `1.1.0`.
  final String? platformVersion;

  /// Specifies whether to propagate the tags from the task definition to the task. One of: `TASK_DEFINITION`.
  final String? propagateTags;

  /// Reference ID to use for the task.
  final String? referenceId;

  /// The metadata that you apply to the task. Each tag consists of a key and an optional value. For more information, see [`RunTask`](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_RunTask.html) in the Amazon ECS API Reference.
  final Map<String, String>? tags;

  /// The number of tasks to create. Ranges from <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> (default) to <span pulumi-lang-nodejs="`10`" pulumi-lang-dotnet="`10`" pulumi-lang-go="`10`" pulumi-lang-python="`10`" pulumi-lang-yaml="`10`" pulumi-lang-java="`10`">`10`</span>.
  final int? taskCount;

  /// ARN of the task definition to use.
  ///
  /// The following arguments are optional:
  final String taskDefinitionArn;

  ScheduleTargetEcsParameters({
    this.capacityProviderStrategies,
    this.enableEcsManagedTags,
    this.enableExecuteCommand,
    this.group,
    this.launchType,
    this.networkConfiguration,
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
      map['capacityProviderStrategies'] = Input.encodeList<
              ScheduleTargetEcsParametersCapacityProviderStrategy,
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
    final placementConstraintsValue = placementConstraints;
    if (placementConstraintsValue != null) {
      map['placementConstraints'] = Input.encodeList<
              ScheduleTargetEcsParametersPlacementConstraint,
              Map<String, dynamic>>(
          placementConstraintsValue, (value) => value.toMap());
    }
    final placementStrategiesValue = placementStrategies;
    if (placementStrategiesValue != null) {
      map['placementStrategies'] = Input.encodeList<
              ScheduleTargetEcsParametersPlacementStrategy,
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

  factory ScheduleTargetEcsParameters.fromMap(Map<String, dynamic> map) {
    return ScheduleTargetEcsParameters(
      capacityProviderStrategies: map['capacityProviderStrategies'] == null
          ? null
          : Input.decodeList<
                  ScheduleTargetEcsParametersCapacityProviderStrategy>(
              map['capacityProviderStrategies'],
              (value) =>
                  ScheduleTargetEcsParametersCapacityProviderStrategy.fromMap(
                      (value as Map).cast<String, dynamic>())),
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
          : ScheduleTargetEcsParametersNetworkConfiguration.fromMap(
              (map['networkConfiguration'] as Map).cast<String, dynamic>()),
      placementConstraints: map['placementConstraints'] == null
          ? null
          : Input.decodeList<ScheduleTargetEcsParametersPlacementConstraint>(
              map['placementConstraints'],
              (value) => ScheduleTargetEcsParametersPlacementConstraint.fromMap(
                  (value as Map).cast<String, dynamic>())),
      placementStrategies: map['placementStrategies'] == null
          ? null
          : Input.decodeList<ScheduleTargetEcsParametersPlacementStrategy>(
              map['placementStrategies'],
              (value) => ScheduleTargetEcsParametersPlacementStrategy.fromMap(
                  (value as Map).cast<String, dynamic>())),
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
