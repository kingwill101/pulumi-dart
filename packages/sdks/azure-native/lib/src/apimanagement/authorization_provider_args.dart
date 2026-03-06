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
  const AuthorizationProviderArgs({
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
      authorizationProviderId: (() { final guardedValue = map['authorizationProviderId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identityProvider: (() { final guardedValue = map['identityProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauth2: (() { final guardedValue = map['oauth2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthorizationProviderOAuth2Settings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}

