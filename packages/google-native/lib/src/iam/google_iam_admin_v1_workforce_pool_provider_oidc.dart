// ignore_for_file: unused_element, unnecessary_cast

import 'google_iam_admin_v1_workforce_pool_provider_oidc_client_secret.dart';
import 'google_iam_admin_v1_workforce_pool_provider_oidc_web_sso_config.dart';

/// Represents an OpenId Connect 1.0 identity provider.
class GoogleIamAdminV1WorkforcePoolProviderOidc {
  /// The client ID. Must match the audience claim of the JWT issued by the identity provider.
  final String clientId;

  /// The optional client secret. Required to enable Authorization Code flow for web sign-in.
  final GoogleIamAdminV1WorkforcePoolProviderOidcClientSecret? clientSecret;

  /// The OIDC issuer URI. Must be a valid URI using the 'https' scheme.
  final String issuerUri;

  /// OIDC JWKs in JSON String format. For details on the definition of a JWK, see https://tools.ietf.org/html/rfc7517. If not set, the `jwks_uri` from the discovery document(fetched from the .well-known path of the `issuer_uri`) will be used. Currently, RSA and EC asymmetric keys are supported. The JWK must use following format and include only the following fields: { "keys": [ { "kty": "RSA/EC", "alg": "", "use": "sig", "kid": "", "n": "", "e": "", "x": "", "y": "", "crv": "" } ] }
  final String? jwksJson;

  /// Configuration for web single sign-on for the OIDC provider. Here, web sign-in refers to console sign-in and gcloud sign-in through the browser.
  final GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfig webSsoConfig;

  /// Creates a new [GoogleIamAdminV1WorkforcePoolProviderOidc].
  /// [clientId] The client ID. Must match the audience claim of the JWT issued by the identity provider.
  /// [clientSecret] The optional client secret. Required to enable Authorization Code flow for web sign-in.
  /// [issuerUri] The OIDC issuer URI. Must be a valid URI using the 'https' scheme.
  /// [jwksJson] OIDC JWKs in JSON String format. For details on the definition of a JWK, see https://tools.ietf.org/html/rfc7517. If not set, the `jwks_uri` from the discovery document(fetched from the .well-known path of the `issuer_uri`) will be used. Currently, RSA and EC asymmetric keys are supported. The JWK must use following format and include only the following fields: { "keys": [ { "kty": "RSA/EC", "alg": "", "use": "sig", "kid": "", "n": "", "e": "", "x": "", "y": "", "crv": "" } ] }
  /// [webSsoConfig] Configuration for web single sign-on for the OIDC provider. Here, web sign-in refers to console sign-in and gcloud sign-in through the browser.
  GoogleIamAdminV1WorkforcePoolProviderOidc({
    required this.clientId,
    this.clientSecret,
    required this.issuerUri,
    this.jwksJson,
    required this.webSsoConfig,
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
    map['webSsoConfig'] = webSsoConfig.toMap();
    return map;
  }

  factory GoogleIamAdminV1WorkforcePoolProviderOidc.fromMap(
      Map<String, dynamic> map) {
    return GoogleIamAdminV1WorkforcePoolProviderOidc(
      clientId: map['clientId'] as String,
      clientSecret: map['clientSecret'] == null
          ? null
          : GoogleIamAdminV1WorkforcePoolProviderOidcClientSecret.fromMap(
              (map['clientSecret'] as Map).cast<String, dynamic>()),
      issuerUri: map['issuerUri'] as String,
      jwksJson: map['jwksJson'] == null ? null : map['jwksJson'] as String,
      webSsoConfig:
          GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfig.fromMap(
              (map['webSsoConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
