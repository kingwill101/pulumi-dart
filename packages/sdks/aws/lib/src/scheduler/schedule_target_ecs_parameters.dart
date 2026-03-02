// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schedule_target_ecs_parameters_capacity_provider_strategy.dart';
import 'schedule_target_ecs_parameters_network_configuration.dart';
import 'schedule_target_ecs_parameters_placement_constraint.dart';
import 'schedule_target_ecs_parameters_placement_strategy.dart';

class ScheduleTargetEcsParameters {
  /// Up to `6` capacity provider strategies to use for the task. Detailed below.
  final pulumi.Input<List<ScheduleTargetEcsParametersCapacityProviderStrategy>>? capacityProviderStrategies;
  /// Specifies whether to enable Amazon ECS managed tags for the task. For more information, see [Tagging Your Amazon ECS Resources](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html) in the Amazon ECS Developer Guide.
  final pulumi.Input<bool>? enableEcsManagedTags;
  /// Specifies whether to enable the execute command functionality for the containers in this task.
  final pulumi.Input<bool>? enableExecuteCommand;
  /// Specifies an ECS task group for the task. At most 255 characters.
  final pulumi.Input<String>? group;
  /// Specifies the launch type on which your task is running. The launch type that you specify here must match one of the launch type (compatibilities) of the target task. One of: `EC2`, `FARGATE`, `EXTERNAL`.
  final pulumi.Input<String>? launchType;
  /// Configures the networking associated with the task. Detailed below.
  final pulumi.Input<ScheduleTargetEcsParametersNetworkConfiguration>? networkConfiguration;
  /// A set of up to 10 placement constraints to use for the task. Detailed below.
  final pulumi.Input<List<ScheduleTargetEcsParametersPlacementConstraint>>? placementConstraints;
  /// A set of up to 5 placement strategies. Detailed below.
  final pulumi.Input<List<ScheduleTargetEcsParametersPlacementStrategy>>? placementStrategies;
  /// Specifies the platform version for the task. Specify only the numeric portion of the platform version, such as `1.1.0`.
  final pulumi.Input<String>? platformVersion;
  /// Specifies whether to propagate the tags from the task definition to the task. One of: `TASK_DEFINITION`.
  final pulumi.Input<String>? propagateTags;
  /// Reference ID to use for the task.
  final pulumi.Input<String>? referenceId;
  /// The metadata that you apply to the task. Each tag consists of a key and an optional value. For more information, see [`RunTask`](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_RunTask.html) in the Amazon ECS API Reference.
  final pulumi.Input<Map<String, String>>? tags;
  /// The number of tasks to create. Ranges from `1` (default) to `10`.
  final pulumi.Input<int>? taskCount;
  /// ARN of the task definition to use.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> taskDefinitionArn;

  /// Creates a new [ScheduleTargetEcsParameters].
  /// [capacityProviderStrategies] Up to `6` capacity provider strategies to use for the task. Detailed below.
  /// [enableEcsManagedTags] Specifies whether to enable Amazon ECS managed tags for the task. For more information, see [Tagging Your Amazon ECS Resources](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html) in the Amazon ECS Developer Guide.
  /// [enableExecuteCommand] Specifies whether to enable the execute command functionality for the containers in this task.
  /// [group] Specifies an ECS task group for the task. At most 255 characters.
  /// [launchType] Specifies the launch type on which your task is running. The launch type that you specify here must match one of the launch type (compatibilities) of the target task. One of: `EC2`, `FARGATE`, `EXTERNAL`.
  /// [networkConfiguration] Configures the networking associated with the task. Detailed below.
  /// [placementConstraints] A set of up to 10 placement constraints to use for the task. Detailed below.
  /// [placementStrategies] A set of up to 5 placement strategies. Detailed below.
  /// [platformVersion] Specifies the platform version for the task. Specify only the numeric portion of the platform version, such as `1.1.0`.
  /// [propagateTags] Specifies whether to propagate the tags from the task definition to the task. One of: `TASK_DEFINITION`.
  /// [referenceId] Reference ID to use for the task.
  /// [tags] The metadata that you apply to the task. Each tag consists of a key and an optional value. For more information, see [`RunTask`](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_RunTask.html) in the Amazon ECS API Reference.
  /// [taskCount] The number of tasks to create. Ranges from `1` (default) to `10`.
  /// [taskDefinitionArn] ARN of the task definition to use.
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
    return <String, dynamic>{
      'capacityProviderStrategies': ?pulumi.Input.mapOptionalInputValue<List<ScheduleTargetEcsParametersCapacityProviderStrategy>, List<Map<String, dynamic>>>(capacityProviderStrategies, (value) => pulumi.Input.encodeList<ScheduleTargetEcsParametersCapacityProviderStrategy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableEcsManagedTags': ?enableEcsManagedTags,
      'enableExecuteCommand': ?enableExecuteCommand,
      'group': ?group,
      'launchType': ?launchType,
      'networkConfiguration': ?pulumi.Input.mapOptionalInputValue<ScheduleTargetEcsParametersNetworkConfiguration, Map<String, dynamic>>(networkConfiguration, (value) => value.toMap()),
      'placementConstraints': ?pulumi.Input.mapOptionalInputValue<List<ScheduleTargetEcsParametersPlacementConstraint>, List<Map<String, dynamic>>>(placementConstraints, (value) => pulumi.Input.encodeList<ScheduleTargetEcsParametersPlacementConstraint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'placementStrategies': ?pulumi.Input.mapOptionalInputValue<List<ScheduleTargetEcsParametersPlacementStrategy>, List<Map<String, dynamic>>>(placementStrategies, (value) => pulumi.Input.encodeList<ScheduleTargetEcsParametersPlacementStrategy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'platformVersion': ?platformVersion,
      'propagateTags': ?propagateTags,
      'referenceId': ?referenceId,
      'tags': ?tags,
      'taskCount': ?taskCount,
      'taskDefinitionArn': taskDefinitionArn,
    };
  }

  factory ScheduleTargetEcsParameters.fromMap(Map<String, dynamic> map) {
    return ScheduleTargetEcsParameters(
      capacityProviderStrategies: map['capacityProviderStrategies'] == null ? null : ((pulumi.Input.decodeList<ScheduleTargetEcsParametersCapacityProviderStrategy>(map['capacityProviderStrategies']!, (value) => ScheduleTargetEcsParametersCapacityProviderStrategy.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      enableEcsManagedTags: map['enableEcsManagedTags'] == null ? null : ((map['enableEcsManagedTags'] as bool).input()).input(),
      enableExecuteCommand: map['enableExecuteCommand'] == null ? null : ((map['enableExecuteCommand'] as bool).input()).input(),
      group: map['group'] == null ? null : ((map['group'] as String).input()).input(),
      launchType: map['launchType'] == null ? null : ((map['launchType'] as String).input()).input(),
      networkConfiguration: map['networkConfiguration'] == null ? null : ((ScheduleTargetEcsParametersNetworkConfiguration.fromMap((map['networkConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      placementConstraints: map['placementConstraints'] == null ? null : ((pulumi.Input.decodeList<ScheduleTargetEcsParametersPlacementConstraint>(map['placementConstraints']!, (value) => ScheduleTargetEcsParametersPlacementConstraint.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      placementStrategies: map['placementStrategies'] == null ? null : ((pulumi.Input.decodeList<ScheduleTargetEcsParametersPlacementStrategy>(map['placementStrategies']!, (value) => ScheduleTargetEcsParametersPlacementStrategy.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      platformVersion: map['platformVersion'] == null ? null : ((map['platformVersion'] as String).input()).input(),
      propagateTags: map['propagateTags'] == null ? null : ((map['propagateTags'] as String).input()).input(),
      referenceId: map['referenceId'] == null ? null : ((map['referenceId'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      taskCount: map['taskCount'] == null ? null : ((map['taskCount'] as int).input()).input(),
      taskDefinitionArn: (map['taskDefinitionArn'] as String).input(),
    );
  }
}

