// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dbforpostgresql_get_migration_args_doc}
/// Arguments for getMigration.
/// {@endtemplate}
/// {@macro pulumi_dbforpostgresql_get_migration_args_doc}
class GetMigrationArgs {
  /// Name of migration.
  final pulumi.Input<String> migrationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [GetMigrationArgs].
  /// [migrationName] Name of migration.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverName] The name of the server.
  const GetMigrationArgs({
    required this.migrationName,
    required this.resourceGroupName,
    required this.serverName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'migrationName': migrationName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory GetMigrationArgs.fromMap(Map<String, dynamic> map) {
    return GetMigrationArgs(
      migrationName: pulumi.Input.fromValue(map['migrationName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
    );
  }
}

