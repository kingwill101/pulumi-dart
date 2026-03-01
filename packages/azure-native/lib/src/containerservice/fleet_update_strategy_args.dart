// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'update_run_strategy.dart';

/// {@template pulumi_containerservice_fleet_update_strategy_args_doc}
/// The set of arguments for FleetUpdateStrategy.
/// {@endtemplate}
/// {@macro pulumi_containerservice_fleet_update_strategy_args_doc}
class FleetUpdateStrategyArgs {
  /// The name of the Fleet resource.
  final pulumi.Input<String> fleetName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Defines the update sequence of the clusters.
  final pulumi.Input<UpdateRunStrategy> strategy;
  /// The name of the UpdateStrategy resource.
  final pulumi.Input<String>? updateStrategyName;

  /// Creates a new [FleetUpdateStrategyArgs].
  /// [fleetName] The name of the Fleet resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [strategy] Defines the update sequence of the clusters.
  /// [updateStrategyName] The name of the UpdateStrategy resource.
  FleetUpdateStrategyArgs({
    required String fleetName,
    required String resourceGroupName,
    required UpdateRunStrategy strategy,
    String? updateStrategyName,
  }) :
      fleetName = pulumi.Input.asInput<String>(fleetName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      strategy = pulumi.Input.asInput<UpdateRunStrategy>(strategy),
      updateStrategyName = pulumi.Input.asOptionalInput<String>(updateStrategyName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fleetName': fleetName,
      'resourceGroupName': resourceGroupName,
      'strategy': pulumi.Input.mapInputValue<UpdateRunStrategy, Map<String, dynamic>>(strategy, (value) => value.toMap()),
      'updateStrategyName': ?updateStrategyName,
    };
  }

  factory FleetUpdateStrategyArgs.fromMap(Map<String, dynamic> map) {
    return FleetUpdateStrategyArgs(
      fleetName: map['fleetName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      strategy: UpdateRunStrategy.fromMap((map['strategy'] as Map).cast<String, dynamic>()),
      updateStrategyName: map['updateStrategyName'] == null ? null : map['updateStrategyName'] as String,
    );
  }
}

