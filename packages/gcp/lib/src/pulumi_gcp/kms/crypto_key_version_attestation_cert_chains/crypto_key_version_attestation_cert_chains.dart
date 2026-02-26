// ignore_for_file: unused_element, unnecessary_cast

class CryptoKeyVersionAttestationCertChains {
  /// Cavium certificate chain corresponding to the attestation.
  final List<String>? caviumCerts;

  /// Google card certificate chain corresponding to the attestation.
  final List<String>? googleCardCerts;

  /// Google partition certificate chain corresponding to the attestation.
  final List<String>? googlePartitionCerts;

  CryptoKeyVersionAttestationCertChains({
    this.caviumCerts,
    this.googleCardCerts,
    this.googlePartitionCerts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final caviumCertsValue = caviumCerts;
    if (caviumCertsValue != null) {
      map['caviumCerts'] = caviumCertsValue;
    }
    final googleCardCertsValue = googleCardCerts;
    if (googleCardCertsValue != null) {
      map['googleCardCerts'] = googleCardCertsValue;
    }
    final googlePartitionCertsValue = googlePartitionCerts;
    if (googlePartitionCertsValue != null) {
      map['googlePartitionCerts'] = googlePartitionCertsValue;
    }
    return map;
  }

  factory CryptoKeyVersionAttestationCertChains.fromMap(
      Map<String, dynamic> map) {
    return CryptoKeyVersionAttestationCertChains(
      caviumCerts: map['caviumCerts'] == null
          ? null
          : (map['caviumCerts'] as List).cast<String>(),
      googleCardCerts: map['googleCardCerts'] == null
          ? null
          : (map['googleCardCerts'] as List).cast<String>(),
      googlePartitionCerts: map['googlePartitionCerts'] == null
          ? null
          : (map['googlePartitionCerts'] as List).cast<String>(),
    );
  }
}
