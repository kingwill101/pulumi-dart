// ignore_for_file: unused_element, unnecessary_cast

class CertificateCertificateDescriptionSubjectKeyId {
  /// The value of the KeyId in lowercase hexadecimal.
  final String? keyId;

  CertificateCertificateDescriptionSubjectKeyId({
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

  factory CertificateCertificateDescriptionSubjectKeyId.fromMap(
      Map<String, dynamic> map) {
    return CertificateCertificateDescriptionSubjectKeyId(
      keyId: map['keyId'] == null ? null : map['keyId'] as String,
    );
  }
}
