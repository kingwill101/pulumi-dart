// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurearcdata_get_sql_server_database_args_doc}
/// Arguments for getSqlServerDatabase.
/// {@endtemplate}
/// {@macro pulumi_azurearcdata_get_sql_server_database_args_doc}
class GetSqlServerDatabaseArgs {
  /// Name of the database
  final pulumi.Input<String> databaseName;
  /// The name of the Azure resource group
  final pulumi.Input<String> resourceGroupName;
  /// Name of SQL Server Instance
  final pulumi.Input<String> sqlServerInstanceName;

  /// Creates a new [GetSqlServerDatabaseArgs].
  /// [databaseName] Name of the database
  /// [resourceGroupName] The name of the Azure resource group
  /// [sqlServerInstanceName] Name of SQL Server Instance
  GetSqlServerDatabaseArgs({
    required pulumi.Output<String> databaseName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> sqlServerInstanceName,
  }) :
      databaseName = pulumi.Input.asInput<String>(databaseName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sqlServerInstanceName = pulumi.Input.asInput<String>(sqlServerInstanceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'resourceGroupName': resourceGroupName,
      'sqlServerInstanceName': sqlServerInstanceName,
    };
  }

  factory GetSqlServerDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return GetSqlServerDatabaseArgs(
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sqlServerInstanceName: pulumi.Output.create<String>(map['sqlServerInstanceName'] as String),
    );
  }
}

