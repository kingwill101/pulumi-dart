// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurearcdata_get_sql_server_esu_license_args_doc}
/// Arguments for getSqlServerEsuLicense.
/// {@endtemplate}
/// {@macro pulumi_azurearcdata_get_sql_server_esu_license_args_doc}
class GetSqlServerEsuLicenseArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Name of SQL Server ESU License
  final pulumi.Input<String> sqlServerEsuLicenseName;

  /// Creates a new [GetSqlServerEsuLicenseArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sqlServerEsuLicenseName] Name of SQL Server ESU License
  GetSqlServerEsuLicenseArgs({
    required this.resourceGroupName,
    required this.sqlServerEsuLicenseName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'sqlServerEsuLicenseName': sqlServerEsuLicenseName,
    };
  }

  factory GetSqlServerEsuLicenseArgs.fromMap(Map<String, dynamic> map) {
    return GetSqlServerEsuLicenseArgs(
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      sqlServerEsuLicenseName: pulumi.Input.fromValue(
        map['sqlServerEsuLicenseName'] as String,
      ),
    );
  }
}
