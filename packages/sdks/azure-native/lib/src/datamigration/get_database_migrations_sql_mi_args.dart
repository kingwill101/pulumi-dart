// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datamigration_get_database_migrations_sql_mi_args_doc}
/// Arguments for getDatabaseMigrationsSqlMi.
/// {@endtemplate}
/// {@macro pulumi_datamigration_get_database_migrations_sql_mi_args_doc}
class GetDatabaseMigrationsSqlMiArgs {
  /// Complete migration details be included in the response.
  final pulumi.Input<String>? expand;
  final pulumi.Input<String> managedInstanceName;

  /// Optional migration operation ID. If this is provided, then details of migration operation for that ID are retrieved. If not provided (default), then details related to most recent or current operation are retrieved.
  final pulumi.Input<String>? migrationOperationId;

  /// Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the target database.
  final pulumi.Input<String> targetDbName;

  /// Creates a new [GetDatabaseMigrationsSqlMiArgs].
  /// [expand] Complete migration details be included in the response.
  /// [managedInstanceName] Required.
  /// [migrationOperationId] Optional migration operation ID. If this is provided, then details of migration operation for that ID are retrieved. If not provided (default), then details related to most recent or current operation are retrieved.
  /// [resourceGroupName] Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [targetDbName] The name of the target database.
  GetDatabaseMigrationsSqlMiArgs({
    this.expand,
    required this.managedInstanceName,
    this.migrationOperationId,
    required this.resourceGroupName,
    required this.targetDbName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'managedInstanceName': managedInstanceName,
      'migrationOperationId': ?migrationOperationId,
      'resourceGroupName': resourceGroupName,
      'targetDbName': targetDbName,
    };
  }

  factory GetDatabaseMigrationsSqlMiArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseMigrationsSqlMiArgs(
      expand: (() {
        final guardedValue = map['expand'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      managedInstanceName: pulumi.Input.fromValue(
        map['managedInstanceName'] as String,
      ),
      migrationOperationId: (() {
        final guardedValue = map['migrationOperationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      targetDbName: pulumi.Input.fromValue(map['targetDbName'] as String),
    );
  }
}
