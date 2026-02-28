// ignore_for_file: unused_element, unnecessary_cast

class CaPoolPublishingOptions {
  /// Specifies the encoding format of each CertificateAuthority's CA
  /// certificate and CRLs. If this is omitted, CA certificates and CRLs
  /// will be published in PEM.
  /// Possible values are: `PEM`, `DER`.
  final String? encodingFormat;

  /// When true, publishes each CertificateAuthority's CA certificate and includes its URL in the "Authority Information Access"
  /// X.509 extension in all issued Certificates. If this is false, the CA certificate will not be published and the corresponding
  /// X.509 extension will not be written in issued certificates.
  final bool publishCaCert;

  /// When true, publishes each CertificateAuthority's CRL and includes its URL in the "CRL Distribution Points" X.509 extension
  /// in all issued Certificates. If this is false, CRLs will not be published and the corresponding X.509 extension will not
  /// be written in issued certificates. CRLs will expire 7 days from their creation. However, we will rebuild daily. CRLs are
  /// also rebuilt shortly after a certificate is revoked.
  final bool publishCrl;

  /// Creates a new [CaPoolPublishingOptions].
  /// [encodingFormat] Specifies the encoding format of each CertificateAuthority's CA
  /// [publishCaCert] When true, publishes each CertificateAuthority's CA certificate and includes its URL in the "Authority Information Access"
  /// [publishCrl] When true, publishes each CertificateAuthority's CRL and includes its URL in the "CRL Distribution Points" X.509 extension
  CaPoolPublishingOptions({
    this.encodingFormat,
    required this.publishCaCert,
    required this.publishCrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final encodingFormatValue = encodingFormat;
    if (encodingFormatValue != null) {
      map['encodingFormat'] = encodingFormatValue;
    }
    map['publishCaCert'] = publishCaCert;
    map['publishCrl'] = publishCrl;
    return map;
  }

  factory CaPoolPublishingOptions.fromMap(Map<String, dynamic> map) {
    return CaPoolPublishingOptions(
      encodingFormat: map['encodingFormat'] == null
          ? null
          : map['encodingFormat'] as String,
      publishCaCert: map['publishCaCert'] as bool,
      publishCrl: map['publishCrl'] as bool,
    );
  }
}
