// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_authorization_args_doc}
/// Arguments for getAuthorization.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_authorization_args_doc}
class GetAuthorizationArgs {
  /// Identifier of the authorization.
  final pulumi.Input<String> authorizationId;

  /// Identifier of the authorization provider.
  final pulumi.Input<String> authorizationProviderId;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetAuthorizationArgs].
  /// [authorizationId] Identifier of the authorization.
  /// [authorizationProviderId] Identifier of the authorization provider.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  GetAuthorizationArgs({
    required this.authorizationId,
    required this.authorizationProviderId,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationId': authorizationId,
      'authorizationProviderId': authorizationProviderId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetAuthorizationArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthorizationArgs(
      authorizationId: pulumi.Input.fromValue(map['authorizationId'] as String),
      authorizationProviderId: pulumi.Input.fromValue(
        map['authorizationProviderId'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
