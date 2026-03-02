// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_target_ecs_target_capacity_provider_strategy.dart';
import 'event_target_ecs_target_network_configuration.dart';
import 'event_target_ecs_target_ordered_placement_strategy.dart';
import 'event_target_ecs_target_placement_constraint.dart';

class EventTargetEcsTarget {
  /// The capacity provider strategy to use for the task. If a `capacity_provider_strategy` specified, the `launch_type` parameter must be omitted. If no `capacity_provider_strategy` or `launch_type` is specified, the default capacity provider strategy for the cluster is used. Can be one or more. See below.
  final pulumi.Input<List<EventTargetEcsTargetCapacityProviderStrategy>>? capacityProviderStrategies;
  /// Specifies whether to enable Amazon ECS managed tags for the task.
  final pulumi.Input<bool>? enableEcsManagedTags;
  /// Whether or not to enable the execute command functionality for the containers in this task. If true, this enables execute command functionality on all containers in the task.
  final pulumi.Input<bool>? enableExecuteCommand;
  /// Specifies an ECS task group for the task. The maximum length is 255 characters.
  final pulumi.Input<String>? group;
  /// Specifies the launch type on which your task is running. The launch type that you specify here must match one of the launch type (compatibilities) of the target task. Valid values include: `EC2`, `EXTERNAL`, or `FARGATE`.
  final pulumi.Input<String>? launchType;
  /// Use this if the ECS task uses the awsvpc network mode. This specifies the VPC subnets and security groups associated with the task, and whether a public IP address is to be used. Required if `launch_type` is `FARGATE` because the awsvpc mode is required for Fargate tasks.
  final pulumi.Input<EventTargetEcsTargetNetworkConfiguration>? networkConfiguration;
  /// An array of placement strategy objects to use for the task. You can specify a maximum of five strategy rules per task.
  final pulumi.Input<List<EventTargetEcsTargetOrderedPlacementStrategy>>? orderedPlacementStrategies;
  /// An array of placement constraint objects to use for the task. You can specify up to 10 constraints per task (including constraints in the task definition and those specified at runtime). See Below.
  final pulumi.Input<List<EventTargetEcsTargetPlacementConstraint>>? placementConstraints;
  /// Specifies the platform version for the task. Specify only the numeric portion of the platform version, such as `1.1.0`. This is used only if LaunchType is FARGATE. For more information about valid platform versions, see [AWS Fargate Platform Versions](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html).
  final pulumi.Input<String>? platformVersion;
  /// Specifies whether to propagate the tags from the task definition to the task. If no value is specified, the tags are not propagated. Tags can only be propagated to the task during task creation. The only valid value is: `TASK_DEFINITION`.
  final pulumi.Input<String>? propagateTags;
  /// A map of tags to assign to ecs resources.
  final pulumi.Input<Map<String, String>>? tags;
  /// The number of tasks to create based on the TaskDefinition. Defaults to `1`.
  final pulumi.Input<int>? taskCount;
  /// The ARN of the task definition to use if the event target is an Amazon ECS cluster.
  final pulumi.Input<String> taskDefinitionArn;

  /// Creates a new [EventTargetEcsTarget].
  /// [capacityProviderStrategies] The capacity provider strategy to use for the task. If a `capacity_provider_strategy` specified, the `launch_type` parameter must be omitted. If no `capacity_provider_strategy` or `launch_type` is specified, the default capacity provider strategy for the cluster is used. Can be one or more. See below.
  /// [enableEcsManagedTags] Specifies whether to enable Amazon ECS managed tags for the task.
  /// [enableExecuteCommand] Whether or not to enable the execute command functionality for the containers in this task. If true, this enables execute command functionality on all containers in the task.
  /// [group] Specifies an ECS task group for the task. The maximum length is 255 characters.
  /// [launchType] Specifies the launch type on which your task is running. The launch type that you specify here must match one of the launch type (compatibilities) of the target task. Valid values include: `EC2`, `EXTERNAL`, or `FARGATE`.
  /// [networkConfiguration] Use this if the ECS task uses the awsvpc network mode. This specifies the VPC subnets and security groups associated with the task, and whether a public IP address is to be used. Required if `launch_type` is `FARGATE` because the awsvpc mode is required for Fargate tasks.
  /// [orderedPlacementStrategies] An array of placement strategy objects to use for the task. You can specify a maximum of five strategy rules per task.
  /// [placementConstraints] An array of placement constraint objects to use for the task. You can specify up to 10 constraints per task (including constraints in the task definition and those specified at runtime). See Below.
  /// [platformVersion] Specifies the platform version for the task. Specify only the numeric portion of the platform version, such as `1.1.0`. This is used only if LaunchType is FARGATE. For more information about valid platform versions, see [AWS Fargate Platform Versions](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html).
  /// [propagateTags] Specifies whether to propagate the tags from the task definition to the task. If no value is specified, the tags are not propagated. Tags can only be propagated to the task during task creation. The only valid value is: `TASK_DEFINITION`.
  /// [tags] A map of tags to assign to ecs resources.
  /// [taskCount] The number of tasks to create based on the TaskDefinition. Defaults to `1`.
  /// [taskDefinitionArn] The ARN of the task definition to use if the event target is an Amazon ECS cluster.
  EventTargetEcsTarget({
    this.capacityProviderStrategies,
    this.enableEcsManagedTags,
    this.enableExecuteCommand,
    this.group,
    this.launchType,
    this.networkConfiguration,
    this.orderedPlacementStrategies,
    this.placementConstraints,
    this.platformVersion,
    this.propagateTags,
    this.tags,
    this.taskCount,
    required this.taskDefinitionArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityProviderStrategies': ?pulumi.Input.mapOptionalInputValue<List<EventTargetEcsTargetCapacityProviderStrategy>, List<Map<String, dynamic>>>(capacityProviderStrategies, (value) => pulumi.Input.encodeList<EventTargetEcsTargetCapacityProviderStrategy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableEcsManagedTags': ?enableEcsManagedTags,
      'enableExecuteCommand': ?enableExecuteCommand,
      'group': ?group,
      'launchType': ?launchType,
      'networkConfiguration': ?pulumi.Input.mapOptionalInputValue<EventTargetEcsTargetNetworkConfiguration, Map<String, dynamic>>(networkConfiguration, (value) => value.toMap()),
      'orderedPlacementStrategies': ?pulumi.Input.mapOptionalInputValue<List<EventTargetEcsTargetOrderedPlacementStrategy>, List<Map<String, dynamic>>>(orderedPlacementStrategies, (value) => pulumi.Input.encodeList<EventTargetEcsTargetOrderedPlacementStrategy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'placementConstraints': ?pulumi.Input.mapOptionalInputValue<List<EventTargetEcsTargetPlacementConstraint>, List<Map<String, dynamic>>>(placementConstraints, (value) => pulumi.Input.encodeList<EventTargetEcsTargetPlacementConstraint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'platformVersion': ?platformVersion,
      'propagateTags': ?propagateTags,
      'tags': ?tags,
      'taskCount': ?taskCount,
      'taskDefinitionArn': taskDefinitionArn,
    };
  }

  factory EventTargetEcsTarget.fromMap(Map<String, dynamic> map) {
    return EventTargetEcsTarget(
      capacityProviderStrategies: map['capacityProviderStrategies'] == null ? null : (pulumi.Input.decodeList<EventTargetEcsTargetCapacityProviderStrategy>(map['capacityProviderStrategies'], (value) => EventTargetEcsTargetCapacityProviderStrategy.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enableEcsManagedTags: map['enableEcsManagedTags'] == null ? null : (map['enableEcsManagedTags'] as bool).input(),
      enableExecuteCommand: map['enableExecuteCommand'] == null ? null : (map['enableExecuteCommand'] as bool).input(),
      group: map['group'] == null ? null : (map['group'] as String).input(),
      launchType: map['launchType'] == null ? null : (map['launchType'] as String).input(),
      networkConfiguration: map['networkConfiguration'] == null ? null : (EventTargetEcsTargetNetworkConfiguration.fromMap((map['networkConfiguration'] as Map).cast<String, dynamic>())).input(),
      orderedPlacementStrategies: map['orderedPlacementStrategies'] == null ? null : (pulumi.Input.decodeList<EventTargetEcsTargetOrderedPlacementStrategy>(map['orderedPlacementStrategies'], (value) => EventTargetEcsTargetOrderedPlacementStrategy.fromMap((value as Map).cast<String, dynamic>()))).input(),
      placementConstraints: map['placementConstraints'] == null ? null : (pulumi.Input.decodeList<EventTargetEcsTargetPlacementConstraint>(map['placementConstraints'], (value) => EventTargetEcsTargetPlacementConstraint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      platformVersion: map['platformVersion'] == null ? null : (map['platformVersion'] as String).input(),
      propagateTags: map['propagateTags'] == null ? null : (map['propagateTags'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      taskCount: map['taskCount'] == null ? null : (map['taskCount'] as int).input(),
      taskDefinitionArn: (map['taskDefinitionArn'] as String).input(),
    );
  }
}

