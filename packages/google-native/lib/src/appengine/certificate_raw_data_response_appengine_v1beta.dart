// ignore_for_file: unused_element, unnecessary_cast

/// An SSL certificate obtained from a certificate authority.
class CertificateRawDataResponseAppengineV1beta {
  /// Unencrypted PEM encoded RSA private key. This field is set once on certificate creation and then encrypted. The key size must be 2048 bits or fewer. Must include the header and footer. Example: -----BEGIN RSA PRIVATE KEY----- -----END RSA PRIVATE KEY----- @InputOnly
  final String privateKey;

  /// PEM encoded x.509 public key certificate. This field is set once on certificate creation. Must include the header and footer. Example: -----BEGIN CERTIFICATE----- -----END CERTIFICATE-----
  final String publicCertificate;

  /// Creates a new [CertificateRawDataResponseAppengineV1beta].
  /// [privateKey] Unencrypted PEM encoded RSA private key. This field is set once on certificate creation and then encrypted. The key size must be 2048 bits or fewer. Must include the header and footer. Example: -----BEGIN RSA PRIVATE KEY----- -----END RSA PRIVATE KEY----- @InputOnly
  /// [publicCertificate] PEM encoded x.509 public key certificate. This field is set once on certificate creation. Must include the header and footer. Example: -----BEGIN CERTIFICATE----- -----END CERTIFICATE-----
  CertificateRawDataResponseAppengineV1beta({
    required this.privateKey,
    required this.publicCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateKey': privateKey,
      'publicCertificate': publicCertificate,
    };
  }

  factory CertificateRawDataResponseAppengineV1beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return CertificateRawDataResponseAppengineV1beta(
      privateKey: map['privateKey'] as String,
      publicCertificate: map['publicCertificate'] as String,
    );
  }
}
