// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datamigration_list_sql_migration_service_auth_keys_args_doc}
/// Arguments for listSqlMigrationServiceAuthKeys.
/// {@endtemplate}
/// {@macro pulumi_datamigration_list_sql_migration_service_auth_keys_args_doc}
class ListSqlMigrationServiceAuthKeysArgs {
  /// Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the SQL Migration Service.
  final pulumi.Input<String> sqlMigrationServiceName;

  /// Creates a new [ListSqlMigrationServiceAuthKeysArgs].
  /// [resourceGroupName] Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [sqlMigrationServiceName] Name of the SQL Migration Service.
  const ListSqlMigrationServiceAuthKeysArgs({
    required this.resourceGroupName,
    required this.sqlMigrationServiceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'sqlMigrationServiceName': sqlMigrationServiceName,
    };
  }

  factory ListSqlMigrationServiceAuthKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListSqlMigrationServiceAuthKeysArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sqlMigrationServiceName: pulumi.Input.fromValue(map['sqlMigrationServiceName'] as String),
    );
  }
}

