// ignore_for_file: unused_element, unnecessary_cast

class ManagedSslCertificateManaged {
  /// Domains for which a managed SSL certificate will be valid.  Currently,
  /// there can be up to 100 domains in this list.
  final List<String> domains;

  /// Creates a new [ManagedSslCertificateManaged].
  /// [domains] Domains for which a managed SSL certificate will be valid.  Currently,
  ManagedSslCertificateManaged({required this.domains});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'domains': domains};
  }

  factory ManagedSslCertificateManaged.fromMap(Map<String, dynamic> map) {
    return ManagedSslCertificateManaged(
      domains: (map['domains'] as List).cast<String>(),
    );
  }
}
