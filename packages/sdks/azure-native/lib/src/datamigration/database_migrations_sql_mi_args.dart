// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_migration_properties_sql_mi.dart';

/// {@template pulumi_datamigration_database_migrations_sql_mi_args_doc}
/// The set of arguments for DatabaseMigrationsSqlMi.
/// {@endtemplate}
/// {@macro pulumi_datamigration_database_migrations_sql_mi_args_doc}
class DatabaseMigrationsSqlMiArgs {
  final pulumi.Input<String> managedInstanceName;

  /// Database Migration Resource properties for SQL Managed Instance.
  final pulumi.Input<DatabaseMigrationPropertiesSqlMi>? properties;

  /// Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the target database.
  final pulumi.Input<String>? targetDbName;

  /// Creates a new [DatabaseMigrationsSqlMiArgs].
  /// [managedInstanceName] Required.
  /// [properties] Database Migration Resource properties for SQL Managed Instance.
  /// [resourceGroupName] Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [targetDbName] The name of the target database.
  DatabaseMigrationsSqlMiArgs({
    required this.managedInstanceName,
    this.properties,
    required this.resourceGroupName,
    this.targetDbName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedInstanceName': managedInstanceName,
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            DatabaseMigrationPropertiesSqlMi,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'targetDbName': ?targetDbName,
    };
  }

  factory DatabaseMigrationsSqlMiArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseMigrationsSqlMiArgs(
      managedInstanceName: pulumi.Input.fromValue(
        map['managedInstanceName'] as String,
      ),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DatabaseMigrationPropertiesSqlMi.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      targetDbName: (() {
        final guardedValue = map['targetDbName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
