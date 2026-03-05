// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dbforpostgresql_get_server_group_role_args_doc}
/// Arguments for getServerGroupRole.
/// {@endtemplate}
/// {@macro pulumi_dbforpostgresql_get_server_group_role_args_doc}
class GetServerGroupRoleArgs {
  /// The name of the cluster.
  final pulumi.Input<String> clusterName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the cluster role.
  final pulumi.Input<String> roleName;

  /// Creates a new [GetServerGroupRoleArgs].
  /// [clusterName] The name of the cluster.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [roleName] The name of the cluster role.
  GetServerGroupRoleArgs({
    required this.clusterName,
    required this.resourceGroupName,
    required this.roleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'resourceGroupName': resourceGroupName,
      'roleName': roleName,
    };
  }

  factory GetServerGroupRoleArgs.fromMap(Map<String, dynamic> map) {
    return GetServerGroupRoleArgs(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      roleName: pulumi.Input.fromValue(map['roleName'] as String),
    );
  }
}

