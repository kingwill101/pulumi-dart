// ignore_for_file: unused_element, unnecessary_cast

import 'authorization_provider_oauth2_grant_types.dart';

/// OAuth2 settings details
class AuthorizationProviderOAuth2Settings {
  /// OAuth2 settings
  final AuthorizationProviderOAuth2GrantTypes? grantTypes;
  /// Redirect URL to be set in the OAuth application.
  final String? redirectUrl;

  /// Creates a new [AuthorizationProviderOAuth2Settings].
  /// [grantTypes] OAuth2 settings
  /// [redirectUrl] Redirect URL to be set in the OAuth application.
  AuthorizationProviderOAuth2Settings({
    this.grantTypes,
    this.redirectUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grantTypes': ?grantTypes == null ? null : grantTypes!.toMap(),
      'redirectUrl': ?redirectUrl,
    };
  }

  factory AuthorizationProviderOAuth2Settings.fromMap(Map<String, dynamic> map) {
    return AuthorizationProviderOAuth2Settings(
      grantTypes: map['grantTypes'] == null ? null : AuthorizationProviderOAuth2GrantTypes.fromMap((map['grantTypes'] as Map).cast<String, dynamic>()),
      redirectUrl: map['redirectUrl'] == null ? null : map['redirectUrl'] as String,
    );
  }
}

