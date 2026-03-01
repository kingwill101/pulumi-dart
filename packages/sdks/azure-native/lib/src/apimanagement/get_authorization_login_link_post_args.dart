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
    required pulumi.Output<String> authorizationId,
    required pulumi.Output<String> authorizationProviderId,
    pulumi.Output<String>? postLoginRedirectUrl,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      authorizationId = pulumi.Input.asInput<String>(authorizationId),
      authorizationProviderId = pulumi.Input.asInput<String>(authorizationProviderId),
      postLoginRedirectUrl = pulumi.Input.asOptionalInput<String>(postLoginRedirectUrl),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

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
      authorizationId: pulumi.Output.create<String>(map['authorizationId'] as String),
      authorizationProviderId: pulumi.Output.create<String>(map['authorizationProviderId'] as String),
      postLoginRedirectUrl: map['postLoginRedirectUrl'] == null ? null : pulumi.Output.create<String>(map['postLoginRedirectUrl'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

