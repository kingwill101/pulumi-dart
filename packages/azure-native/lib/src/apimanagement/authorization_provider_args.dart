// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_provider_oauth2_settings.dart';

/// {@template pulumi_apimanagement_authorization_provider_args_doc}
/// The set of arguments for AuthorizationProvider.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_authorization_provider_args_doc}
class AuthorizationProviderArgs {
  /// Identifier of the authorization provider.
  final pulumi.Input<String>? authorizationProviderId;
  /// Authorization Provider name. Must be 1 to 300 characters long.
  final pulumi.Input<String>? displayName;
  /// Identity provider name. Must be 1 to 300 characters long.
  final pulumi.Input<String>? identityProvider;
  /// OAuth2 settings
  final pulumi.Input<AuthorizationProviderOAuth2Settings>? oauth2;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [AuthorizationProviderArgs].
  /// [authorizationProviderId] Identifier of the authorization provider.
  /// [displayName] Authorization Provider name. Must be 1 to 300 characters long.
  /// [identityProvider] Identity provider name. Must be 1 to 300 characters long.
  /// [oauth2] OAuth2 settings
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  AuthorizationProviderArgs({
    String? authorizationProviderId,
    String? displayName,
    String? identityProvider,
    AuthorizationProviderOAuth2Settings? oauth2,
    required String resourceGroupName,
    required String serviceName,
  }) :
      authorizationProviderId = pulumi.Input.asOptionalInput<String>(authorizationProviderId),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      identityProvider = pulumi.Input.asOptionalInput<String>(identityProvider),
      oauth2 = pulumi.Input.asOptionalInput<AuthorizationProviderOAuth2Settings>(oauth2),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationProviderId': ?authorizationProviderId,
      'displayName': ?displayName,
      'identityProvider': ?identityProvider,
      'oauth2': ?pulumi.Input.mapOptionalInputValue<AuthorizationProviderOAuth2Settings, Map<String, dynamic>>(oauth2, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory AuthorizationProviderArgs.fromMap(Map<String, dynamic> map) {
    return AuthorizationProviderArgs(
      authorizationProviderId: map['authorizationProviderId'] == null ? null : map['authorizationProviderId'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      identityProvider: map['identityProvider'] == null ? null : map['identityProvider'] as String,
      oauth2: map['oauth2'] == null ? null : AuthorizationProviderOAuth2Settings.fromMap((map['oauth2'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}

