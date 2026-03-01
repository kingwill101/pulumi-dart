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
    String? expand,
    required String managedInstanceName,
    String? migrationOperationId,
    required String resourceGroupName,
    required String targetDbName,
  }) :
      expand = pulumi.Input.asOptionalInput<String>(expand),
      managedInstanceName = pulumi.Input.asInput<String>(managedInstanceName),
      migrationOperationId = pulumi.Input.asOptionalInput<String>(migrationOperationId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      targetDbName = pulumi.Input.asInput<String>(targetDbName);

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
      expand: map['expand'] == null ? null : map['expand'] as String,
      managedInstanceName: map['managedInstanceName'] as String,
      migrationOperationId: map['migrationOperationId'] == null ? null : map['migrationOperationId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      targetDbName: map['targetDbName'] as String,
    );
  }
}

