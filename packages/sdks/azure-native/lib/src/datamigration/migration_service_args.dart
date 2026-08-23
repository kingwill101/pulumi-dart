// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datamigration_migration_service_args_doc}
/// The set of arguments for MigrationService.
/// {@endtemplate}
/// {@macro pulumi_datamigration_migration_service_args_doc}
class MigrationServiceArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of the Migration Service.
  final pulumi.Input<String>? migrationServiceName;
  /// Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [MigrationServiceArgs].
  /// [location] The geo-location where the resource lives
  /// [migrationServiceName] Name of the Migration Service.
  /// [resourceGroupName] Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [tags] Resource tags.
  const MigrationServiceArgs({
    this.location,
    this.migrationServiceName,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'migrationServiceName': ?migrationServiceName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory MigrationServiceArgs.fromMap(Map<String, dynamic> map) {
    return MigrationServiceArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      migrationServiceName: (() { final guardedValue = map['migrationServiceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
