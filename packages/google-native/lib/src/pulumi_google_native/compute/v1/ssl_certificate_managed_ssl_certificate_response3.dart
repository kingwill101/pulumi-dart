// ignore_for_file: unused_element, unnecessary_cast

/// Configuration and status of a managed SSL certificate.
class SslCertificateManagedSslCertificateResponse3 {
  /// [Output only] Detailed statuses of the domains specified for managed certificate resource.
  final Map<String, String> domainStatus;

  /// The domains for which a managed SSL certificate will be generated. Each Google-managed SSL certificate supports up to the [maximum number of domains per Google-managed SSL certificate](/load-balancing/docs/quotas#ssl_certificates).
  final List<String> domains;

  /// [Output only] Status of the managed certificate resource.
  final String status;

  SslCertificateManagedSslCertificateResponse3({
    required this.domainStatus,
    required this.domains,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domainStatus'] = domainStatus;
    map['domains'] = domains;
    map['status'] = status;
    return map;
  }

  factory SslCertificateManagedSslCertificateResponse3.fromMap(
      Map<String, dynamic> map) {
    return SslCertificateManagedSslCertificateResponse3(
      domainStatus: (map['domainStatus'] as Map).cast<String, String>(),
      domains: (map['domains'] as List).cast<String>(),
      status: map['status'] as String,
    );
  }
}
