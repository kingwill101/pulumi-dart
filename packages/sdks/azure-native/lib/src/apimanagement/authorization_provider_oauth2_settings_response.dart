// ignore_for_file: unused_element, unnecessary_cast

import 'authorization_provider_oauth2_grant_types_response.dart';

/// OAuth2 settings details
class AuthorizationProviderOAuth2SettingsResponse {
  /// OAuth2 settings
  final AuthorizationProviderOAuth2GrantTypesResponse? grantTypes;
  /// Redirect URL to be set in the OAuth application.
  final String? redirectUrl;

  /// Creates a new [AuthorizationProviderOAuth2SettingsResponse].
  /// [grantTypes] OAuth2 settings
  /// [redirectUrl] Redirect URL to be set in the OAuth application.
  AuthorizationProviderOAuth2SettingsResponse({
    this.grantTypes,
    this.redirectUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grantTypes': ?grantTypes == null ? null : grantTypes!.toMap(),
      'redirectUrl': ?redirectUrl,
    };
  }

  factory AuthorizationProviderOAuth2SettingsResponse.fromMap(Map<String, dynamic> map) {
    return AuthorizationProviderOAuth2SettingsResponse(
      grantTypes: map['grantTypes'] == null ? null : AuthorizationProviderOAuth2GrantTypesResponse.fromMap((map['grantTypes'] as Map).cast<String, dynamic>()),
      redirectUrl: map['redirectUrl'] == null ? null : map['redirectUrl'] as String,
    );
  }
}

