// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datamigration_get_sql_migration_service_args_doc}
/// Arguments for getSqlMigrationService.
/// {@endtemplate}
/// {@macro pulumi_datamigration_get_sql_migration_service_args_doc}
class GetSqlMigrationServiceArgs {
  /// Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the SQL Migration Service.
  final pulumi.Input<String> sqlMigrationServiceName;

  /// Creates a new [GetSqlMigrationServiceArgs].
  /// [resourceGroupName] Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [sqlMigrationServiceName] Name of the SQL Migration Service.
  GetSqlMigrationServiceArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> sqlMigrationServiceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sqlMigrationServiceName = pulumi.Input.asInput<String>(sqlMigrationServiceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'sqlMigrationServiceName': sqlMigrationServiceName,
    };
  }

  factory GetSqlMigrationServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetSqlMigrationServiceArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sqlMigrationServiceName: pulumi.Output.create<String>(map['sqlMigrationServiceName'] as String),
    );
  }
}

