// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_list_authorization_server_secrets_args_doc}
/// Arguments for listAuthorizationServerSecrets.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_list_authorization_server_secrets_args_doc}
class ListAuthorizationServerSecretsArgs {
  /// Identifier of the authorization server.
  final pulumi.Input<String> authsid;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [ListAuthorizationServerSecretsArgs].
  /// [authsid] Identifier of the authorization server.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  ListAuthorizationServerSecretsArgs({
    required String authsid,
    required String resourceGroupName,
    required String serviceName,
  }) :
      authsid = pulumi.Input.asInput<String>(authsid),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authsid': authsid,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory ListAuthorizationServerSecretsArgs.fromMap(Map<String, dynamic> map) {
    return ListAuthorizationServerSecretsArgs(
      authsid: map['authsid'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}

