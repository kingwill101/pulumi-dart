// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_task_execution_capacity_provider_strategy.dart';
import 'get_task_execution_network_configuration.dart';
import 'get_task_execution_overrides.dart';
import 'get_task_execution_placement_constraint.dart';
import 'get_task_execution_placement_strategy.dart';

/// Result data returned by getTaskExecution.
class GetTaskExecutionResult {
  final List<GetTaskExecutionCapacityProviderStrategy>? capacityProviderStrategies;
  final String? clientToken;
  final String? cluster;
  final int? desiredCount;
  final bool? enableEcsManagedTags;
  final bool? enableExecuteCommand;
  final String? group;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? launchType;
  final GetTaskExecutionNetworkConfiguration? networkConfiguration;
  final GetTaskExecutionOverrides? overrides;
  final List<GetTaskExecutionPlacementConstraint>? placementConstraints;
  final List<GetTaskExecutionPlacementStrategy>? placementStrategies;
  final String? platformVersion;
  final String? propagateTags;
  final String? referenceId;
  final String? region;
  final String? startedBy;
  final Map<String, String>? tags;
  /// List of the provisioned task ARNs.
  final List<String>? taskArns;
  final String? taskDefinition;

  /// Creates a new [GetTaskExecutionResult].
  /// [capacityProviderStrategies] Optional.
  /// [clientToken] Optional.
  /// [cluster] Optional.
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
  /// [region] Optional.
  /// [startedBy] Optional.
  /// [tags] Optional.
  /// [taskArns] List of the provisioned task ARNs.
  /// [taskDefinition] Optional.
  const GetTaskExecutionResult({
    this.capacityProviderStrategies,
    this.clientToken,
    this.cluster,
    this.desiredCount,
    this.enableEcsManagedTags,
    this.enableExecuteCommand,
    this.group,
    this.id,
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
    this.taskArns,
    this.taskDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityProviderStrategies': ?(() { final guardedValue = capacityProviderStrategies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTaskExecutionCapacityProviderStrategy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'clientToken': ?clientToken,
      'cluster': ?cluster,
      'desiredCount': ?desiredCount,
      'enableEcsManagedTags': ?enableEcsManagedTags,
      'enableExecuteCommand': ?enableExecuteCommand,
      'group': ?group,
      'id': ?id,
      'launchType': ?launchType,
      'networkConfiguration': ?networkConfiguration?.toMap(),
      'overrides': ?overrides?.toMap(),
      'placementConstraints': ?(() { final guardedValue = placementConstraints; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTaskExecutionPlacementConstraint, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'placementStrategies': ?(() { final guardedValue = placementStrategies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTaskExecutionPlacementStrategy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'platformVersion': ?platformVersion,
      'propagateTags': ?propagateTags,
      'referenceId': ?referenceId,
      'region': ?region,
      'startedBy': ?startedBy,
      'tags': ?tags,
      'taskArns': ?taskArns,
      'taskDefinition': ?taskDefinition,
    };
  }

  factory GetTaskExecutionResult.fromMap(Map<String, dynamic> map) {
    return GetTaskExecutionResult(
      capacityProviderStrategies: (() { final guardedValue = map['capacityProviderStrategies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTaskExecutionCapacityProviderStrategy>(guardedValue, (value) => GetTaskExecutionCapacityProviderStrategy.fromMap((value as Map).cast<String, dynamic>())); })(),
      clientToken: (() { final guardedValue = map['clientToken']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cluster: (() { final guardedValue = map['cluster']; if (guardedValue == null) return null; return guardedValue as String; })(),
      desiredCount: (() { final guardedValue = map['desiredCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      enableEcsManagedTags: (() { final guardedValue = map['enableEcsManagedTags']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableExecuteCommand: (() { final guardedValue = map['enableExecuteCommand']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      launchType: (() { final guardedValue = map['launchType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkConfiguration: (() { final guardedValue = map['networkConfiguration']; if (guardedValue == null) return null; return GetTaskExecutionNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      overrides: (() { final guardedValue = map['overrides']; if (guardedValue == null) return null; return GetTaskExecutionOverrides.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      placementConstraints: (() { final guardedValue = map['placementConstraints']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTaskExecutionPlacementConstraint>(guardedValue, (value) => GetTaskExecutionPlacementConstraint.fromMap((value as Map).cast<String, dynamic>())); })(),
      placementStrategies: (() { final guardedValue = map['placementStrategies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTaskExecutionPlacementStrategy>(guardedValue, (value) => GetTaskExecutionPlacementStrategy.fromMap((value as Map).cast<String, dynamic>())); })(),
      platformVersion: (() { final guardedValue = map['platformVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      propagateTags: (() { final guardedValue = map['propagateTags']; if (guardedValue == null) return null; return guardedValue as String; })(),
      referenceId: (() { final guardedValue = map['referenceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startedBy: (() { final guardedValue = map['startedBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      taskArns: (() { final guardedValue = map['taskArns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      taskDefinition: (() { final guardedValue = map['taskDefinition']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
