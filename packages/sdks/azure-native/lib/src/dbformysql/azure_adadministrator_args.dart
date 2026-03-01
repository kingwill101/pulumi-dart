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
    pulumi.Output<String>? administratorName,
    pulumi.Output<String>? administratorType,
    pulumi.Output<String>? identityResourceId,
    pulumi.Output<String>? login,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serverName,
    pulumi.Output<String>? sid,
    pulumi.Output<String>? tenantId,
  }) :
      administratorName = pulumi.Input.asOptionalInput<String>(administratorName),
      administratorType = pulumi.Input.asOptionalInput<String>(administratorType),
      identityResourceId = pulumi.Input.asOptionalInput<String>(identityResourceId),
      login = pulumi.Input.asOptionalInput<String>(login),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName),
      sid = pulumi.Input.asOptionalInput<String>(sid),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

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
      administratorName: map['administratorName'] == null ? null : pulumi.Output.create<String>(map['administratorName'] as String),
      administratorType: map['administratorType'] == null ? null : pulumi.Output.create<String>(map['administratorType'] as String),
      identityResourceId: map['identityResourceId'] == null ? null : pulumi.Output.create<String>(map['identityResourceId'] as String),
      login: map['login'] == null ? null : pulumi.Output.create<String>(map['login'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
      sid: map['sid'] == null ? null : pulumi.Output.create<String>(map['sid'] as String),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

