// ignore_for_file: unused_element, unnecessary_cast

import 'secret_connectors_v1.dart';

/// Parameters to support Oauth 2.0 Auth Code Grant Authentication. See https://www.rfc-editor.org/rfc/rfc6749#section-1.3.1 for more details.
class Oauth2AuthCodeFlow {
  /// Authorization code to be exchanged for access and refresh tokens.
  final String? authCode;

  /// Auth URL for Authorization Code Flow
  final String? authUri;

  /// Client ID for user-provided OAuth app.
  final String? clientId;

  /// Client secret for user-provided OAuth app.
  final SecretConnectorsV1? clientSecret;

  /// Whether to enable PKCE when the user performs the auth code flow.
  final bool? enablePkce;

  /// PKCE verifier to be used during the auth code exchange.
  final String? pkceVerifier;

  /// Redirect URI to be provided during the auth code exchange.
  final String? redirectUri;

  /// Scopes the connection will request when the user performs the auth code flow.
  final List<String>? scopes;

  Oauth2AuthCodeFlow({
    this.authCode,
    this.authUri,
    this.clientId,
    this.clientSecret,
    this.enablePkce,
    this.pkceVerifier,
    this.redirectUri,
    this.scopes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authCodeValue = authCode;
    if (authCodeValue != null) {
      map['authCode'] = authCodeValue;
    }
    final authUriValue = authUri;
    if (authUriValue != null) {
      map['authUri'] = authUriValue;
    }
    final clientIdValue = clientId;
    if (clientIdValue != null) {
      map['clientId'] = clientIdValue;
    }
    final clientSecretValue = clientSecret;
    if (clientSecretValue != null) {
      map['clientSecret'] = clientSecretValue.toMap();
    }
    final enablePkceValue = enablePkce;
    if (enablePkceValue != null) {
      map['enablePkce'] = enablePkceValue;
    }
    final pkceVerifierValue = pkceVerifier;
    if (pkceVerifierValue != null) {
      map['pkceVerifier'] = pkceVerifierValue;
    }
    final redirectUriValue = redirectUri;
    if (redirectUriValue != null) {
      map['redirectUri'] = redirectUriValue;
    }
    final scopesValue = scopes;
    if (scopesValue != null) {
      map['scopes'] = scopesValue;
    }
    return map;
  }

  factory Oauth2AuthCodeFlow.fromMap(Map<String, dynamic> map) {
    return Oauth2AuthCodeFlow(
      authCode: map['authCode'] == null ? null : map['authCode'] as String,
      authUri: map['authUri'] == null ? null : map['authUri'] as String,
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      clientSecret: map['clientSecret'] == null
          ? null
          : SecretConnectorsV1.fromMap(
              (map['clientSecret'] as Map).cast<String, dynamic>()),
      enablePkce: map['enablePkce'] == null ? null : map['enablePkce'] as bool,
      pkceVerifier:
          map['pkceVerifier'] == null ? null : map['pkceVerifier'] as String,
      redirectUri:
          map['redirectUri'] == null ? null : map['redirectUri'] as String,
      scopes:
          map['scopes'] == null ? null : (map['scopes'] as List).cast<String>(),
    );
  }
}
