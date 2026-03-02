// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleetspace_properties.dart';

/// {@template pulumi_databasefleetmanager_fleetspace_args_doc}
/// The set of arguments for Fleetspace.
/// {@endtemplate}
/// {@macro pulumi_databasefleetmanager_fleetspace_args_doc}
class FleetspaceArgs {
  /// Name of the database fleet.
  final pulumi.Input<String> fleetName;
  /// Name of the fleetspace.
  final pulumi.Input<String>? fleetspaceName;
  /// A Fleetspace properties.
  final pulumi.Input<FleetspaceProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [FleetspaceArgs].
  /// [fleetName] Name of the database fleet.
  /// [fleetspaceName] Name of the fleetspace.
  /// [properties] A Fleetspace properties.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  FleetspaceArgs({
    required this.fleetName,
    this.fleetspaceName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fleetName': fleetName,
      'fleetspaceName': ?fleetspaceName,
      'properties': ?pulumi.Input.mapOptionalInputValue<FleetspaceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory FleetspaceArgs.fromMap(Map<String, dynamic> map) {
    return FleetspaceArgs(
      fleetName: (map['fleetName'] as String).input(),
      fleetspaceName: map['fleetspaceName'] == null ? null : (map['fleetspaceName'] as String).input(),
      properties: map['properties'] == null ? null : (FleetspaceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

