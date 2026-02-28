// ignore_for_file: unused_element, unnecessary_cast


class CertificateCertificateDescriptionSubjectKeyId {
  /// The value of the KeyId in lowercase hexadecimal.
  final String? keyId;

  /// Creates a new [CertificateCertificateDescriptionSubjectKeyId].
  /// [keyId] The value of the KeyId in lowercase hexadecimal.
  CertificateCertificateDescriptionSubjectKeyId({
    this.keyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyId': ?keyId,
    };
  }

  factory CertificateCertificateDescriptionSubjectKeyId.fromMap(Map<String, dynamic> map) {
    return CertificateCertificateDescriptionSubjectKeyId(
      keyId: map['keyId'] == null ? null : map['keyId'] as String,
    );
  }
}

