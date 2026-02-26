// ignore_for_file: unused_element, unnecessary_cast

class MultitenantDistributionViewerCertificate {
  /// ARN of the AWS Certificate Manager certificate that you wish to use with this distribution. Required when using a custom SSL certificate.
  final String? acmCertificateArn;

  /// Whether to use the CloudFront default certificate. Cannot be used with <span pulumi-lang-nodejs="`acmCertificateArn`" pulumi-lang-dotnet="`AcmCertificateArn`" pulumi-lang-go="`acmCertificateArn`" pulumi-lang-python="`acm_certificate_arn`" pulumi-lang-yaml="`acmCertificateArn`" pulumi-lang-java="`acmCertificateArn`">`acm_certificate_arn`</span>.
  final bool? cloudfrontDefaultCertificate;

  /// Minimum version of the SSL protocol that you want CloudFront to use for HTTPS connections. Default: `TLSv1`.
  final String? minimumProtocolVersion;

  /// How you want CloudFront to serve HTTPS requests. Valid values are `sni-only` and <span pulumi-lang-nodejs="`vip`" pulumi-lang-dotnet="`Vip`" pulumi-lang-go="`vip`" pulumi-lang-python="`vip`" pulumi-lang-yaml="`vip`" pulumi-lang-java="`vip`">`vip`</span>. Required when <span pulumi-lang-nodejs="`acmCertificateArn`" pulumi-lang-dotnet="`AcmCertificateArn`" pulumi-lang-go="`acmCertificateArn`" pulumi-lang-python="`acm_certificate_arn`" pulumi-lang-yaml="`acmCertificateArn`" pulumi-lang-java="`acmCertificateArn`">`acm_certificate_arn`</span> is specified.
  final String? sslSupportMethod;

  MultitenantDistributionViewerCertificate({
    this.acmCertificateArn,
    this.cloudfrontDefaultCertificate,
    this.minimumProtocolVersion,
    this.sslSupportMethod,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acmCertificateArnValue = acmCertificateArn;
    if (acmCertificateArnValue != null) {
      map['acmCertificateArn'] = acmCertificateArnValue;
    }
    final cloudfrontDefaultCertificateValue = cloudfrontDefaultCertificate;
    if (cloudfrontDefaultCertificateValue != null) {
      map['cloudfrontDefaultCertificate'] = cloudfrontDefaultCertificateValue;
    }
    final minimumProtocolVersionValue = minimumProtocolVersion;
    if (minimumProtocolVersionValue != null) {
      map['minimumProtocolVersion'] = minimumProtocolVersionValue;
    }
    final sslSupportMethodValue = sslSupportMethod;
    if (sslSupportMethodValue != null) {
      map['sslSupportMethod'] = sslSupportMethodValue;
    }
    return map;
  }

  factory MultitenantDistributionViewerCertificate.fromMap(
      Map<String, dynamic> map) {
    return MultitenantDistributionViewerCertificate(
      acmCertificateArn: map['acmCertificateArn'] == null
          ? null
          : map['acmCertificateArn'] as String,
      cloudfrontDefaultCertificate: map['cloudfrontDefaultCertificate'] == null
          ? null
          : map['cloudfrontDefaultCertificate'] as bool,
      minimumProtocolVersion: map['minimumProtocolVersion'] == null
          ? null
          : map['minimumProtocolVersion'] as String,
      sslSupportMethod: map['sslSupportMethod'] == null
          ? null
          : map['sslSupportMethod'] as String,
    );
  }
}
