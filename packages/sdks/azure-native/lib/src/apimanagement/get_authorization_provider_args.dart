// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_authorization_provider_args_doc}
/// Arguments for getAuthorizationProvider.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_authorization_provider_args_doc}
class GetAuthorizationProviderArgs {
  /// Identifier of the authorization provider.
  final pulumi.Input<String> authorizationProviderId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetAuthorizationProviderArgs].
  /// [authorizationProviderId] Identifier of the authorization provider.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  GetAuthorizationProviderArgs({
    required pulumi.Output<String> authorizationProviderId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      authorizationProviderId = pulumi.Input.asInput<String>(authorizationProviderId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationProviderId': authorizationProviderId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetAuthorizationProviderArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthorizationProviderArgs(
      authorizationProviderId: pulumi.Output.create<String>(map['authorizationProviderId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

