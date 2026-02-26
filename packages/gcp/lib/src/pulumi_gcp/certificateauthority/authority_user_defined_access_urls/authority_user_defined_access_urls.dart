// ignore_for_file: unused_element, unnecessary_cast

class AuthorityUserDefinedAccessUrls {
  /// A list of URLs where this CertificateAuthority's CA certificate is published that is specified by users.
  final List<String>? aiaIssuingCertificateUrls;

  /// A list of URLs where this CertificateAuthority's CRLs are published that is specified by users.
  final List<String>? crlAccessUrls;

  AuthorityUserDefinedAccessUrls({
    this.aiaIssuingCertificateUrls,
    this.crlAccessUrls,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aiaIssuingCertificateUrlsValue = aiaIssuingCertificateUrls;
    if (aiaIssuingCertificateUrlsValue != null) {
      map['aiaIssuingCertificateUrls'] = aiaIssuingCertificateUrlsValue;
    }
    final crlAccessUrlsValue = crlAccessUrls;
    if (crlAccessUrlsValue != null) {
      map['crlAccessUrls'] = crlAccessUrlsValue;
    }
    return map;
  }

  factory AuthorityUserDefinedAccessUrls.fromMap(Map<String, dynamic> map) {
    return AuthorityUserDefinedAccessUrls(
      aiaIssuingCertificateUrls: map['aiaIssuingCertificateUrls'] == null
          ? null
          : (map['aiaIssuingCertificateUrls'] as List).cast<String>(),
      crlAccessUrls: map['crlAccessUrls'] == null
          ? null
          : (map['crlAccessUrls'] as List).cast<String>(),
    );
  }
}
