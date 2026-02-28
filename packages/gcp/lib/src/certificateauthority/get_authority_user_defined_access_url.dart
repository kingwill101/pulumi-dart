// ignore_for_file: unused_element, unnecessary_cast

class GetAuthorityUserDefinedAccessUrl {
  /// A list of URLs where this CertificateAuthority's CA certificate is published that is specified by users.
  final List<String> aiaIssuingCertificateUrls;

  /// A list of URLs where this CertificateAuthority's CRLs are published that is specified by users.
  final List<String> crlAccessUrls;

  /// Creates a new [GetAuthorityUserDefinedAccessUrl].
  /// [aiaIssuingCertificateUrls] A list of URLs where this CertificateAuthority's CA certificate is published that is specified by users.
  /// [crlAccessUrls] A list of URLs where this CertificateAuthority's CRLs are published that is specified by users.
  GetAuthorityUserDefinedAccessUrl({
    required this.aiaIssuingCertificateUrls,
    required this.crlAccessUrls,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['aiaIssuingCertificateUrls'] = aiaIssuingCertificateUrls;
    map['crlAccessUrls'] = crlAccessUrls;
    return map;
  }

  factory GetAuthorityUserDefinedAccessUrl.fromMap(Map<String, dynamic> map) {
    return GetAuthorityUserDefinedAccessUrl(
      aiaIssuingCertificateUrls:
          (map['aiaIssuingCertificateUrls'] as List).cast<String>(),
      crlAccessUrls: (map['crlAccessUrls'] as List).cast<String>(),
    );
  }
}
