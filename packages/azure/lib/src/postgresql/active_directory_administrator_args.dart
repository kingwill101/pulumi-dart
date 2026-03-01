// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_postgresql_active_directory_administrator_active_directory_administrator_args_doc}
/// The set of arguments for ActiveDirectoryAdministrator.
/// {@endtemplate}
/// {@macro pulumi_postgresql_active_directory_administrator_active_directory_administrator_args_doc}
class ActiveDirectoryAdministratorArgs {
  /// The login name of the principal to set as the server administrator
  final pulumi.Input<String> login;
  /// The ID of the principal to set as the server administrator. For a managed identity this should be the Client ID of the identity.
  final pulumi.Input<String> objectId;
  /// The name of the resource group for the PostgreSQL server. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the PostgreSQL Server on which to set the administrator. Changing this forces a new resource to be created.
  final pulumi.Input<String> serverName;
  /// The Azure Tenant ID
  final pulumi.Input<String> tenantId;

  /// Creates a new [ActiveDirectoryAdministratorArgs].
  /// [login] The login name of the principal to set as the server administrator
  /// [objectId] The ID of the principal to set as the server administrator. For a managed identity this should be the Client ID of the identity.
  /// [resourceGroupName] The name of the resource group for the PostgreSQL server. Changing this forces a new resource to be created.
  /// [serverName] The name of the PostgreSQL Server on which to set the administrator. Changing this forces a new resource to be created.
  /// [tenantId] The Azure Tenant ID
  ActiveDirectoryAdministratorArgs({
    required String login,
    required String objectId,
    required String resourceGroupName,
    required String serverName,
    required String tenantId,
  }) :
      login = pulumi.Input.asInput<String>(login),
      objectId = pulumi.Input.asInput<String>(objectId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName),
      tenantId = pulumi.Input.asInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'login': login,
      'objectId': objectId,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'tenantId': tenantId,
    };
  }

  factory ActiveDirectoryAdministratorArgs.fromMap(Map<String, dynamic> map) {
    return ActiveDirectoryAdministratorArgs(
      login: map['login'] as String,
      objectId: map['objectId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serverName: map['serverName'] as String,
      tenantId: map['tenantId'] as String,
    );
  }
}

