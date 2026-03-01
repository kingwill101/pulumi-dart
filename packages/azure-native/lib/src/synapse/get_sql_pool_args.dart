// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_get_sql_pool_args_doc}
/// Arguments for getSqlPool.
/// {@endtemplate}
/// {@macro pulumi_synapse_get_sql_pool_args_doc}
class GetSqlPoolArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// SQL pool name
  final pulumi.Input<String> sqlPoolName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetSqlPoolArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sqlPoolName] SQL pool name
  /// [workspaceName] The name of the workspace.
  GetSqlPoolArgs({
    required String resourceGroupName,
    required String sqlPoolName,
    required String workspaceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sqlPoolName = pulumi.Input.asInput<String>(sqlPoolName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'sqlPoolName': sqlPoolName,
      'workspaceName': workspaceName,
    };
  }

  factory GetSqlPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetSqlPoolArgs(
      resourceGroupName: map['resourceGroupName'] as String,
      sqlPoolName: map['sqlPoolName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

