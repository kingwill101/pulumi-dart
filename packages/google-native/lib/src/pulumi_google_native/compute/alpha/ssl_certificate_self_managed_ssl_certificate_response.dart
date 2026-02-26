// ignore_for_file: unused_element, unnecessary_cast

/// Configuration and status of a self-managed SSL certificate.
class SslCertificateSelfManagedSslCertificateResponse {
  /// A local certificate file. The certificate must be in PEM format. The certificate chain must be no greater than 5 certs long. The chain must include at least one intermediate cert.
  final String certificate;

  /// A write-only private key in PEM format. Only insert requests will include this field.
  final String privateKey;

  SslCertificateSelfManagedSslCertificateResponse({
    required this.certificate,
    required this.privateKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificate'] = certificate;
    map['privateKey'] = privateKey;
    return map;
  }

  factory SslCertificateSelfManagedSslCertificateResponse.fromMap(
      Map<String, dynamic> map) {
    return SslCertificateSelfManagedSslCertificateResponse(
      certificate: map['certificate'] as String,
      privateKey: map['privateKey'] as String,
    );
  }
}
