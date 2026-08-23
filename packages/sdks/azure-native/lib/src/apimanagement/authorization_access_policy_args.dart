// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_authorization_access_policy_args_doc}
/// The set of arguments for AuthorizationAccessPolicy.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_authorization_access_policy_args_doc}
class AuthorizationAccessPolicyArgs {
  /// The allowed Azure Active Directory Application IDs
  final pulumi.Input<List<String>>? appIds;
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
  /// [appIds] The allowed Azure Active Directory Application IDs
  /// [authorizationAccessPolicyId] Identifier of the authorization access policy.
  /// [authorizationId] Identifier of the authorization.
  /// [authorizationProviderId] Identifier of the authorization provider.
  /// [objectId] The Object Id
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [tenantId] The Tenant Id
  const AuthorizationAccessPolicyArgs({
    this.appIds,
    this.authorizationAccessPolicyId,
    required this.authorizationId,
    required this.authorizationProviderId,
    this.objectId,
    required this.resourceGroupName,
    required this.serviceName,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appIds': ?appIds,
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
      appIds: (() { final guardedValue = map['appIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      authorizationAccessPolicyId: (() { final guardedValue = map['authorizationAccessPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authorizationId: pulumi.Input.fromValue(map['authorizationId'] as String),
      authorizationProviderId: pulumi.Input.fromValue(map['authorizationProviderId'] as String),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
