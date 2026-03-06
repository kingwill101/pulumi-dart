// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurefleet_get_fleet_args_doc}
/// Arguments for getFleet.
/// {@endtemplate}
/// {@macro pulumi_azurefleet_get_fleet_args_doc}
class GetFleetArgs {
  /// The name of the Compute Fleet
  final pulumi.Input<String> fleetName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFleetArgs].
  /// [fleetName] The name of the Compute Fleet
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetFleetArgs({
    required this.fleetName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fleetName': fleetName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFleetArgs.fromMap(Map<String, dynamic> map) {
    return GetFleetArgs(
      fleetName: pulumi.Input.fromValue(map['fleetName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

