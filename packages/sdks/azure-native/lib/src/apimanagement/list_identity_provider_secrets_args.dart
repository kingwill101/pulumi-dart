// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_list_identity_provider_secrets_args_doc}
/// Arguments for listIdentityProviderSecrets.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_list_identity_provider_secrets_args_doc}
class ListIdentityProviderSecretsArgs {
  /// Identity Provider Type identifier.
  final pulumi.Input<String> identityProviderName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [ListIdentityProviderSecretsArgs].
  /// [identityProviderName] Identity Provider Type identifier.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  ListIdentityProviderSecretsArgs({
    required pulumi.Output<String> identityProviderName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      identityProviderName = pulumi.Input.asInput<String>(identityProviderName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityProviderName': identityProviderName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory ListIdentityProviderSecretsArgs.fromMap(Map<String, dynamic> map) {
    return ListIdentityProviderSecretsArgs(
      identityProviderName: pulumi.Output.create<String>(map['identityProviderName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

