// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipe_target_parameters_ecs_task_parameters_capacity_provider_strategy.dart';
import 'pipe_target_parameters_ecs_task_parameters_network_configuration.dart';
import 'pipe_target_parameters_ecs_task_parameters_overrides.dart';
import 'pipe_target_parameters_ecs_task_parameters_placement_constraint.dart';
import 'pipe_target_parameters_ecs_task_parameters_placement_strategy.dart';

class PipeTargetParametersEcsTaskParameters {
  /// List of capacity provider strategies to use for the task. If a capacityProviderStrategy is specified, the launchType parameter must be omitted. If no capacityProviderStrategy or launchType is specified, the defaultCapacityProviderStrategy for the cluster is used. Detailed below.
  final pulumi.Input<List<PipeTargetParametersEcsTaskParametersCapacityProviderStrategy>?>? capacityProviderStrategies;
  /// Specifies whether to enable Amazon ECS managed tags for the task. Valid values: true, false.
  final pulumi.Input<bool?>? enableEcsManagedTags;
  /// Whether or not to enable the execute command functionality for the containers in this task. If true, this enables execute command functionality on all containers in the task. Valid values: true, false.
  final pulumi.Input<bool?>? enableExecuteCommand;
  /// Specifies an Amazon ECS task group for the task. The maximum length is 255 characters.
  final pulumi.Input<String?>? group;
  /// Specifies the launch type on which your task is running. The launch type that you specify here must match one of the launch type (compatibilities) of the target task. The FARGATE value is supported only in the Regions where AWS Fargate with Amazon ECS is supported. Valid Values: EC2, FARGATE, EXTERNAL
  final pulumi.Input<String?>? launchType;
  /// Use this structure if the Amazon ECS task uses the awsvpc network mode. This structure specifies the VPC subnets and security groups associated with the task, and whether a public IP address is to be used. This structure is required if LaunchType is FARGATE because the awsvpc mode is required for Fargate tasks. If you specify NetworkConfiguration when the target ECS task does not use the awsvpc network mode, the task fails. Detailed below.
  final pulumi.Input<PipeTargetParametersEcsTaskParametersNetworkConfiguration?>? networkConfiguration;
  /// The overrides that are associated with a task. Detailed below.
  final pulumi.Input<PipeTargetParametersEcsTaskParametersOverrides?>? overrides;
  /// An array of placement constraint objects to use for the task. You can specify up to 10 constraints per task (including constraints in the task definition and those specified at runtime). Detailed below.
  final pulumi.Input<List<PipeTargetParametersEcsTaskParametersPlacementConstraint>?>? placementConstraints;
  /// The placement strategy objects to use for the task. You can specify a maximum of five strategy rules per task. Detailed below.
  final pulumi.Input<List<PipeTargetParametersEcsTaskParametersPlacementStrategy>?>? placementStrategies;
  /// Specifies the platform version for the task. Specify only the numeric portion of the platform version, such as 1.1.0. This structure is used only if LaunchType is FARGATE.
  final pulumi.Input<String?>? platformVersion;
  /// Specifies whether to propagate the tags from the task definition to the task. If no value is specified, the tags are not propagated. Tags can only be propagated to the task during task creation. To add tags to a task after task creation, use the TagResource API action. Valid Values: TASK_DEFINITION
  final pulumi.Input<String?>? propagateTags;
  /// The reference ID to use for the task. Maximum length of 1,024.
  final pulumi.Input<String?>? referenceId;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The number of tasks to create based on TaskDefinition. The default is 1.
  final pulumi.Input<int?>? taskCount;
  /// The ARN of the task definition to use if the event target is an Amazon ECS task.
  final pulumi.Input<String> taskDefinitionArn;

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
  /// [tags] Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [taskCount] The number of tasks to create based on TaskDefinition. The default is 1.
  /// [taskDefinitionArn] The ARN of the task definition to use if the event target is an Amazon ECS task.
  const PipeTargetParametersEcsTaskParameters({
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
    return <String, dynamic>{
      'capacityProviderStrategies': ?pulumi.Input.mapOptionalInputValue<List<PipeTargetParametersEcsTaskParametersCapacityProviderStrategy>, List<Map<String, dynamic>>>(capacityProviderStrategies, (value) => pulumi.Input.encodeList<PipeTargetParametersEcsTaskParametersCapacityProviderStrategy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableEcsManagedTags': ?enableEcsManagedTags,
      'enableExecuteCommand': ?enableExecuteCommand,
      'group': ?group,
      'launchType': ?launchType,
      'networkConfiguration': ?pulumi.Input.mapOptionalInputValue<PipeTargetParametersEcsTaskParametersNetworkConfiguration, Map<String, dynamic>>(networkConfiguration, (value) => value.toMap()),
      'overrides': ?pulumi.Input.mapOptionalInputValue<PipeTargetParametersEcsTaskParametersOverrides, Map<String, dynamic>>(overrides, (value) => value.toMap()),
      'placementConstraints': ?pulumi.Input.mapOptionalInputValue<List<PipeTargetParametersEcsTaskParametersPlacementConstraint>, List<Map<String, dynamic>>>(placementConstraints, (value) => pulumi.Input.encodeList<PipeTargetParametersEcsTaskParametersPlacementConstraint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'placementStrategies': ?pulumi.Input.mapOptionalInputValue<List<PipeTargetParametersEcsTaskParametersPlacementStrategy>, List<Map<String, dynamic>>>(placementStrategies, (value) => pulumi.Input.encodeList<PipeTargetParametersEcsTaskParametersPlacementStrategy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'platformVersion': ?platformVersion,
      'propagateTags': ?propagateTags,
      'referenceId': ?referenceId,
      'tags': ?tags,
      'taskCount': ?taskCount,
      'taskDefinitionArn': taskDefinitionArn,
    };
  }

  factory PipeTargetParametersEcsTaskParameters.fromMap(Map<String, dynamic> map) {
    return PipeTargetParametersEcsTaskParameters(
      capacityProviderStrategies: (() { final guardedValue = map['capacityProviderStrategies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PipeTargetParametersEcsTaskParametersCapacityProviderStrategy>(guardedValue, (value) => PipeTargetParametersEcsTaskParametersCapacityProviderStrategy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enableEcsManagedTags: (() { final guardedValue = map['enableEcsManagedTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableExecuteCommand: (() { final guardedValue = map['enableExecuteCommand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      launchType: (() { final guardedValue = map['launchType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkConfiguration: (() { final guardedValue = map['networkConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipeTargetParametersEcsTaskParametersNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      overrides: (() { final guardedValue = map['overrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipeTargetParametersEcsTaskParametersOverrides.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      placementConstraints: (() { final guardedValue = map['placementConstraints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PipeTargetParametersEcsTaskParametersPlacementConstraint>(guardedValue, (value) => PipeTargetParametersEcsTaskParametersPlacementConstraint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      placementStrategies: (() { final guardedValue = map['placementStrategies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PipeTargetParametersEcsTaskParametersPlacementStrategy>(guardedValue, (value) => PipeTargetParametersEcsTaskParametersPlacementStrategy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      platformVersion: (() { final guardedValue = map['platformVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      propagateTags: (() { final guardedValue = map['propagateTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      referenceId: (() { final guardedValue = map['referenceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      taskCount: (() { final guardedValue = map['taskCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      taskDefinitionArn: pulumi.Input.fromValue(map['taskDefinitionArn'] as String),
    );
  }
}
