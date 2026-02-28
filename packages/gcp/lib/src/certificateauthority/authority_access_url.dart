// ignore_for_file: unused_element, unnecessary_cast

class AuthorityAccessUrl {
  /// (Output)
  /// The URL where this CertificateAuthority's CA certificate is published. This will only be
  /// set for CAs that have been activated.
  final String? caCertificateAccessUrl;

  /// (Output)
  /// The URL where this CertificateAuthority's CRLs are published. This will only be set for
  /// CAs that have been activated.
  final List<String>? crlAccessUrls;

  /// Creates a new [AuthorityAccessUrl].
  /// [caCertificateAccessUrl] (Output)
  /// [crlAccessUrls] (Output)
  AuthorityAccessUrl({
    this.caCertificateAccessUrl,
    this.crlAccessUrls,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final caCertificateAccessUrlValue = caCertificateAccessUrl;
    if (caCertificateAccessUrlValue != null) {
      map['caCertificateAccessUrl'] = caCertificateAccessUrlValue;
    }
    final crlAccessUrlsValue = crlAccessUrls;
    if (crlAccessUrlsValue != null) {
      map['crlAccessUrls'] = crlAccessUrlsValue;
    }
    return map;
  }

  factory AuthorityAccessUrl.fromMap(Map<String, dynamic> map) {
    return AuthorityAccessUrl(
      caCertificateAccessUrl: map['caCertificateAccessUrl'] == null
          ? null
          : map['caCertificateAccessUrl'] as String,
      crlAccessUrls: map['crlAccessUrls'] == null
          ? null
          : (map['crlAccessUrls'] as List).cast<String>(),
    );
  }
}
