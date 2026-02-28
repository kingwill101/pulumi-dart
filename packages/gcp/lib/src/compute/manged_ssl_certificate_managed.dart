// ignore_for_file: unused_element, unnecessary_cast

class MangedSslCertificateManaged {
  /// Domains for which a managed SSL certificate will be valid.  Currently,
  /// there can be up to 100 domains in this list.
  final List<String> domains;

  /// Creates a new [MangedSslCertificateManaged].
  /// [domains] Domains for which a managed SSL certificate will be valid.  Currently,
  MangedSslCertificateManaged({
    required this.domains,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domains'] = domains;
    return map;
  }

  factory MangedSslCertificateManaged.fromMap(Map<String, dynamic> map) {
    return MangedSslCertificateManaged(
      domains: (map['domains'] as List).cast<String>(),
    );
  }
}
