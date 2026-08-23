// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_database_properties.dart';

/// {@template pulumi_databasefleetmanager_fleet_database_args_doc}
/// The set of arguments for FleetDatabase.
/// {@endtemplate}
/// {@macro pulumi_databasefleetmanager_fleet_database_args_doc}
class FleetDatabaseArgs {
  /// Name of the database.
  final pulumi.Input<String>? databaseName;
  /// Name of the database fleet.
  final pulumi.Input<String> fleetName;
  /// Name of the fleetspace.
  final pulumi.Input<String> fleetspaceName;
  /// Fleet database properties.
  final pulumi.Input<FleetDatabaseProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [FleetDatabaseArgs].
  /// [databaseName] Name of the database.
  /// [fleetName] Name of the database fleet.
  /// [fleetspaceName] Name of the fleetspace.
  /// [properties] Fleet database properties.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const FleetDatabaseArgs({
    this.databaseName,
    required this.fleetName,
    required this.fleetspaceName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': ?databaseName,
      'fleetName': fleetName,
      'fleetspaceName': fleetspaceName,
      'properties': ?pulumi.Input.mapOptionalInputValue<FleetDatabaseProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory FleetDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return FleetDatabaseArgs(
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fleetName: pulumi.Input.fromValue(map['fleetName'] as String),
      fleetspaceName: pulumi.Input.fromValue(map['fleetspaceName'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FleetDatabaseProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
