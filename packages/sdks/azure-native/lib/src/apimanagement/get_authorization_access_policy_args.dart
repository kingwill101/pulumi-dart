// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_authorization_access_policy_args_doc}
/// Arguments for getAuthorizationAccessPolicy.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_authorization_access_policy_args_doc}
class GetAuthorizationAccessPolicyArgs {
  /// Identifier of the authorization access policy.
  final pulumi.Input<String> authorizationAccessPolicyId;
  /// Identifier of the authorization.
  final pulumi.Input<String> authorizationId;
  /// Identifier of the authorization provider.
  final pulumi.Input<String> authorizationProviderId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetAuthorizationAccessPolicyArgs].
  /// [authorizationAccessPolicyId] Identifier of the authorization access policy.
  /// [authorizationId] Identifier of the authorization.
  /// [authorizationProviderId] Identifier of the authorization provider.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  GetAuthorizationAccessPolicyArgs({
    required this.authorizationAccessPolicyId,
    required this.authorizationId,
    required this.authorizationProviderId,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationAccessPolicyId': authorizationAccessPolicyId,
      'authorizationId': authorizationId,
      'authorizationProviderId': authorizationProviderId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetAuthorizationAccessPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthorizationAccessPolicyArgs(
      authorizationAccessPolicyId: pulumi.Input.fromValue(map['authorizationAccessPolicyId'] as String),
      authorizationId: pulumi.Input.fromValue(map['authorizationId'] as String),
      authorizationProviderId: pulumi.Input.fromValue(map['authorizationProviderId'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}

