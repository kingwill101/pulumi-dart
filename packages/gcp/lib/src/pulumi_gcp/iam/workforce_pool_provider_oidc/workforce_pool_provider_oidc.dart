// ignore_for_file: unused_element, unnecessary_cast

import '../workforce_pool_provider_oidc_client_secret/workforce_pool_provider_oidc_client_secret.dart';
import '../workforce_pool_provider_oidc_web_sso_config/workforce_pool_provider_oidc_web_sso_config.dart';

class WorkforcePoolProviderOidc {
  /// The client ID. Must match the audience claim of the JWT issued by the identity provider.
  final String clientId;

  /// The optional client secret. Required to enable Authorization Code flow for web sign-in.
  /// Structure is documented below.
  final WorkforcePoolProviderOidcClientSecret? clientSecret;

  /// The OIDC issuer URI. Must be a valid URI using the 'https' scheme.
  final String issuerUri;

  /// OIDC JWKs in JSON String format. For details on definition of a
  /// JWK, see https:tools.ietf.org/html/rfc7517. If not set, then we
  /// use the <span pulumi-lang-nodejs="`jwksUri`" pulumi-lang-dotnet="`JwksUri`" pulumi-lang-go="`jwksUri`" pulumi-lang-python="`jwks_uri`" pulumi-lang-yaml="`jwksUri`" pulumi-lang-java="`jwksUri`">`jwks_uri`</span> from the discovery document fetched from the
  /// .well-known path for the <span pulumi-lang-nodejs="`issuerUri`" pulumi-lang-dotnet="`IssuerUri`" pulumi-lang-go="`issuerUri`" pulumi-lang-python="`issuer_uri`" pulumi-lang-yaml="`issuerUri`" pulumi-lang-java="`issuerUri`">`issuer_uri`</span>. Currently, RSA and EC asymmetric
  /// keys are supported. The JWK must use following format and include only
  /// the following fields:
  /// ```
  /// {
  /// "keys": [
  /// {
  /// "kty": "RSA/EC",
  /// "alg": "<algorithm>",
  /// "use": "sig",
  /// "kid": "<key-id>",
  /// "n": "",
  /// "e": "",
  /// "x": "",
  /// "y": "",
  /// "crv": ""
  /// }
  /// ]
  /// }
  /// ```
  final String? jwksJson;

  /// Configuration for web single sign-on for the OIDC provider. Here, web sign-in refers to console sign-in and gcloud sign-in through the browser.
  /// Structure is documented below.
  final WorkforcePoolProviderOidcWebSsoConfig? webSsoConfig;

  WorkforcePoolProviderOidc({
    required this.clientId,
    this.clientSecret,
    required this.issuerUri,
    this.jwksJson,
    this.webSsoConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientId'] = clientId;
    final clientSecretValue = clientSecret;
    if (clientSecretValue != null) {
      map['clientSecret'] = clientSecretValue.toMap();
    }
    map['issuerUri'] = issuerUri;
    final jwksJsonValue = jwksJson;
    if (jwksJsonValue != null) {
      map['jwksJson'] = jwksJsonValue;
    }
    final webSsoConfigValue = webSsoConfig;
    if (webSsoConfigValue != null) {
      map['webSsoConfig'] = webSsoConfigValue.toMap();
    }
    return map;
  }

  factory WorkforcePoolProviderOidc.fromMap(Map<String, dynamic> map) {
    return WorkforcePoolProviderOidc(
      clientId: map['clientId'] as String,
      clientSecret: map['clientSecret'] == null
          ? null
          : WorkforcePoolProviderOidcClientSecret.fromMap(
              (map['clientSecret'] as Map).cast<String, dynamic>()),
      issuerUri: map['issuerUri'] as String,
      jwksJson: map['jwksJson'] == null ? null : map['jwksJson'] as String,
      webSsoConfig: map['webSsoConfig'] == null
          ? null
          : WorkforcePoolProviderOidcWebSsoConfig.fromMap(
              (map['webSsoConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
