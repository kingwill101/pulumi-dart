// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datamigration_sql_migration_service_args_doc}
/// The set of arguments for SqlMigrationService.
/// {@endtemplate}
/// {@macro pulumi_datamigration_sql_migration_service_args_doc}
class SqlMigrationServiceArgs {
  final pulumi.Input<String>? location;
  /// Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the SQL Migration Service.
  final pulumi.Input<String>? sqlMigrationServiceName;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SqlMigrationServiceArgs].
  /// [location] Optional.
  /// [resourceGroupName] Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [sqlMigrationServiceName] Name of the SQL Migration Service.
  /// [tags] Optional.
  SqlMigrationServiceArgs({
    this.location,
    required this.resourceGroupName,
    this.sqlMigrationServiceName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sqlMigrationServiceName': ?sqlMigrationServiceName,
      'tags': ?tags,
    };
  }

  factory SqlMigrationServiceArgs.fromMap(Map<String, dynamic> map) {
    return SqlMigrationServiceArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sqlMigrationServiceName: (() { final guardedValue = map['sqlMigrationServiceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

