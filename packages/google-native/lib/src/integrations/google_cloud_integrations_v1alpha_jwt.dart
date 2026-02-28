// ignore_for_file: unused_element, unnecessary_cast

/// Represents JSON web token(JWT), which is a compact, URL-safe means of representing claims to be transferred between two parties, enabling the claims to be digitally signed or integrity protected.
class GoogleCloudIntegrationsV1alphaJwt {
  /// The token calculated by the header, payload and signature.
  final String? jwt;

  /// Identifies which algorithm is used to generate the signature.
  final String? jwtHeader;

  /// Contains a set of claims. The JWT specification defines seven Registered Claim Names which are the standard fields commonly included in tokens. Custom claims are usually also included, depending on the purpose of the token.
  final String? jwtPayload;

  /// User's pre-shared secret to sign the token.
  final String? secret;

  /// Creates a new [GoogleCloudIntegrationsV1alphaJwt].
  /// [jwt] The token calculated by the header, payload and signature.
  /// [jwtHeader] Identifies which algorithm is used to generate the signature.
  /// [jwtPayload] Contains a set of claims. The JWT specification defines seven Registered Claim Names which are the standard fields commonly included in tokens. Custom claims are usually also included, depending on the purpose of the token.
  /// [secret] User's pre-shared secret to sign the token.
  GoogleCloudIntegrationsV1alphaJwt({
    this.jwt,
    this.jwtHeader,
    this.jwtPayload,
    this.secret,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final jwtValue = jwt;
    if (jwtValue != null) {
      map['jwt'] = jwtValue;
    }
    final jwtHeaderValue = jwtHeader;
    if (jwtHeaderValue != null) {
      map['jwtHeader'] = jwtHeaderValue;
    }
    final jwtPayloadValue = jwtPayload;
    if (jwtPayloadValue != null) {
      map['jwtPayload'] = jwtPayloadValue;
    }
    final secretValue = secret;
    if (secretValue != null) {
      map['secret'] = secretValue;
    }
    return map;
  }

  factory GoogleCloudIntegrationsV1alphaJwt.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaJwt(
      jwt: map['jwt'] == null ? null : map['jwt'] as String,
      jwtHeader: map['jwtHeader'] == null ? null : map['jwtHeader'] as String,
      jwtPayload:
          map['jwtPayload'] == null ? null : map['jwtPayload'] as String,
      secret: map['secret'] == null ? null : map['secret'] as String,
    );
  }
}
