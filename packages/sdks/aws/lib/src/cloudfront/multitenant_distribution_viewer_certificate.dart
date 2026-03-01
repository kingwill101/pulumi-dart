// ignore_for_file: unused_element, unnecessary_cast


class MultitenantDistributionViewerCertificate {
  /// ARN of the AWS Certificate Manager certificate that you wish to use with this distribution. Required when using a custom SSL certificate.
  final String? acmCertificateArn;
  /// Whether to use the CloudFront default certificate. Cannot be used with `acm_certificate_arn`.
  final bool? cloudfrontDefaultCertificate;
  /// Minimum version of the SSL protocol that you want CloudFront to use for HTTPS connections. Default: `TLSv1`.
  final String? minimumProtocolVersion;
  /// How you want CloudFront to serve HTTPS requests. Valid values are `sni-only` and `vip`. Required when `acm_certificate_arn` is specified.
  final String? sslSupportMethod;

  /// Creates a new [MultitenantDistributionViewerCertificate].
  /// [acmCertificateArn] ARN of the AWS Certificate Manager certificate that you wish to use with this distribution. Required when using a custom SSL certificate.
  /// [cloudfrontDefaultCertificate] Whether to use the CloudFront default certificate. Cannot be used with `acm_certificate_arn`.
  /// [minimumProtocolVersion] Minimum version of the SSL protocol that you want CloudFront to use for HTTPS connections. Default: `TLSv1`.
  /// [sslSupportMethod] How you want CloudFront to serve HTTPS requests. Valid values are `sni-only` and `vip`. Required when `acm_certificate_arn` is specified.
  MultitenantDistributionViewerCertificate({
    this.acmCertificateArn,
    this.cloudfrontDefaultCertificate,
    this.minimumProtocolVersion,
    this.sslSupportMethod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acmCertificateArn': ?acmCertificateArn,
      'cloudfrontDefaultCertificate': ?cloudfrontDefaultCertificate,
      'minimumProtocolVersion': ?minimumProtocolVersion,
      'sslSupportMethod': ?sslSupportMethod,
    };
  }

  factory MultitenantDistributionViewerCertificate.fromMap(Map<String, dynamic> map) {
    return MultitenantDistributionViewerCertificate(
      acmCertificateArn: map['acmCertificateArn'] == null ? null : map['acmCertificateArn'] as String,
      cloudfrontDefaultCertificate: map['cloudfrontDefaultCertificate'] == null ? null : map['cloudfrontDefaultCertificate'] as bool,
      minimumProtocolVersion: map['minimumProtocolVersion'] == null ? null : map['minimumProtocolVersion'] as String,
      sslSupportMethod: map['sslSupportMethod'] == null ? null : map['sslSupportMethod'] as String,
    );
  }
}

