// ignore_for_file: unused_element, unnecessary_cast

/// Message contains the JWT encryption information for the proxy server.
class GoogleCloudBeyondcorpPartnerservicesV1alphaEncryptionInfoResponse {
  /// Optional. Service Account for encryption key.
  final String encryptionSaEmail;

  /// Optional. JWK in string.
  final String jwk;

  GoogleCloudBeyondcorpPartnerservicesV1alphaEncryptionInfoResponse({
    required this.encryptionSaEmail,
    required this.jwk,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['encryptionSaEmail'] = encryptionSaEmail;
    map['jwk'] = jwk;
    return map;
  }

  factory GoogleCloudBeyondcorpPartnerservicesV1alphaEncryptionInfoResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudBeyondcorpPartnerservicesV1alphaEncryptionInfoResponse(
      encryptionSaEmail: map['encryptionSaEmail'] as String,
      jwk: map['jwk'] as String,
    );
  }
}
