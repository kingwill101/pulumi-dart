// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_task_execution_capacity_provider_strategy/get_task_execution_capacity_provider_strategy.dart';
import '../get_task_execution_network_configuration/get_task_execution_network_configuration.dart';
import '../get_task_execution_overrides/get_task_execution_overrides.dart';
import '../get_task_execution_placement_constraint/get_task_execution_placement_constraint.dart';
import '../get_task_execution_placement_strategy/get_task_execution_placement_strategy.dart';

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
    final map = <String, dynamic>{};
    final capacityProviderStrategiesValue = capacityProviderStrategies;
    if (capacityProviderStrategiesValue != null) {
      map['capacityProviderStrategies'] = Input.encodeList<
              GetTaskExecutionCapacityProviderStrategy, Map<String, dynamic>>(
          capacityProviderStrategiesValue, (value) => value.toMap());
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
    map['id'] = id;
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
      map['placementConstraints'] = Input.encodeList<
              GetTaskExecutionPlacementConstraint, Map<String, dynamic>>(
          placementConstraintsValue, (value) => value.toMap());
    }
    final placementStrategiesValue = placementStrategies;
    if (placementStrategiesValue != null) {
      map['placementStrategies'] = Input.encodeList<
              GetTaskExecutionPlacementStrategy, Map<String, dynamic>>(
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
    map['region'] = region;
    final startedByValue = startedBy;
    if (startedByValue != null) {
      map['startedBy'] = startedByValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['taskArns'] = taskArns;
    map['taskDefinition'] = taskDefinition;
    return map;
  }

  factory GetTaskExecutionResult.fromMap(Map<String, dynamic> map) {
    return GetTaskExecutionResult(
      capacityProviderStrategies: map['capacityProviderStrategies'] == null
          ? null
          : Input.decodeList<GetTaskExecutionCapacityProviderStrategy>(
              map['capacityProviderStrategies'],
              (value) => GetTaskExecutionCapacityProviderStrategy.fromMap(
                  (value as Map).cast<String, dynamic>())),
      clientToken:
          map['clientToken'] == null ? null : map['clientToken'] as String,
      cluster: map['cluster'] as String,
      desiredCount:
          map['desiredCount'] == null ? null : map['desiredCount'] as int,
      enableEcsManagedTags: map['enableEcsManagedTags'] == null
          ? null
          : map['enableEcsManagedTags'] as bool,
      enableExecuteCommand: map['enableExecuteCommand'] == null
          ? null
          : map['enableExecuteCommand'] as bool,
      group: map['group'] == null ? null : map['group'] as String,
      id: map['id'] as String,
      launchType:
          map['launchType'] == null ? null : map['launchType'] as String,
      networkConfiguration: map['networkConfiguration'] == null
          ? null
          : GetTaskExecutionNetworkConfiguration.fromMap(
              (map['networkConfiguration'] as Map).cast<String, dynamic>()),
      overrides: map['overrides'] == null
          ? null
          : GetTaskExecutionOverrides.fromMap(
              (map['overrides'] as Map).cast<String, dynamic>()),
      placementConstraints: map['placementConstraints'] == null
          ? null
          : Input.decodeList<GetTaskExecutionPlacementConstraint>(
              map['placementConstraints'],
              (value) => GetTaskExecutionPlacementConstraint.fromMap(
                  (value as Map).cast<String, dynamic>())),
      placementStrategies: map['placementStrategies'] == null
          ? null
          : Input.decodeList<GetTaskExecutionPlacementStrategy>(
              map['placementStrategies'],
              (value) => GetTaskExecutionPlacementStrategy.fromMap(
                  (value as Map).cast<String, dynamic>())),
      platformVersion: map['platformVersion'] == null
          ? null
          : map['platformVersion'] as String,
      propagateTags:
          map['propagateTags'] == null ? null : map['propagateTags'] as String,
      referenceId:
          map['referenceId'] == null ? null : map['referenceId'] as String,
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
