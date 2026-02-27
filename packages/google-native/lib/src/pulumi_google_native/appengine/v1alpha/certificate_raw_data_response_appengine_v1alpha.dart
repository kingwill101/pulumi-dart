// ignore_for_file: unused_element, unnecessary_cast

/// An SSL certificate obtained from a certificate authority.
class CertificateRawDataResponseAppengineV1alpha {
  /// Unencrypted PEM encoded RSA private key. This field is set once on certificate creation and then encrypted. The key size must be 2048 bits or fewer. Must include the header and footer. Example: -----BEGIN RSA PRIVATE KEY----- -----END RSA PRIVATE KEY----- @InputOnly
  final String privateKey;

  /// PEM encoded x.509 public key certificate. This field is set once on certificate creation. Must include the header and footer. Example: -----BEGIN CERTIFICATE----- -----END CERTIFICATE-----
  final String publicCertificate;

  CertificateRawDataResponseAppengineV1alpha({
    required this.privateKey,
    required this.publicCertificate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['privateKey'] = privateKey;
    map['publicCertificate'] = publicCertificate;
    return map;
  }

  factory CertificateRawDataResponseAppengineV1alpha.fromMap(
      Map<String, dynamic> map) {
    return CertificateRawDataResponseAppengineV1alpha(
      privateKey: map['privateKey'] as String,
      publicCertificate: map['publicCertificate'] as String,
    );
  }
}
