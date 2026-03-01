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
  final pulumi.Input<String>? password;
  final pulumi.Input<String> principalType;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the cluster role.
  final pulumi.Input<String>? roleName;
  final pulumi.Input<String>? roleType;
  /// A type definition that refers the id to an Azure Resource Manager resource.
  final pulumi.Input<String>? tenantId;

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
    required pulumi.Output<String> clusterName,
    required pulumi.Output<String> objectId,
    pulumi.Output<String>? password,
    required pulumi.Output<String> principalType,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? roleName,
    pulumi.Output<String>? roleType,
    pulumi.Output<String>? tenantId,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      objectId = pulumi.Input.asInput<String>(objectId),
      password = pulumi.Input.asOptionalInput<String>(password),
      principalType = pulumi.Input.asInput<String>(principalType),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      roleName = pulumi.Input.asOptionalInput<String>(roleName),
      roleType = pulumi.Input.asOptionalInput<String>(roleType),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

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
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      objectId: pulumi.Output.create<String>(map['objectId'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      principalType: pulumi.Output.create<String>(map['principalType'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      roleName: map['roleName'] == null ? null : pulumi.Output.create<String>(map['roleName'] as String),
      roleType: map['roleType'] == null ? null : pulumi.Output.create<String>(map['roleType'] as String),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

