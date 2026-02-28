// ignore_for_file: unused_element, unnecessary_cast

/// An SSL certificate obtained from a certificate authority.
class CertificateRawData {
  /// Unencrypted PEM encoded RSA private key. This field is set once on certificate creation and then encrypted. The key size must be 2048 bits or fewer. Must include the header and footer. Example: -----BEGIN RSA PRIVATE KEY----- -----END RSA PRIVATE KEY----- @InputOnly
  final String? privateKey;

  /// PEM encoded x.509 public key certificate. This field is set once on certificate creation. Must include the header and footer. Example: -----BEGIN CERTIFICATE----- -----END CERTIFICATE-----
  final String? publicCertificate;

  /// Creates a new [CertificateRawData].
  /// [privateKey] Unencrypted PEM encoded RSA private key. This field is set once on certificate creation and then encrypted. The key size must be 2048 bits or fewer. Must include the header and footer. Example: -----BEGIN RSA PRIVATE KEY----- -----END RSA PRIVATE KEY----- @InputOnly
  /// [publicCertificate] PEM encoded x.509 public key certificate. This field is set once on certificate creation. Must include the header and footer. Example: -----BEGIN CERTIFICATE----- -----END CERTIFICATE-----
  CertificateRawData({
    this.privateKey,
    this.publicCertificate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final privateKeyValue = privateKey;
    if (privateKeyValue != null) {
      map['privateKey'] = privateKeyValue;
    }
    final publicCertificateValue = publicCertificate;
    if (publicCertificateValue != null) {
      map['publicCertificate'] = publicCertificateValue;
    }
    return map;
  }

  factory CertificateRawData.fromMap(Map<String, dynamic> map) {
    return CertificateRawData(
      privateKey:
          map['privateKey'] == null ? null : map['privateKey'] as String,
      publicCertificate: map['publicCertificate'] == null
          ? null
          : map['publicCertificate'] as String,
    );
  }
}
