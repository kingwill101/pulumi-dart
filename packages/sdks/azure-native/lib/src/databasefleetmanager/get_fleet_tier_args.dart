// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databasefleetmanager_get_fleet_tier_args_doc}
/// Arguments for getFleetTier.
/// {@endtemplate}
/// {@macro pulumi_databasefleetmanager_get_fleet_tier_args_doc}
class GetFleetTierArgs {
  /// Name of the database fleet.
  final pulumi.Input<String> fleetName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the tier.
  final pulumi.Input<String> tierName;

  /// Creates a new [GetFleetTierArgs].
  /// [fleetName] Name of the database fleet.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tierName] Name of the tier.
  const GetFleetTierArgs({
    required this.fleetName,
    required this.resourceGroupName,
    required this.tierName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fleetName': fleetName,
      'resourceGroupName': resourceGroupName,
      'tierName': tierName,
    };
  }

  factory GetFleetTierArgs.fromMap(Map<String, dynamic> map) {
    return GetFleetTierArgs(
      fleetName: pulumi.Input.fromValue(map['fleetName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tierName: pulumi.Input.fromValue(map['tierName'] as String),
    );
  }
}

