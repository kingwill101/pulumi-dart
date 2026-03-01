// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_offazure_get_sql_sites_controller_args_doc}
/// Arguments for getSqlSitesController.
/// {@endtemplate}
/// {@macro pulumi_offazure_get_sql_sites_controller_args_doc}
class GetSqlSitesControllerArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Site name
  final pulumi.Input<String> siteName;
  /// SQL site name.
  final pulumi.Input<String> sqlSiteName;

  /// Creates a new [GetSqlSitesControllerArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [siteName] Site name
  /// [sqlSiteName] SQL site name.
  GetSqlSitesControllerArgs({
    required String resourceGroupName,
    required String siteName,
    required String sqlSiteName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      siteName = pulumi.Input.asInput<String>(siteName),
      sqlSiteName = pulumi.Input.asInput<String>(sqlSiteName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'siteName': siteName,
      'sqlSiteName': sqlSiteName,
    };
  }

  factory GetSqlSitesControllerArgs.fromMap(Map<String, dynamic> map) {
    return GetSqlSitesControllerArgs(
      resourceGroupName: map['resourceGroupName'] as String,
      siteName: map['siteName'] as String,
      sqlSiteName: map['sqlSiteName'] as String,
    );
  }
}

