// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azuredata_get_sql_server_registration_args_doc}
/// Arguments for getSqlServerRegistration.
/// {@endtemplate}
/// {@macro pulumi_azuredata_get_sql_server_registration_args_doc}
class GetSqlServerRegistrationArgs {
  /// Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the SQL Server registration.
  final pulumi.Input<String> sqlServerRegistrationName;

  /// Creates a new [GetSqlServerRegistrationArgs].
  /// [resourceGroupName] Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [sqlServerRegistrationName] Name of the SQL Server registration.
  GetSqlServerRegistrationArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> sqlServerRegistrationName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sqlServerRegistrationName = pulumi.Input.asInput<String>(sqlServerRegistrationName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'sqlServerRegistrationName': sqlServerRegistrationName,
    };
  }

  factory GetSqlServerRegistrationArgs.fromMap(Map<String, dynamic> map) {
    return GetSqlServerRegistrationArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sqlServerRegistrationName: pulumi.Output.create<String>(map['sqlServerRegistrationName'] as String),
    );
  }
}

