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
    required pulumi.Output<String> clusterName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> roleName,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      roleName = pulumi.Input.asInput<String>(roleName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'resourceGroupName': resourceGroupName,
      'roleName': roleName,
    };
  }

  factory GetServerGroupRoleArgs.fromMap(Map<String, dynamic> map) {
    return GetServerGroupRoleArgs(
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      roleName: pulumi.Output.create<String>(map['roleName'] as String),
    );
  }
}

