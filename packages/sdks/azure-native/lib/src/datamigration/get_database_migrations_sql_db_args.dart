// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datamigration_get_database_migrations_sql_db_args_doc}
/// Arguments for getDatabaseMigrationsSqlDb.
/// {@endtemplate}
/// {@macro pulumi_datamigration_get_database_migrations_sql_db_args_doc}
class GetDatabaseMigrationsSqlDbArgs {
  /// Complete migration details be included in the response.
  final pulumi.Input<String>? expand;

  /// Optional migration operation ID. If this is provided, then details of migration operation for that ID are retrieved. If not provided (default), then details related to most recent or current operation are retrieved.
  final pulumi.Input<String>? migrationOperationId;

  /// Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  final pulumi.Input<String> sqlDbInstanceName;

  /// The name of the target database.
  final pulumi.Input<String> targetDbName;

  /// Creates a new [GetDatabaseMigrationsSqlDbArgs].
  /// [expand] Complete migration details be included in the response.
  /// [migrationOperationId] Optional migration operation ID. If this is provided, then details of migration operation for that ID are retrieved. If not provided (default), then details related to most recent or current operation are retrieved.
  /// [resourceGroupName] Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [sqlDbInstanceName] Required.
  /// [targetDbName] The name of the target database.
  GetDatabaseMigrationsSqlDbArgs({
    this.expand,
    this.migrationOperationId,
    required this.resourceGroupName,
    required this.sqlDbInstanceName,
    required this.targetDbName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'migrationOperationId': ?migrationOperationId,
      'resourceGroupName': resourceGroupName,
      'sqlDbInstanceName': sqlDbInstanceName,
      'targetDbName': targetDbName,
    };
  }

  factory GetDatabaseMigrationsSqlDbArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseMigrationsSqlDbArgs(
      expand: (() {
        final guardedValue = map['expand'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      migrationOperationId: (() {
        final guardedValue = map['migrationOperationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      sqlDbInstanceName: pulumi.Input.fromValue(
        map['sqlDbInstanceName'] as String,
      ),
      targetDbName: pulumi.Input.fromValue(map['targetDbName'] as String),
    );
  }
}
