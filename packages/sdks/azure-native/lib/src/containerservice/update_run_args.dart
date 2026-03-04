// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_cluster_update.dart';
import 'update_run_strategy.dart';

/// {@template pulumi_containerservice_update_run_args_doc}
/// The set of arguments for UpdateRun.
/// {@endtemplate}
/// {@macro pulumi_containerservice_update_run_args_doc}
class UpdateRunArgs {
  /// The name of the Fleet resource.
  final pulumi.Input<String> fleetName;

  /// The update to be applied to all clusters in the UpdateRun. The managedClusterUpdate can be modified until the run is started.
  final pulumi.Input<ManagedClusterUpdate> managedClusterUpdate;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The strategy defines the order in which the clusters will be updated.
  /// If not set, all members will be updated sequentially. The UpdateRun status will show a single UpdateStage and a single UpdateGroup targeting all members.
  /// The strategy of the UpdateRun can be modified until the run is started.
  final pulumi.Input<UpdateRunStrategy>? strategy;

  /// The name of the UpdateRun resource.
  final pulumi.Input<String>? updateRunName;

  /// The resource id of the FleetUpdateStrategy resource to reference.
  ///
  /// When creating a new run, there are three ways to define a strategy for the run:
  /// 1. Define a new strategy in place: Set the "strategy" field.
  /// 2. Use an existing strategy: Set the "updateStrategyId" field. (since 2023-08-15-preview)
  /// 3. Use the default strategy to update all the members one by one: Leave both "updateStrategyId" and "strategy" unset. (since 2023-08-15-preview)
  ///
  /// Setting both "updateStrategyId" and "strategy" is invalid.
  ///
  /// UpdateRuns created by "updateStrategyId" snapshot the referenced UpdateStrategy at the time of creation and store it in the "strategy" field.
  /// Subsequent changes to the referenced FleetUpdateStrategy resource do not propagate.
  /// UpdateRunStrategy changes can be made directly on the "strategy" field before launching the UpdateRun.
  final pulumi.Input<String>? updateStrategyId;

  /// Creates a new [UpdateRunArgs].
  /// [fleetName] The name of the Fleet resource.
  /// [managedClusterUpdate] The update to be applied to all clusters in the UpdateRun. The managedClusterUpdate can be modified until the run is started.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [strategy] The strategy defines the order in which the clusters will be updated.
  /// [updateRunName] The name of the UpdateRun resource.
  /// [updateStrategyId] The resource id of the FleetUpdateStrategy resource to reference.
  UpdateRunArgs({
    required this.fleetName,
    required this.managedClusterUpdate,
    required this.resourceGroupName,
    this.strategy,
    this.updateRunName,
    this.updateStrategyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fleetName': fleetName,
      'managedClusterUpdate':
          pulumi.Input.mapInputValue<
            ManagedClusterUpdate,
            Map<String, dynamic>
          >(managedClusterUpdate, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'strategy':
          ?pulumi.Input.mapOptionalInputValue<
            UpdateRunStrategy,
            Map<String, dynamic>
          >(strategy, (value) => value.toMap()),
      'updateRunName': ?updateRunName,
      'updateStrategyId': ?updateStrategyId,
    };
  }

  factory UpdateRunArgs.fromMap(Map<String, dynamic> map) {
    return UpdateRunArgs(
      fleetName: pulumi.Input.fromValue(map['fleetName'] as String),
      managedClusterUpdate: pulumi.Input.fromValue(
        ManagedClusterUpdate.fromMap(
          (map['managedClusterUpdate']! as Map).cast<String, dynamic>(),
        ),
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      strategy: (() {
        final guardedValue = map['strategy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          UpdateRunStrategy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      updateRunName: (() {
        final guardedValue = map['updateRunName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updateStrategyId: (() {
        final guardedValue = map['updateStrategyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
