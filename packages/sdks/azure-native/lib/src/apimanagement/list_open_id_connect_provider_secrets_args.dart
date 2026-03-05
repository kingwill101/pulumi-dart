// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_list_open_id_connect_provider_secrets_args_doc}
/// Arguments for listOpenIdConnectProviderSecrets.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_list_open_id_connect_provider_secrets_args_doc}
class ListOpenIdConnectProviderSecretsArgs {
  /// Identifier of the OpenID Connect Provider.
  final pulumi.Input<String> opid;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [ListOpenIdConnectProviderSecretsArgs].
  /// [opid] Identifier of the OpenID Connect Provider.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  ListOpenIdConnectProviderSecretsArgs({
    required this.opid,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'opid': opid,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory ListOpenIdConnectProviderSecretsArgs.fromMap(Map<String, dynamic> map) {
    return ListOpenIdConnectProviderSecretsArgs(
      opid: pulumi.Input.fromValue(map['opid'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}

