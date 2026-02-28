// ignore_for_file: unused_element, unnecessary_cast


/// A group of fingerprints for the x509 certificate.
class CertificateFingerprintResponse {
  /// The SHA 256 hash, encoded in hexadecimal, of the DER x509 certificate.
  final String sha256Hash;

  /// Creates a new [CertificateFingerprintResponse].
  /// [sha256Hash] The SHA 256 hash, encoded in hexadecimal, of the DER x509 certificate.
  CertificateFingerprintResponse({
    required this.sha256Hash,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sha256Hash': sha256Hash,
    };
  }

  factory CertificateFingerprintResponse.fromMap(Map<String, dynamic> map) {
    return CertificateFingerprintResponse(
      sha256Hash: map['sha256Hash'] as String,
    );
  }
}

