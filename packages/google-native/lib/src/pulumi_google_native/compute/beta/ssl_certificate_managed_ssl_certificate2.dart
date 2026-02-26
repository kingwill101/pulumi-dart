// ignore_for_file: unused_element, unnecessary_cast

/// Configuration and status of a managed SSL certificate.
class SslCertificateManagedSslCertificate2 {
  /// The domains for which a managed SSL certificate will be generated. Each Google-managed SSL certificate supports up to the [maximum number of domains per Google-managed SSL certificate](/load-balancing/docs/quotas#ssl_certificates).
  final List<String>? domains;

  SslCertificateManagedSslCertificate2({
    this.domains,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final domainsValue = domains;
    if (domainsValue != null) {
      map['domains'] = domainsValue;
    }
    return map;
  }

  factory SslCertificateManagedSslCertificate2.fromMap(
      Map<String, dynamic> map) {
    return SslCertificateManagedSslCertificate2(
      domains: map['domains'] == null
          ? null
          : (map['domains'] as List).cast<String>(),
    );
  }
}
