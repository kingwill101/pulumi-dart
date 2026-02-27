// ignore_for_file: unused_element, unnecessary_cast

import 'secret_response_connectors_v1.dart';

/// Parameters to support Oauth 2.0 Auth Code Grant Authentication. See https://www.rfc-editor.org/rfc/rfc6749#section-1.3.1 for more details.
class Oauth2AuthCodeFlowResponse {
  /// Authorization code to be exchanged for access and refresh tokens.
  final String authCode;

  /// Auth URL for Authorization Code Flow
  final String authUri;

  /// Client ID for user-provided OAuth app.
  final String clientId;

  /// Client secret for user-provided OAuth app.
  final SecretResponseConnectorsV1 clientSecret;

  /// Whether to enable PKCE when the user performs the auth code flow.
  final bool enablePkce;

  /// PKCE verifier to be used during the auth code exchange.
  final String pkceVerifier;

  /// Redirect URI to be provided during the auth code exchange.
  final String redirectUri;

  /// Scopes the connection will request when the user performs the auth code flow.
  final List<String> scopes;

  Oauth2AuthCodeFlowResponse({
    required this.authCode,
    required this.authUri,
    required this.clientId,
    required this.clientSecret,
    required this.enablePkce,
    required this.pkceVerifier,
    required this.redirectUri,
    required this.scopes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authCode'] = authCode;
    map['authUri'] = authUri;
    map['clientId'] = clientId;
    map['clientSecret'] = clientSecret.toMap();
    map['enablePkce'] = enablePkce;
    map['pkceVerifier'] = pkceVerifier;
    map['redirectUri'] = redirectUri;
    map['scopes'] = scopes;
    return map;
  }

  factory Oauth2AuthCodeFlowResponse.fromMap(Map<String, dynamic> map) {
    return Oauth2AuthCodeFlowResponse(
      authCode: map['authCode'] as String,
      authUri: map['authUri'] as String,
      clientId: map['clientId'] as String,
      clientSecret: SecretResponseConnectorsV1.fromMap(
          (map['clientSecret'] as Map).cast<String, dynamic>()),
      enablePkce: map['enablePkce'] as bool,
      pkceVerifier: map['pkceVerifier'] as String,
      redirectUri: map['redirectUri'] as String,
      scopes: (map['scopes'] as List).cast<String>(),
    );
  }
}
