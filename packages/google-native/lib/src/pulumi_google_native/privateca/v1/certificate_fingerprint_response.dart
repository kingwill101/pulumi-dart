// ignore_for_file: unused_element, unnecessary_cast

/// A group of fingerprints for the x509 certificate.
class CertificateFingerprintResponse {
  /// The SHA 256 hash, encoded in hexadecimal, of the DER x509 certificate.
  final String sha256Hash;

  CertificateFingerprintResponse({
    required this.sha256Hash,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sha256Hash'] = sha256Hash;
    return map;
  }

  factory CertificateFingerprintResponse.fromMap(Map<String, dynamic> map) {
    return CertificateFingerprintResponse(
      sha256Hash: map['sha256Hash'] as String,
    );
  }
}
