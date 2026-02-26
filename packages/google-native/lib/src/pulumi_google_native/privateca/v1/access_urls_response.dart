// ignore_for_file: unused_element, unnecessary_cast

/// URLs where a CertificateAuthority will publish content.
class AccessUrlsResponse {
  /// The URL where this CertificateAuthority's CA certificate is published. This will only be set for CAs that have been activated.
  final String caCertificateAccessUrl;

  /// The URLs where this CertificateAuthority's CRLs are published. This will only be set for CAs that have been activated.
  final List<String> crlAccessUrls;

  AccessUrlsResponse({
    required this.caCertificateAccessUrl,
    required this.crlAccessUrls,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['caCertificateAccessUrl'] = caCertificateAccessUrl;
    map['crlAccessUrls'] = crlAccessUrls;
    return map;
  }

  factory AccessUrlsResponse.fromMap(Map<String, dynamic> map) {
    return AccessUrlsResponse(
      caCertificateAccessUrl: map['caCertificateAccessUrl'] as String,
      crlAccessUrls: (map['crlAccessUrls'] as List).cast<String>(),
    );
  }
}
