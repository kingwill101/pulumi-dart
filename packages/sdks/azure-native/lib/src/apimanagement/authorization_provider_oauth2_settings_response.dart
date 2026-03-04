// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_provider_oauth2_grant_types_response.dart';

/// OAuth2 settings details
class AuthorizationProviderOAuth2SettingsResponse {
  /// OAuth2 settings
  final pulumi.Input<AuthorizationProviderOAuth2GrantTypesResponse>? grantTypes;

  /// Redirect URL to be set in the OAuth application.
  final pulumi.Input<String>? redirectUrl;

  /// Creates a new [AuthorizationProviderOAuth2SettingsResponse].
  /// [grantTypes] OAuth2 settings
  /// [redirectUrl] Redirect URL to be set in the OAuth application.
  AuthorizationProviderOAuth2SettingsResponse({
    this.grantTypes,
    this.redirectUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grantTypes':
          ?pulumi.Input.mapOptionalInputValue<
            AuthorizationProviderOAuth2GrantTypesResponse,
            Map<String, dynamic>
          >(grantTypes, (value) => value.toMap()),
      'redirectUrl': ?redirectUrl,
    };
  }

  factory AuthorizationProviderOAuth2SettingsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return AuthorizationProviderOAuth2SettingsResponse(
      grantTypes: (() {
        final guardedValue = map['grantTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AuthorizationProviderOAuth2GrantTypesResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      redirectUrl: (() {
        final guardedValue = map['redirectUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
