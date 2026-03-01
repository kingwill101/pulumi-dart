// ignore_for_file: unused_element, unnecessary_cast


/// The configuration to set up an ICA.
class CertificateAuthorityConfiguration {
  /// Crypto type: ECC.
  final String keyType;

  /// Creates a new [CertificateAuthorityConfiguration].
  /// [keyType] Crypto type: ECC.
  CertificateAuthorityConfiguration({
    required this.keyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyType': keyType,
    };
  }

  factory CertificateAuthorityConfiguration.fromMap(Map<String, dynamic> map) {
    return CertificateAuthorityConfiguration(
      keyType: map['keyType'] as String,
    );
  }
}

