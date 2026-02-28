// ignore_for_file: unused_element, unnecessary_cast

/// An SSL certificate obtained from a certificate authority.
class CertificateRawDataAppengineV1alpha {
  /// Unencrypted PEM encoded RSA private key. This field is set once on certificate creation and then encrypted. The key size must be 2048 bits or fewer. Must include the header and footer. Example: -----BEGIN RSA PRIVATE KEY----- -----END RSA PRIVATE KEY----- @InputOnly
  final String? privateKey;

  /// PEM encoded x.509 public key certificate. This field is set once on certificate creation. Must include the header and footer. Example: -----BEGIN CERTIFICATE----- -----END CERTIFICATE-----
  final String? publicCertificate;

  /// Creates a new [CertificateRawDataAppengineV1alpha].
  /// [privateKey] Unencrypted PEM encoded RSA private key. This field is set once on certificate creation and then encrypted. The key size must be 2048 bits or fewer. Must include the header and footer. Example: -----BEGIN RSA PRIVATE KEY----- -----END RSA PRIVATE KEY----- @InputOnly
  /// [publicCertificate] PEM encoded x.509 public key certificate. This field is set once on certificate creation. Must include the header and footer. Example: -----BEGIN CERTIFICATE----- -----END CERTIFICATE-----
  CertificateRawDataAppengineV1alpha({
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

  factory CertificateRawDataAppengineV1alpha.fromMap(Map<String, dynamic> map) {
    return CertificateRawDataAppengineV1alpha(
      privateKey:
          map['privateKey'] == null ? null : map['privateKey'] as String,
      publicCertificate: map['publicCertificate'] == null
          ? null
          : map['publicCertificate'] as String,
    );
  }
}
