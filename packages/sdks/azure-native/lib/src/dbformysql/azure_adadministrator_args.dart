// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dbformysql_azure_adadministrator_args_doc}
/// The set of arguments for AzureADAdministrator.
/// {@endtemplate}
/// {@macro pulumi_dbformysql_azure_adadministrator_args_doc}
class AzureADAdministratorArgs {
  /// The name of the Azure AD Administrator.
  final pulumi.Input<String>? administratorName;
  /// Type of the sever administrator.
  final pulumi.Input<String>? administratorType;
  /// The resource id of the identity used for AAD Authentication.
  final pulumi.Input<String>? identityResourceId;
  /// Login name of the server administrator.
  final pulumi.Input<String>? login;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// SID (object ID) of the server administrator.
  final pulumi.Input<String>? sid;
  /// Tenant ID of the administrator.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [AzureADAdministratorArgs].
  /// [administratorName] The name of the Azure AD Administrator.
  /// [administratorType] Type of the sever administrator.
  /// [identityResourceId] The resource id of the identity used for AAD Authentication.
  /// [login] Login name of the server administrator.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverName] The name of the server.
  /// [sid] SID (object ID) of the server administrator.
  /// [tenantId] Tenant ID of the administrator.
  AzureADAdministratorArgs({
    this.administratorName,
    this.administratorType,
    this.identityResourceId,
    this.login,
    required this.resourceGroupName,
    required this.serverName,
    this.sid,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorName': ?administratorName,
      'administratorType': ?administratorType,
      'identityResourceId': ?identityResourceId,
      'login': ?login,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'sid': ?sid,
      'tenantId': ?tenantId,
    };
  }

  factory AzureADAdministratorArgs.fromMap(Map<String, dynamic> map) {
    return AzureADAdministratorArgs(
      administratorName: map['administratorName'] == null ? null : (map['administratorName'] as String).input(),
      administratorType: map['administratorType'] == null ? null : (map['administratorType'] as String).input(),
      identityResourceId: map['identityResourceId'] == null ? null : (map['identityResourceId'] as String).input(),
      login: map['login'] == null ? null : (map['login'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serverName: (map['serverName'] as String).input(),
      sid: map['sid'] == null ? null : (map['sid'] as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId'] as String).input(),
    );
  }
}

