// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azuredata_get_sql_server_args_doc}
/// Arguments for getSqlServer.
/// {@endtemplate}
/// {@macro pulumi_azuredata_get_sql_server_args_doc}
class GetSqlServerArgs {
  /// The child resources to include in the response.
  final pulumi.Input<String?>? expand;
  /// Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the SQL Server.
  final pulumi.Input<String> sqlServerName;
  /// Name of the SQL Server registration.
  final pulumi.Input<String> sqlServerRegistrationName;

  /// Creates a new [GetSqlServerArgs].
  /// [expand] The child resources to include in the response.
  /// [resourceGroupName] Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [sqlServerName] Name of the SQL Server.
  /// [sqlServerRegistrationName] Name of the SQL Server registration.
  const GetSqlServerArgs({
    this.expand,
    required this.resourceGroupName,
    required this.sqlServerName,
    required this.sqlServerRegistrationName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'resourceGroupName': resourceGroupName,
      'sqlServerName': sqlServerName,
      'sqlServerRegistrationName': sqlServerRegistrationName,
    };
  }

  factory GetSqlServerArgs.fromMap(Map<String, dynamic> map) {
    return GetSqlServerArgs(
      expand: (() { final guardedValue = map['expand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sqlServerName: pulumi.Input.fromValue(map['sqlServerName'] as String),
      sqlServerRegistrationName: pulumi.Input.fromValue(map['sqlServerRegistrationName'] as String),
    );
  }
}
