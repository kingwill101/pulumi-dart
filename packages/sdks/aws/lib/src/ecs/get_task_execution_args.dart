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
  final pulumi.Input<List<GetTaskExecutionCapacityProviderStrategy>>? capacityProviderStrategies;
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
  final pulumi.Input<GetTaskExecutionNetworkConfiguration>? networkConfiguration;
  /// A list of container overrides that specify the name of a container in the specified task definition and the overrides it should receive.
  final pulumi.Input<GetTaskExecutionOverrides>? overrides;
  /// An array of placement constraint objects to use for the task. You can specify up to 10 constraints for each task. See below.
  final pulumi.Input<List<GetTaskExecutionPlacementConstraint>>? placementConstraints;
  /// The placement strategy objects to use for the task. You can specify a maximum of 5 strategy rules for each task. See below.
  final pulumi.Input<List<GetTaskExecutionPlacementStrategy>>? placementStrategies;
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
    return <String, dynamic>{
      'capacityProviderStrategies': ?pulumi.Input.mapOptionalInputValue<List<GetTaskExecutionCapacityProviderStrategy>, List<Map<String, dynamic>>>(capacityProviderStrategies, (value) => pulumi.Input.encodeList<GetTaskExecutionCapacityProviderStrategy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clientToken': ?clientToken,
      'cluster': cluster,
      'desiredCount': ?desiredCount,
      'enableEcsManagedTags': ?enableEcsManagedTags,
      'enableExecuteCommand': ?enableExecuteCommand,
      'group': ?group,
      'launchType': ?launchType,
      'networkConfiguration': ?pulumi.Input.mapOptionalInputValue<GetTaskExecutionNetworkConfiguration, Map<String, dynamic>>(networkConfiguration, (value) => value.toMap()),
      'overrides': ?pulumi.Input.mapOptionalInputValue<GetTaskExecutionOverrides, Map<String, dynamic>>(overrides, (value) => value.toMap()),
      'placementConstraints': ?pulumi.Input.mapOptionalInputValue<List<GetTaskExecutionPlacementConstraint>, List<Map<String, dynamic>>>(placementConstraints, (value) => pulumi.Input.encodeList<GetTaskExecutionPlacementConstraint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'placementStrategies': ?pulumi.Input.mapOptionalInputValue<List<GetTaskExecutionPlacementStrategy>, List<Map<String, dynamic>>>(placementStrategies, (value) => pulumi.Input.encodeList<GetTaskExecutionPlacementStrategy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'platformVersion': ?platformVersion,
      'propagateTags': ?propagateTags,
      'referenceId': ?referenceId,
      'region': ?region,
      'startedBy': ?startedBy,
      'tags': ?tags,
      'taskDefinition': taskDefinition,
    };
  }

  factory GetTaskExecutionArgs.fromMap(Map<String, dynamic> map) {
    return GetTaskExecutionArgs(
      capacityProviderStrategies: map['capacityProviderStrategies'] == null ? null : ((pulumi.Input.decodeList<GetTaskExecutionCapacityProviderStrategy>(map['capacityProviderStrategies']!, (value) => GetTaskExecutionCapacityProviderStrategy.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      clientToken: map['clientToken'] == null ? null : ((map['clientToken'] as String).input()).input(),
      cluster: (map['cluster'] as String).input(),
      desiredCount: map['desiredCount'] == null ? null : ((map['desiredCount'] as int).input()).input(),
      enableEcsManagedTags: map['enableEcsManagedTags'] == null ? null : ((map['enableEcsManagedTags'] as bool).input()).input(),
      enableExecuteCommand: map['enableExecuteCommand'] == null ? null : ((map['enableExecuteCommand'] as bool).input()).input(),
      group: map['group'] == null ? null : ((map['group'] as String).input()).input(),
      launchType: map['launchType'] == null ? null : ((map['launchType'] as String).input()).input(),
      networkConfiguration: map['networkConfiguration'] == null ? null : ((GetTaskExecutionNetworkConfiguration.fromMap((map['networkConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      overrides: map['overrides'] == null ? null : ((GetTaskExecutionOverrides.fromMap((map['overrides']! as Map).cast<String, dynamic>())).input()).input(),
      placementConstraints: map['placementConstraints'] == null ? null : ((pulumi.Input.decodeList<GetTaskExecutionPlacementConstraint>(map['placementConstraints']!, (value) => GetTaskExecutionPlacementConstraint.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      placementStrategies: map['placementStrategies'] == null ? null : ((pulumi.Input.decodeList<GetTaskExecutionPlacementStrategy>(map['placementStrategies']!, (value) => GetTaskExecutionPlacementStrategy.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      platformVersion: map['platformVersion'] == null ? null : ((map['platformVersion'] as String).input()).input(),
      propagateTags: map['propagateTags'] == null ? null : ((map['propagateTags'] as String).input()).input(),
      referenceId: map['referenceId'] == null ? null : ((map['referenceId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      startedBy: map['startedBy'] == null ? null : ((map['startedBy'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      taskDefinition: (map['taskDefinition'] as String).input(),
    );
  }
}

