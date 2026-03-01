// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_task_execution_capacity_provider_strategy.dart';
import 'get_task_execution_network_configuration.dart';
import 'get_task_execution_overrides.dart';
import 'get_task_execution_placement_constraint.dart';
import 'get_task_execution_placement_strategy.dart';

/// Result data returned by getTaskExecution.
class GetTaskExecutionResult {
  final List<GetTaskExecutionCapacityProviderStrategy>?
  capacityProviderStrategies;
  final String? clientToken;
  final String cluster;
  final int? desiredCount;
  final bool? enableEcsManagedTags;
  final bool? enableExecuteCommand;
  final String? group;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? launchType;
  final GetTaskExecutionNetworkConfiguration? networkConfiguration;
  final GetTaskExecutionOverrides? overrides;
  final List<GetTaskExecutionPlacementConstraint>? placementConstraints;
  final List<GetTaskExecutionPlacementStrategy>? placementStrategies;
  final String? platformVersion;
  final String? propagateTags;
  final String? referenceId;
  final String region;
  final String? startedBy;
  final Map<String, String>? tags;

  /// A list of the provisioned task ARNs.
  final List<String> taskArns;
  final String taskDefinition;

  /// Creates a new [GetTaskExecutionResult].
  /// [capacityProviderStrategies] Optional.
  /// [clientToken] Optional.
  /// [cluster] Required.
  /// [desiredCount] Optional.
  /// [enableEcsManagedTags] Optional.
  /// [enableExecuteCommand] Optional.
  /// [group] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [launchType] Optional.
  /// [networkConfiguration] Optional.
  /// [overrides] Optional.
  /// [placementConstraints] Optional.
  /// [placementStrategies] Optional.
  /// [platformVersion] Optional.
  /// [propagateTags] Optional.
  /// [referenceId] Optional.
  /// [region] Required.
  /// [startedBy] Optional.
  /// [tags] Optional.
  /// [taskArns] A list of the provisioned task ARNs.
  /// [taskDefinition] Required.
  GetTaskExecutionResult({
    this.capacityProviderStrategies,
    this.clientToken,
    required this.cluster,
    this.desiredCount,
    this.enableEcsManagedTags,
    this.enableExecuteCommand,
    this.group,
    required this.id,
    this.launchType,
    this.networkConfiguration,
    this.overrides,
    this.placementConstraints,
    this.placementStrategies,
    this.platformVersion,
    this.propagateTags,
    this.referenceId,
    required this.region,
    this.startedBy,
    this.tags,
    required this.taskArns,
    required this.taskDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityProviderStrategies': ?capacityProviderStrategies == null
          ? null
          : pulumi.Input.encodeList<
              GetTaskExecutionCapacityProviderStrategy,
              Map<String, dynamic>
            >(capacityProviderStrategies!, (value) => value.toMap()),
      'clientToken': ?clientToken,
      'cluster': cluster,
      'desiredCount': ?desiredCount,
      'enableEcsManagedTags': ?enableEcsManagedTags,
      'enableExecuteCommand': ?enableExecuteCommand,
      'group': ?group,
      'id': id,
      'launchType': ?launchType,
      'networkConfiguration': ?networkConfiguration == null
          ? null
          : networkConfiguration!.toMap(),
      'overrides': ?overrides == null ? null : overrides!.toMap(),
      'placementConstraints': ?placementConstraints == null
          ? null
          : pulumi.Input.encodeList<
              GetTaskExecutionPlacementConstraint,
              Map<String, dynamic>
            >(placementConstraints!, (value) => value.toMap()),
      'placementStrategies': ?placementStrategies == null
          ? null
          : pulumi.Input.encodeList<
              GetTaskExecutionPlacementStrategy,
              Map<String, dynamic>
            >(placementStrategies!, (value) => value.toMap()),
      'platformVersion': ?platformVersion,
      'propagateTags': ?propagateTags,
      'referenceId': ?referenceId,
      'region': region,
      'startedBy': ?startedBy,
      'tags': ?tags,
      'taskArns': taskArns,
      'taskDefinition': taskDefinition,
    };
  }

  factory GetTaskExecutionResult.fromMap(Map<String, dynamic> map) {
    return GetTaskExecutionResult(
      capacityProviderStrategies: map['capacityProviderStrategies'] == null
          ? null
          : pulumi.Input.decodeList<GetTaskExecutionCapacityProviderStrategy>(
              map['capacityProviderStrategies'],
              (value) => GetTaskExecutionCapacityProviderStrategy.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      clientToken: map['clientToken'] == null
          ? null
          : map['clientToken'] as String,
      cluster: map['cluster'] as String,
      desiredCount: map['desiredCount'] == null
          ? null
          : map['desiredCount'] as int,
      enableEcsManagedTags: map['enableEcsManagedTags'] == null
          ? null
          : map['enableEcsManagedTags'] as bool,
      enableExecuteCommand: map['enableExecuteCommand'] == null
          ? null
          : map['enableExecuteCommand'] as bool,
      group: map['group'] == null ? null : map['group'] as String,
      id: map['id'] as String,
      launchType: map['launchType'] == null
          ? null
          : map['launchType'] as String,
      networkConfiguration: map['networkConfiguration'] == null
          ? null
          : GetTaskExecutionNetworkConfiguration.fromMap(
              (map['networkConfiguration'] as Map).cast<String, dynamic>(),
            ),
      overrides: map['overrides'] == null
          ? null
          : GetTaskExecutionOverrides.fromMap(
              (map['overrides'] as Map).cast<String, dynamic>(),
            ),
      placementConstraints: map['placementConstraints'] == null
          ? null
          : pulumi.Input.decodeList<GetTaskExecutionPlacementConstraint>(
              map['placementConstraints'],
              (value) => GetTaskExecutionPlacementConstraint.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      placementStrategies: map['placementStrategies'] == null
          ? null
          : pulumi.Input.decodeList<GetTaskExecutionPlacementStrategy>(
              map['placementStrategies'],
              (value) => GetTaskExecutionPlacementStrategy.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      platformVersion: map['platformVersion'] == null
          ? null
          : map['platformVersion'] as String,
      propagateTags: map['propagateTags'] == null
          ? null
          : map['propagateTags'] as String,
      referenceId: map['referenceId'] == null
          ? null
          : map['referenceId'] as String,
      region: map['region'] as String,
      startedBy: map['startedBy'] == null ? null : map['startedBy'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      taskArns: (map['taskArns'] as List).cast<String>(),
      taskDefinition: map['taskDefinition'] as String,
    );
  }
}
