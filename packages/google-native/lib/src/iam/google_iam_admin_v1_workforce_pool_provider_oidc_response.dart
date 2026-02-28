// ignore_for_file: unused_element, unnecessary_cast

import 'google_iam_admin_v1_workforce_pool_provider_oidc_client_secret_response.dart';
import 'google_iam_admin_v1_workforce_pool_provider_oidc_web_sso_config_response.dart';

/// Represents an OpenId Connect 1.0 identity provider.
class GoogleIamAdminV1WorkforcePoolProviderOidcResponse {
  /// The client ID. Must match the audience claim of the JWT issued by the identity provider.
  final String clientId;

  /// The optional client secret. Required to enable Authorization Code flow for web sign-in.
  final GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretResponse
      clientSecret;

  /// The OIDC issuer URI. Must be a valid URI using the 'https' scheme.
  final String issuerUri;

  /// OIDC JWKs in JSON String format. For details on the definition of a JWK, see https://tools.ietf.org/html/rfc7517. If not set, the `jwks_uri` from the discovery document(fetched from the .well-known path of the `issuer_uri`) will be used. Currently, RSA and EC asymmetric keys are supported. The JWK must use following format and include only the following fields: { "keys": [ { "kty": "RSA/EC", "alg": "", "use": "sig", "kid": "", "n": "", "e": "", "x": "", "y": "", "crv": "" } ] }
  final String jwksJson;

  /// Configuration for web single sign-on for the OIDC provider. Here, web sign-in refers to console sign-in and gcloud sign-in through the browser.
  final GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfigResponse
      webSsoConfig;

  /// Creates a new [GoogleIamAdminV1WorkforcePoolProviderOidcResponse].
  /// [clientId] The client ID. Must match the audience claim of the JWT issued by the identity provider.
  /// [clientSecret] The optional client secret. Required to enable Authorization Code flow for web sign-in.
  /// [issuerUri] The OIDC issuer URI. Must be a valid URI using the 'https' scheme.
  /// [jwksJson] OIDC JWKs in JSON String format. For details on the definition of a JWK, see https://tools.ietf.org/html/rfc7517. If not set, the `jwks_uri` from the discovery document(fetched from the .well-known path of the `issuer_uri`) will be used. Currently, RSA and EC asymmetric keys are supported. The JWK must use following format and include only the following fields: { "keys": [ { "kty": "RSA/EC", "alg": "", "use": "sig", "kid": "", "n": "", "e": "", "x": "", "y": "", "crv": "" } ] }
  /// [webSsoConfig] Configuration for web single sign-on for the OIDC provider. Here, web sign-in refers to console sign-in and gcloud sign-in through the browser.
  GoogleIamAdminV1WorkforcePoolProviderOidcResponse({
    required this.clientId,
    required this.clientSecret,
    required this.issuerUri,
    required this.jwksJson,
    required this.webSsoConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientId'] = clientId;
    map['clientSecret'] = clientSecret.toMap();
    map['issuerUri'] = issuerUri;
    map['jwksJson'] = jwksJson;
    map['webSsoConfig'] = webSsoConfig.toMap();
    return map;
  }

  factory GoogleIamAdminV1WorkforcePoolProviderOidcResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleIamAdminV1WorkforcePoolProviderOidcResponse(
      clientId: map['clientId'] as String,
      clientSecret:
          GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretResponse.fromMap(
              (map['clientSecret'] as Map).cast<String, dynamic>()),
      issuerUri: map['issuerUri'] as String,
      jwksJson: map['jwksJson'] as String,
      webSsoConfig:
          GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfigResponse.fromMap(
              (map['webSsoConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
