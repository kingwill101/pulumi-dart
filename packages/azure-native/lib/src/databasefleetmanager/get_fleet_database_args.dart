// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databasefleetmanager_get_fleet_database_args_doc}
/// Arguments for getFleetDatabase.
/// {@endtemplate}
/// {@macro pulumi_databasefleetmanager_get_fleet_database_args_doc}
class GetFleetDatabaseArgs {
  /// Name of the database.
  final pulumi.Input<String> databaseName;
  /// Name of the database fleet.
  final pulumi.Input<String> fleetName;
  /// Name of the fleetspace.
  final pulumi.Input<String> fleetspaceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFleetDatabaseArgs].
  /// [databaseName] Name of the database.
  /// [fleetName] Name of the database fleet.
  /// [fleetspaceName] Name of the fleetspace.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetFleetDatabaseArgs({
    required String databaseName,
    required String fleetName,
    required String fleetspaceName,
    required String resourceGroupName,
  }) :
      databaseName = pulumi.Input.asInput<String>(databaseName),
      fleetName = pulumi.Input.asInput<String>(fleetName),
      fleetspaceName = pulumi.Input.asInput<String>(fleetspaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'fleetName': fleetName,
      'fleetspaceName': fleetspaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFleetDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return GetFleetDatabaseArgs(
      databaseName: map['databaseName'] as String,
      fleetName: map['fleetName'] as String,
      fleetspaceName: map['fleetspaceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

