// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dbforpostgresql_single_server_server_administrator_args_doc}
/// The set of arguments for SingleServerServerAdministrator.
/// {@endtemplate}
/// {@macro pulumi_dbforpostgresql_single_server_server_administrator_args_doc}
class SingleServerServerAdministratorArgs {
  /// The type of administrator.
  final pulumi.Input<String> administratorType;
  /// The server administrator login account name.
  final pulumi.Input<String> login;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// The server administrator Sid (Secure ID).
  final pulumi.Input<String> sid;
  /// The server Active Directory Administrator tenant id.
  final pulumi.Input<String> tenantId;

  /// Creates a new [SingleServerServerAdministratorArgs].
  /// [administratorType] The type of administrator.
  /// [login] The server administrator login account name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverName] The name of the server.
  /// [sid] The server administrator Sid (Secure ID).
  /// [tenantId] The server Active Directory Administrator tenant id.
  const SingleServerServerAdministratorArgs({
    required this.administratorType,
    required this.login,
    required this.resourceGroupName,
    required this.serverName,
    required this.sid,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorType': administratorType,
      'login': login,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'sid': sid,
      'tenantId': tenantId,
    };
  }

  factory SingleServerServerAdministratorArgs.fromMap(Map<String, dynamic> map) {
    return SingleServerServerAdministratorArgs(
      administratorType: pulumi.Input.fromValue(map['administratorType'] as String),
      login: pulumi.Input.fromValue(map['login'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
      sid: pulumi.Input.fromValue(map['sid'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
    );
  }
}
