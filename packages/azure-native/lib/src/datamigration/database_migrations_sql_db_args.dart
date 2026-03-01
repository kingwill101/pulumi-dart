// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_migration_properties_sql_db.dart';

/// {@template pulumi_datamigration_database_migrations_sql_db_args_doc}
/// The set of arguments for DatabaseMigrationsSqlDb.
/// {@endtemplate}
/// {@macro pulumi_datamigration_database_migrations_sql_db_args_doc}
class DatabaseMigrationsSqlDbArgs {
  /// Database Migration Resource properties for SQL database.
  final pulumi.Input<DatabaseMigrationPropertiesSqlDb>? properties;
  /// Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  final pulumi.Input<String> sqlDbInstanceName;
  /// The name of the target database.
  final pulumi.Input<String>? targetDbName;

  /// Creates a new [DatabaseMigrationsSqlDbArgs].
  /// [properties] Database Migration Resource properties for SQL database.
  /// [resourceGroupName] Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [sqlDbInstanceName] Required.
  /// [targetDbName] The name of the target database.
  DatabaseMigrationsSqlDbArgs({
    DatabaseMigrationPropertiesSqlDb? properties,
    required String resourceGroupName,
    required String sqlDbInstanceName,
    String? targetDbName,
  }) :
      properties = pulumi.Input.asOptionalInput<DatabaseMigrationPropertiesSqlDb>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sqlDbInstanceName = pulumi.Input.asInput<String>(sqlDbInstanceName),
      targetDbName = pulumi.Input.asOptionalInput<String>(targetDbName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<DatabaseMigrationPropertiesSqlDb, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sqlDbInstanceName': sqlDbInstanceName,
      'targetDbName': ?targetDbName,
    };
  }

  factory DatabaseMigrationsSqlDbArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseMigrationsSqlDbArgs(
      properties: map['properties'] == null ? null : DatabaseMigrationPropertiesSqlDb.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      sqlDbInstanceName: map['sqlDbInstanceName'] as String,
      targetDbName: map['targetDbName'] == null ? null : map['targetDbName'] as String,
    );
  }
}

