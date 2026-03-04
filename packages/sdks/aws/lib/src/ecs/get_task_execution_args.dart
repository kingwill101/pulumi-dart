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
      'capacityProviderStrategies':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetTaskExecutionCapacityProviderStrategy>,
            List<Map<String, dynamic>>
          >(
            capacityProviderStrategies,
            (value) =>
                pulumi.Input.encodeList<
                  GetTaskExecutionCapacityProviderStrategy,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'clientToken': ?clientToken,
      'cluster': cluster,
      'desiredCount': ?desiredCount,
      'enableEcsManagedTags': ?enableEcsManagedTags,
      'enableExecuteCommand': ?enableExecuteCommand,
      'group': ?group,
      'launchType': ?launchType,
      'networkConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            GetTaskExecutionNetworkConfiguration,
            Map<String, dynamic>
          >(networkConfiguration, (value) => value.toMap()),
      'overrides':
          ?pulumi.Input.mapOptionalInputValue<
            GetTaskExecutionOverrides,
            Map<String, dynamic>
          >(overrides, (value) => value.toMap()),
      'placementConstraints':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetTaskExecutionPlacementConstraint>,
            List<Map<String, dynamic>>
          >(
            placementConstraints,
            (value) =>
                pulumi.Input.encodeList<
                  GetTaskExecutionPlacementConstraint,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'placementStrategies':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetTaskExecutionPlacementStrategy>,
            List<Map<String, dynamic>>
          >(
            placementStrategies,
            (value) =>
                pulumi.Input.encodeList<
                  GetTaskExecutionPlacementStrategy,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      capacityProviderStrategies: (() {
        final guardedValue = map['capacityProviderStrategies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetTaskExecutionCapacityProviderStrategy>(
            guardedValue,
            (value) => GetTaskExecutionCapacityProviderStrategy.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      clientToken: (() {
        final guardedValue = map['clientToken'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cluster: pulumi.Input.fromValue(map['cluster'] as String),
      desiredCount: (() {
        final guardedValue = map['desiredCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      enableEcsManagedTags: (() {
        final guardedValue = map['enableEcsManagedTags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableExecuteCommand: (() {
        final guardedValue = map['enableExecuteCommand'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      group: (() {
        final guardedValue = map['group'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      launchType: (() {
        final guardedValue = map['launchType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkConfiguration: (() {
        final guardedValue = map['networkConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GetTaskExecutionNetworkConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      overrides: (() {
        final guardedValue = map['overrides'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GetTaskExecutionOverrides.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      placementConstraints: (() {
        final guardedValue = map['placementConstraints'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetTaskExecutionPlacementConstraint>(
            guardedValue,
            (value) => GetTaskExecutionPlacementConstraint.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      placementStrategies: (() {
        final guardedValue = map['placementStrategies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetTaskExecutionPlacementStrategy>(
            guardedValue,
            (value) => GetTaskExecutionPlacementStrategy.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      platformVersion: (() {
        final guardedValue = map['platformVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      propagateTags: (() {
        final guardedValue = map['propagateTags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      referenceId: (() {
        final guardedValue = map['referenceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      startedBy: (() {
        final guardedValue = map['startedBy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      taskDefinition: pulumi.Input.fromValue(map['taskDefinition'] as String),
    );
  }
}
