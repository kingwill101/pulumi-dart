// ignore_for_file: unused_element, unnecessary_cast

/// An SSL certificate obtained from a certificate authority.
class CertificateRawDataResponse3 {
  /// Unencrypted PEM encoded RSA private key. This field is set once on certificate creation and then encrypted. The key size must be 2048 bits or fewer. Must include the header and footer. Example: -----BEGIN RSA PRIVATE KEY----- -----END RSA PRIVATE KEY----- @InputOnly
  final String privateKey;

  /// PEM encoded x.509 public key certificate. This field is set once on certificate creation. Must include the header and footer. Example: -----BEGIN CERTIFICATE----- -----END CERTIFICATE-----
  final String publicCertificate;

  CertificateRawDataResponse3({
    required this.privateKey,
    required this.publicCertificate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['privateKey'] = privateKey;
    map['publicCertificate'] = publicCertificate;
    return map;
  }

  factory CertificateRawDataResponse3.fromMap(Map<String, dynamic> map) {
    return CertificateRawDataResponse3(
      privateKey: map['privateKey'] as String,
      publicCertificate: map['publicCertificate'] as String,
    );
  }
}
