// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_identity_provider_args_doc}
/// Arguments for getIdentityProvider.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_identity_provider_args_doc}
class GetIdentityProviderArgs {
  /// Identity Provider Type identifier.
  final pulumi.Input<String> identityProviderName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetIdentityProviderArgs].
  /// [identityProviderName] Identity Provider Type identifier.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  GetIdentityProviderArgs({
    required this.identityProviderName,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityProviderName': identityProviderName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetIdentityProviderArgs.fromMap(Map<String, dynamic> map) {
    return GetIdentityProviderArgs(
      identityProviderName: pulumi.Input.fromValue(map['identityProviderName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}

