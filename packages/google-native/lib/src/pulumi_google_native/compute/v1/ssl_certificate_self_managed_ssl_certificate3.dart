// ignore_for_file: unused_element, unnecessary_cast

/// Configuration and status of a self-managed SSL certificate.
class SslCertificateSelfManagedSslCertificate3 {
  /// A local certificate file. The certificate must be in PEM format. The certificate chain must be no greater than 5 certs long. The chain must include at least one intermediate cert.
  final String? certificate;

  /// A write-only private key in PEM format. Only insert requests will include this field.
  final String? privateKey;

  SslCertificateSelfManagedSslCertificate3({
    this.certificate,
    this.privateKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final certificateValue = certificate;
    if (certificateValue != null) {
      map['certificate'] = certificateValue;
    }
    final privateKeyValue = privateKey;
    if (privateKeyValue != null) {
      map['privateKey'] = privateKeyValue;
    }
    return map;
  }

  factory SslCertificateSelfManagedSslCertificate3.fromMap(
      Map<String, dynamic> map) {
    return SslCertificateSelfManagedSslCertificate3(
      certificate:
          map['certificate'] == null ? null : map['certificate'] as String,
      privateKey:
          map['privateKey'] == null ? null : map['privateKey'] as String,
    );
  }
}
