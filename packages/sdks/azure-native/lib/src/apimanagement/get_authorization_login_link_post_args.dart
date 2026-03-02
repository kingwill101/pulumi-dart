// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_authorization_login_link_post_args_doc}
/// Arguments for getAuthorizationLoginLinkPost.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_authorization_login_link_post_args_doc}
class GetAuthorizationLoginLinkPostArgs {
  /// Identifier of the authorization.
  final pulumi.Input<String> authorizationId;
  /// Identifier of the authorization provider.
  final pulumi.Input<String> authorizationProviderId;
  /// The redirect URL after login has completed.
  final pulumi.Input<String>? postLoginRedirectUrl;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetAuthorizationLoginLinkPostArgs].
  /// [authorizationId] Identifier of the authorization.
  /// [authorizationProviderId] Identifier of the authorization provider.
  /// [postLoginRedirectUrl] The redirect URL after login has completed.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  GetAuthorizationLoginLinkPostArgs({
    required this.authorizationId,
    required this.authorizationProviderId,
    this.postLoginRedirectUrl,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationId': authorizationId,
      'authorizationProviderId': authorizationProviderId,
      'postLoginRedirectUrl': ?postLoginRedirectUrl,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetAuthorizationLoginLinkPostArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthorizationLoginLinkPostArgs(
      authorizationId: (map['authorizationId'] as String).input(),
      authorizationProviderId: (map['authorizationProviderId'] as String).input(),
      postLoginRedirectUrl: map['postLoginRedirectUrl'] == null ? null : (map['postLoginRedirectUrl']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
    );
  }
}

