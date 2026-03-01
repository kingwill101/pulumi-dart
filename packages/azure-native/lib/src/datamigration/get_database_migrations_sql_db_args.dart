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
    String? expand,
    String? migrationOperationId,
    required String resourceGroupName,
    required String sqlDbInstanceName,
    required String targetDbName,
  }) :
      expand = pulumi.Input.asOptionalInput<String>(expand),
      migrationOperationId = pulumi.Input.asOptionalInput<String>(migrationOperationId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sqlDbInstanceName = pulumi.Input.asInput<String>(sqlDbInstanceName),
      targetDbName = pulumi.Input.asInput<String>(targetDbName);

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
      expand: map['expand'] == null ? null : map['expand'] as String,
      migrationOperationId: map['migrationOperationId'] == null ? null : map['migrationOperationId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sqlDbInstanceName: map['sqlDbInstanceName'] as String,
      targetDbName: map['targetDbName'] as String,
    );
  }
}

