// ignore_for_file: unused_element, unnecessary_cast

class CertificateConfigSubjectKeyId {
  /// The value of the KeyId in lowercase hexadecimal.
  final String? keyId;

  /// Creates a new [CertificateConfigSubjectKeyId].
  /// [keyId] The value of the KeyId in lowercase hexadecimal.
  CertificateConfigSubjectKeyId({
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

  factory CertificateConfigSubjectKeyId.fromMap(Map<String, dynamic> map) {
    return CertificateConfigSubjectKeyId(
      keyId: map['keyId'] == null ? null : map['keyId'] as String,
    );
  }
}
