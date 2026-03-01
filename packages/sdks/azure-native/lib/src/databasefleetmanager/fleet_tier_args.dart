// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_tier_properties.dart';

/// {@template pulumi_databasefleetmanager_fleet_tier_args_doc}
/// The set of arguments for FleetTier.
/// {@endtemplate}
/// {@macro pulumi_databasefleetmanager_fleet_tier_args_doc}
class FleetTierArgs {
  /// Name of the database fleet.
  final pulumi.Input<String> fleetName;
  /// A Fleet tier properties.
  final pulumi.Input<FleetTierProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the tier.
  final pulumi.Input<String>? tierName;

  /// Creates a new [FleetTierArgs].
  /// [fleetName] Name of the database fleet.
  /// [properties] A Fleet tier properties.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tierName] Name of the tier.
  FleetTierArgs({
    required pulumi.Output<String> fleetName,
    pulumi.Output<FleetTierProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? tierName,
  }) :
      fleetName = pulumi.Input.asInput<String>(fleetName),
      properties = pulumi.Input.asOptionalInput<FleetTierProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tierName = pulumi.Input.asOptionalInput<String>(tierName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fleetName': fleetName,
      'properties': ?pulumi.Input.mapOptionalInputValue<FleetTierProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tierName': ?tierName,
    };
  }

  factory FleetTierArgs.fromMap(Map<String, dynamic> map) {
    return FleetTierArgs(
      fleetName: pulumi.Output.create<String>(map['fleetName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<FleetTierProperties>(FleetTierProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tierName: map['tierName'] == null ? null : pulumi.Output.create<String>(map['tierName'] as String),
    );
  }
}

