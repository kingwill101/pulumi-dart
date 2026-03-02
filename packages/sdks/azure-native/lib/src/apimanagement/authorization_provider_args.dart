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
    this.authorizationProviderId,
    this.displayName,
    this.identityProvider,
    this.oauth2,
    required this.resourceGroupName,
    required this.serviceName,
  });

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
      authorizationProviderId: map['authorizationProviderId'] == null ? null : (map['authorizationProviderId']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      identityProvider: map['identityProvider'] == null ? null : (map['identityProvider']! as String).input(),
      oauth2: map['oauth2'] == null ? null : (AuthorizationProviderOAuth2Settings.fromMap((map['oauth2']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
    );
  }
}

