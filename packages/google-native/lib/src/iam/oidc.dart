// ignore_for_file: unused_element, unnecessary_cast

/// Represents an OpenId Connect 1.0 identity provider.
class Oidc {
  /// Acceptable values for the `aud` field (audience) in the OIDC token. Token exchange requests are rejected if the token audience does not match one of the configured values. Each audience may be at most 256 characters. A maximum of 10 audiences may be configured. If this list is empty, the OIDC token audience must be equal to the full canonical resource name of the WorkloadIdentityPoolProvider, with or without the HTTPS prefix. For example: ``` //iam.googleapis.com/projects//locations//workloadIdentityPools//providers/ https://iam.googleapis.com/projects//locations//workloadIdentityPools//providers/ ```
  final List<String>? allowedAudiences;

  /// The OIDC issuer URL. Must be an HTTPS endpoint.
  final String issuerUri;

  /// Optional. OIDC JWKs in JSON String format. For details on the definition of a JWK, see https://tools.ietf.org/html/rfc7517. If not set, the `jwks_uri` from the discovery document(fetched from the .well-known path of the `issuer_uri`) will be used. Currently, RSA and EC asymmetric keys are supported. The JWK must use following format and include only the following fields: { "keys": [ { "kty": "RSA/EC", "alg": "", "use": "sig", "kid": "", "n": "", "e": "", "x": "", "y": "", "crv": "" } ] }
  final String? jwksJson;

  /// Creates a new [Oidc].
  /// [allowedAudiences] Acceptable values for the `aud` field (audience) in the OIDC token. Token exchange requests are rejected if the token audience does not match one of the configured values. Each audience may be at most 256 characters. A maximum of 10 audiences may be configured. If this list is empty, the OIDC token audience must be equal to the full canonical resource name of the WorkloadIdentityPoolProvider, with or without the HTTPS prefix. For example: ``` //iam.googleapis.com/projects//locations//workloadIdentityPools//providers/ https://iam.googleapis.com/projects//locations//workloadIdentityPools//providers/ ```
  /// [issuerUri] The OIDC issuer URL. Must be an HTTPS endpoint.
  /// [jwksJson] Optional. OIDC JWKs in JSON String format. For details on the definition of a JWK, see https://tools.ietf.org/html/rfc7517. If not set, the `jwks_uri` from the discovery document(fetched from the .well-known path of the `issuer_uri`) will be used. Currently, RSA and EC asymmetric keys are supported. The JWK must use following format and include only the following fields: { "keys": [ { "kty": "RSA/EC", "alg": "", "use": "sig", "kid": "", "n": "", "e": "", "x": "", "y": "", "crv": "" } ] }
  Oidc({this.allowedAudiences, required this.issuerUri, this.jwksJson});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedAudiences': ?allowedAudiences,
      'issuerUri': issuerUri,
      'jwksJson': ?jwksJson,
    };
  }

  factory Oidc.fromMap(Map<String, dynamic> map) {
    return Oidc(
      allowedAudiences: map['allowedAudiences'] == null
          ? null
          : (map['allowedAudiences'] as List).cast<String>(),
      issuerUri: map['issuerUri'] as String,
      jwksJson: map['jwksJson'] == null ? null : map['jwksJson'] as String,
    );
  }
}
