// ignore_for_file: unused_element, unnecessary_cast

class CertificateCertificateDescriptionCertFingerprint {
  /// (Output)
  /// The SHA 256 hash, encoded in hexadecimal, of the DER x509 certificate.
  final String? sha256Hash;

  /// Creates a new [CertificateCertificateDescriptionCertFingerprint].
  /// [sha256Hash] (Output)
  CertificateCertificateDescriptionCertFingerprint({
    this.sha256Hash,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final sha256HashValue = sha256Hash;
    if (sha256HashValue != null) {
      map['sha256Hash'] = sha256HashValue;
    }
    return map;
  }

  factory CertificateCertificateDescriptionCertFingerprint.fromMap(
      Map<String, dynamic> map) {
    return CertificateCertificateDescriptionCertFingerprint(
      sha256Hash:
          map['sha256Hash'] == null ? null : map['sha256Hash'] as String,
    );
  }
}
