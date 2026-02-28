// ignore_for_file: unused_element, unnecessary_cast

/// Message contains the JWT encryption information for the proxy server.
class GoogleCloudBeyondcorpPartnerservicesV1alphaEncryptionInfo {
  /// Optional. Service Account for encryption key.
  final String? encryptionSaEmail;

  /// Optional. JWK in string.
  final String? jwk;

  /// Creates a new [GoogleCloudBeyondcorpPartnerservicesV1alphaEncryptionInfo].
  /// [encryptionSaEmail] Optional. Service Account for encryption key.
  /// [jwk] Optional. JWK in string.
  GoogleCloudBeyondcorpPartnerservicesV1alphaEncryptionInfo({
    this.encryptionSaEmail,
    this.jwk,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final encryptionSaEmailValue = encryptionSaEmail;
    if (encryptionSaEmailValue != null) {
      map['encryptionSaEmail'] = encryptionSaEmailValue;
    }
    final jwkValue = jwk;
    if (jwkValue != null) {
      map['jwk'] = jwkValue;
    }
    return map;
  }

  factory GoogleCloudBeyondcorpPartnerservicesV1alphaEncryptionInfo.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudBeyondcorpPartnerservicesV1alphaEncryptionInfo(
      encryptionSaEmail: map['encryptionSaEmail'] == null
          ? null
          : map['encryptionSaEmail'] as String,
      jwk: map['jwk'] == null ? null : map['jwk'] as String,
    );
  }
}
