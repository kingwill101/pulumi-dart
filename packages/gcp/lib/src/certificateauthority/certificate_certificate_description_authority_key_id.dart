// ignore_for_file: unused_element, unnecessary_cast

class CertificateCertificateDescriptionAuthorityKeyId {
  /// (Output)
  /// Optional. The value of this KeyId encoded in lowercase hexadecimal. This is most likely the 160 bit SHA-1 hash of the public key.
  final String? keyId;

  /// Creates a new [CertificateCertificateDescriptionAuthorityKeyId].
  /// [keyId] (Output)
  CertificateCertificateDescriptionAuthorityKeyId({
    this.keyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keyIdValue = keyId;
    if (keyIdValue != null) {
      map['keyId'] = keyIdValue;
    }
    return map;
  }

  factory CertificateCertificateDescriptionAuthorityKeyId.fromMap(
      Map<String, dynamic> map) {
    return CertificateCertificateDescriptionAuthorityKeyId(
      keyId: map['keyId'] == null ? null : map['keyId'] as String,
    );
  }
}
