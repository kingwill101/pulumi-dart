// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurearcdata_get_sql_server_instance_args_doc}
/// Arguments for getSqlServerInstance.
/// {@endtemplate}
/// {@macro pulumi_azurearcdata_get_sql_server_instance_args_doc}
class GetSqlServerInstanceArgs {
  /// The name of the Azure resource group
  final pulumi.Input<String> resourceGroupName;
  /// Name of SQL Server Instance
  final pulumi.Input<String> sqlServerInstanceName;

  /// Creates a new [GetSqlServerInstanceArgs].
  /// [resourceGroupName] The name of the Azure resource group
  /// [sqlServerInstanceName] Name of SQL Server Instance
  GetSqlServerInstanceArgs({
    required String resourceGroupName,
    required String sqlServerInstanceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sqlServerInstanceName = pulumi.Input.asInput<String>(sqlServerInstanceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'sqlServerInstanceName': sqlServerInstanceName,
    };
  }

  factory GetSqlServerInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetSqlServerInstanceArgs(
      resourceGroupName: map['resourceGroupName'] as String,
      sqlServerInstanceName: map['sqlServerInstanceName'] as String,
    );
  }
}

