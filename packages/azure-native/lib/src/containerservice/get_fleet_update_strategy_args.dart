// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerservice_get_fleet_update_strategy_args_doc}
/// Arguments for getFleetUpdateStrategy.
/// {@endtemplate}
/// {@macro pulumi_containerservice_get_fleet_update_strategy_args_doc}
class GetFleetUpdateStrategyArgs {
  /// The name of the Fleet resource.
  final pulumi.Input<String> fleetName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the UpdateStrategy resource.
  final pulumi.Input<String> updateStrategyName;

  /// Creates a new [GetFleetUpdateStrategyArgs].
  /// [fleetName] The name of the Fleet resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [updateStrategyName] The name of the UpdateStrategy resource.
  GetFleetUpdateStrategyArgs({
    required String fleetName,
    required String resourceGroupName,
    required String updateStrategyName,
  }) :
      fleetName = pulumi.Input.asInput<String>(fleetName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      updateStrategyName = pulumi.Input.asInput<String>(updateStrategyName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fleetName': fleetName,
      'resourceGroupName': resourceGroupName,
      'updateStrategyName': updateStrategyName,
    };
  }

  factory GetFleetUpdateStrategyArgs.fromMap(Map<String, dynamic> map) {
    return GetFleetUpdateStrategyArgs(
      fleetName: map['fleetName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      updateStrategyName: map['updateStrategyName'] as String,
    );
  }
}

