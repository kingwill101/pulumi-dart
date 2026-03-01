// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_server_azure_adonly_authentication_args_doc}
/// Arguments for getServerAzureADOnlyAuthentication.
/// {@endtemplate}
/// {@macro pulumi_sql_get_server_azure_adonly_authentication_args_doc}
class GetServerAzureADOnlyAuthenticationArgs {
  /// The name of server azure active directory only authentication.
  final pulumi.Input<String> authenticationName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [GetServerAzureADOnlyAuthenticationArgs].
  /// [authenticationName] The name of server azure active directory only authentication.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  GetServerAzureADOnlyAuthenticationArgs({
    required String authenticationName,
    required String resourceGroupName,
    required String serverName,
  }) :
      authenticationName = pulumi.Input.asInput<String>(authenticationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationName': authenticationName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory GetServerAzureADOnlyAuthenticationArgs.fromMap(Map<String, dynamic> map) {
    return GetServerAzureADOnlyAuthenticationArgs(
      authenticationName: map['authenticationName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serverName: map['serverName'] as String,
    );
  }
}

