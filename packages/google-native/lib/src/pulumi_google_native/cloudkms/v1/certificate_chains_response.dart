// ignore_for_file: unused_element, unnecessary_cast

/// Certificate chains needed to verify the attestation. Certificates in chains are PEM-encoded and are ordered based on https://tools.ietf.org/html/rfc5246#section-7.4.2.
class CertificateChainsResponse {
  /// Cavium certificate chain corresponding to the attestation.
  final List<String> caviumCerts;

  /// Google card certificate chain corresponding to the attestation.
  final List<String> googleCardCerts;

  /// Google partition certificate chain corresponding to the attestation.
  final List<String> googlePartitionCerts;

  CertificateChainsResponse({
    required this.caviumCerts,
    required this.googleCardCerts,
    required this.googlePartitionCerts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['caviumCerts'] = caviumCerts;
    map['googleCardCerts'] = googleCardCerts;
    map['googlePartitionCerts'] = googlePartitionCerts;
    return map;
  }

  factory CertificateChainsResponse.fromMap(Map<String, dynamic> map) {
    return CertificateChainsResponse(
      caviumCerts: (map['caviumCerts'] as List).cast<String>(),
      googleCardCerts: (map['googleCardCerts'] as List).cast<String>(),
      googlePartitionCerts:
          (map['googlePartitionCerts'] as List).cast<String>(),
    );
  }
}
