// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_migration_properties_sql_vm.dart';

/// {@template pulumi_datamigration_database_migrations_sql_vm_args_doc}
/// The set of arguments for DatabaseMigrationsSqlVm.
/// {@endtemplate}
/// {@macro pulumi_datamigration_database_migrations_sql_vm_args_doc}
class DatabaseMigrationsSqlVmArgs {
  /// Database Migration Resource properties for SQL Virtual Machine.
  final pulumi.Input<DatabaseMigrationPropertiesSqlVm>? properties;
  /// Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  final pulumi.Input<String> sqlVirtualMachineName;
  /// The name of the target database.
  final pulumi.Input<String>? targetDbName;

  /// Creates a new [DatabaseMigrationsSqlVmArgs].
  /// [properties] Database Migration Resource properties for SQL Virtual Machine.
  /// [resourceGroupName] Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [sqlVirtualMachineName] Required.
  /// [targetDbName] The name of the target database.
  DatabaseMigrationsSqlVmArgs({
    this.properties,
    required this.resourceGroupName,
    required this.sqlVirtualMachineName,
    this.targetDbName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<DatabaseMigrationPropertiesSqlVm, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sqlVirtualMachineName': sqlVirtualMachineName,
      'targetDbName': ?targetDbName,
    };
  }

  factory DatabaseMigrationsSqlVmArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseMigrationsSqlVmArgs(
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabaseMigrationPropertiesSqlVm.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sqlVirtualMachineName: pulumi.Input.fromValue(map['sqlVirtualMachineName'] as String),
      targetDbName: (() { final guardedValue = map['targetDbName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

