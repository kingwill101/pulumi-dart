// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_authorization_access_policy_args_doc}
/// The set of arguments for AuthorizationAccessPolicy.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_authorization_access_policy_args_doc}
class AuthorizationAccessPolicyArgs {
  /// Identifier of the authorization access policy.
  final pulumi.Input<String>? authorizationAccessPolicyId;
  /// Identifier of the authorization.
  final pulumi.Input<String> authorizationId;
  /// Identifier of the authorization provider.
  final pulumi.Input<String> authorizationProviderId;
  /// The Object Id
  final pulumi.Input<String>? objectId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// The Tenant Id
  final pulumi.Input<String>? tenantId;

  /// Creates a new [AuthorizationAccessPolicyArgs].
  /// [authorizationAccessPolicyId] Identifier of the authorization access policy.
  /// [authorizationId] Identifier of the authorization.
  /// [authorizationProviderId] Identifier of the authorization provider.
  /// [objectId] The Object Id
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [tenantId] The Tenant Id
  AuthorizationAccessPolicyArgs({
    String? authorizationAccessPolicyId,
    required String authorizationId,
    required String authorizationProviderId,
    String? objectId,
    required String resourceGroupName,
    required String serviceName,
    String? tenantId,
  }) :
      authorizationAccessPolicyId = pulumi.Input.asOptionalInput<String>(authorizationAccessPolicyId),
      authorizationId = pulumi.Input.asInput<String>(authorizationId),
      authorizationProviderId = pulumi.Input.asInput<String>(authorizationProviderId),
      objectId = pulumi.Input.asOptionalInput<String>(objectId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationAccessPolicyId': ?authorizationAccessPolicyId,
      'authorizationId': authorizationId,
      'authorizationProviderId': authorizationProviderId,
      'objectId': ?objectId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'tenantId': ?tenantId,
    };
  }

  factory AuthorizationAccessPolicyArgs.fromMap(Map<String, dynamic> map) {
    return AuthorizationAccessPolicyArgs(
      authorizationAccessPolicyId: map['authorizationAccessPolicyId'] == null ? null : map['authorizationAccessPolicyId'] as String,
      authorizationId: map['authorizationId'] as String,
      authorizationProviderId: map['authorizationProviderId'] as String,
      objectId: map['objectId'] == null ? null : map['objectId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

