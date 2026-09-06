// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dbforpostgresql_server_group_role_args_doc}
/// The set of arguments for ServerGroupRole.
/// {@endtemplate}
/// {@macro pulumi_dbforpostgresql_server_group_role_args_doc}
class ServerGroupRoleArgs {
  /// The name of the cluster.
  final pulumi.Input<String> clusterName;
  /// A type definition that refers the id to an Azure Resource Manager resource.
  final pulumi.Input<String> objectId;
  /// The password of the cluster role. If an identity is used, password will not be required.
  final pulumi.Input<String?>? password;
  final pulumi.Input<dynamic> principalType;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the cluster role.
  final pulumi.Input<String?>? roleName;
  final pulumi.Input<dynamic>? roleType;
  /// A type definition that refers the id to an Azure Resource Manager resource.
  final pulumi.Input<String?>? tenantId;

  /// Creates a new [ServerGroupRoleArgs].
  /// [clusterName] The name of the cluster.
  /// [objectId] A type definition that refers the id to an Azure Resource Manager resource.
  /// [password] The password of the cluster role. If an identity is used, password will not be required.
  /// [principalType] Required.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [roleName] The name of the cluster role.
  /// [roleType] Optional.
  /// [tenantId] A type definition that refers the id to an Azure Resource Manager resource.
  ServerGroupRoleArgs({
    required this.clusterName,
    required this.objectId,
    this.password,
    required this.principalType,
    required this.resourceGroupName,
    this.roleName,
    pulumi.Input<dynamic>? roleType,
    this.tenantId,
  }) : roleType = roleType ?? pulumi.Input.fromValue('user');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'objectId': objectId,
      'password': ?password,
      'principalType': principalType,
      'resourceGroupName': resourceGroupName,
      'roleName': ?roleName,
      'roleType': ?roleType,
      'tenantId': ?tenantId,
    };
  }

  factory ServerGroupRoleArgs.fromMap(Map<String, dynamic> map) {
    return ServerGroupRoleArgs(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      objectId: pulumi.Input.fromValue(map['objectId'] as String),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalType: pulumi.Input.fromValue(map['principalType']),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      roleName: (() { final guardedValue = map['roleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleType: (() { final guardedValue = map['roleType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
