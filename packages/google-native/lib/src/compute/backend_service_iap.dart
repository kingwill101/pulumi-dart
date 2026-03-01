// ignore_for_file: unused_element, unnecessary_cast

import 'backend_service_iapoauth2_client_info.dart';

/// Identity-Aware Proxy
class BackendServiceIAP {
  /// Whether the serving infrastructure will authenticate and authorize all incoming requests.
  final bool? enabled;

  /// OAuth2 client ID to use for the authentication flow.
  final String? oauth2ClientId;

  /// [Input Only] OAuth client info required to generate client id to be used for IAP.
  final BackendServiceIAPOAuth2ClientInfo? oauth2ClientInfo;

  /// OAuth2 client secret to use for the authentication flow. For security reasons, this value cannot be retrieved via the API. Instead, the SHA-256 hash of the value is returned in the oauth2ClientSecretSha256 field. @InputOnly
  final String? oauth2ClientSecret;

  /// Creates a new [BackendServiceIAP].
  /// [enabled] Whether the serving infrastructure will authenticate and authorize all incoming requests.
  /// [oauth2ClientId] OAuth2 client ID to use for the authentication flow.
  /// [oauth2ClientInfo] [Input Only] OAuth client info required to generate client id to be used for IAP.
  /// [oauth2ClientSecret] OAuth2 client secret to use for the authentication flow. For security reasons, this value cannot be retrieved via the API. Instead, the SHA-256 hash of the value is returned in the oauth2ClientSecretSha256 field. @InputOnly
  BackendServiceIAP({
    this.enabled,
    this.oauth2ClientId,
    this.oauth2ClientInfo,
    this.oauth2ClientSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'oauth2ClientId': ?oauth2ClientId,
      'oauth2ClientInfo': ?oauth2ClientInfo == null
          ? null
          : oauth2ClientInfo!.toMap(),
      'oauth2ClientSecret': ?oauth2ClientSecret,
    };
  }

  factory BackendServiceIAP.fromMap(Map<String, dynamic> map) {
    return BackendServiceIAP(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      oauth2ClientId: map['oauth2ClientId'] == null
          ? null
          : map['oauth2ClientId'] as String,
      oauth2ClientInfo: map['oauth2ClientInfo'] == null
          ? null
          : BackendServiceIAPOAuth2ClientInfo.fromMap(
              (map['oauth2ClientInfo'] as Map).cast<String, dynamic>(),
            ),
      oauth2ClientSecret: map['oauth2ClientSecret'] == null
          ? null
          : map['oauth2ClientSecret'] as String,
    );
  }
}
