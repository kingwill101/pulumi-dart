// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurearcdata_get_sql_server_license_args_doc}
/// Arguments for getSqlServerLicense.
/// {@endtemplate}
/// {@macro pulumi_azurearcdata_get_sql_server_license_args_doc}
class GetSqlServerLicenseArgs {
  /// The name of the Azure resource group
  final pulumi.Input<String> resourceGroupName;
  /// Name of SQL Server License
  final pulumi.Input<String> sqlServerLicenseName;

  /// Creates a new [GetSqlServerLicenseArgs].
  /// [resourceGroupName] The name of the Azure resource group
  /// [sqlServerLicenseName] Name of SQL Server License
  GetSqlServerLicenseArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> sqlServerLicenseName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sqlServerLicenseName = pulumi.Input.asInput<String>(sqlServerLicenseName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'sqlServerLicenseName': sqlServerLicenseName,
    };
  }

  factory GetSqlServerLicenseArgs.fromMap(Map<String, dynamic> map) {
    return GetSqlServerLicenseArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sqlServerLicenseName: pulumi.Output.create<String>(map['sqlServerLicenseName'] as String),
    );
  }
}

