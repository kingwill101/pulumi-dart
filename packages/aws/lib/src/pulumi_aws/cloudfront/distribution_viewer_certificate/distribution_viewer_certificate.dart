// ignore_for_file: unused_element, unnecessary_cast

class DistributionViewerCertificate {
  /// ARN of the [AWS Certificate Manager](https://aws.amazon.com/certificate-manager/) certificate that you wish to use with this distribution. Specify this, <span pulumi-lang-nodejs="`cloudfrontDefaultCertificate`" pulumi-lang-dotnet="`CloudfrontDefaultCertificate`" pulumi-lang-go="`cloudfrontDefaultCertificate`" pulumi-lang-python="`cloudfront_default_certificate`" pulumi-lang-yaml="`cloudfrontDefaultCertificate`" pulumi-lang-java="`cloudfrontDefaultCertificate`">`cloudfront_default_certificate`</span>, or <span pulumi-lang-nodejs="`iamCertificateId`" pulumi-lang-dotnet="`IamCertificateId`" pulumi-lang-go="`iamCertificateId`" pulumi-lang-python="`iam_certificate_id`" pulumi-lang-yaml="`iamCertificateId`" pulumi-lang-java="`iamCertificateId`">`iam_certificate_id`</span>.  The ACM certificate must be in  US-EAST-1.
  final String? acmCertificateArn;

  /// <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> if you want viewers to use HTTPS to request your objects and you're using the CloudFront domain name for your distribution. Specify this, <span pulumi-lang-nodejs="`acmCertificateArn`" pulumi-lang-dotnet="`AcmCertificateArn`" pulumi-lang-go="`acmCertificateArn`" pulumi-lang-python="`acm_certificate_arn`" pulumi-lang-yaml="`acmCertificateArn`" pulumi-lang-java="`acmCertificateArn`">`acm_certificate_arn`</span>, or <span pulumi-lang-nodejs="`iamCertificateId`" pulumi-lang-dotnet="`IamCertificateId`" pulumi-lang-go="`iamCertificateId`" pulumi-lang-python="`iam_certificate_id`" pulumi-lang-yaml="`iamCertificateId`" pulumi-lang-java="`iamCertificateId`">`iam_certificate_id`</span>.
  final bool? cloudfrontDefaultCertificate;

  /// IAM certificate identifier of the custom viewer certificate for this distribution if you are using a custom domain. Specify this, <span pulumi-lang-nodejs="`acmCertificateArn`" pulumi-lang-dotnet="`AcmCertificateArn`" pulumi-lang-go="`acmCertificateArn`" pulumi-lang-python="`acm_certificate_arn`" pulumi-lang-yaml="`acmCertificateArn`" pulumi-lang-java="`acmCertificateArn`">`acm_certificate_arn`</span>, or <span pulumi-lang-nodejs="`cloudfrontDefaultCertificate`" pulumi-lang-dotnet="`CloudfrontDefaultCertificate`" pulumi-lang-go="`cloudfrontDefaultCertificate`" pulumi-lang-python="`cloudfront_default_certificate`" pulumi-lang-yaml="`cloudfrontDefaultCertificate`" pulumi-lang-java="`cloudfrontDefaultCertificate`">`cloudfront_default_certificate`</span>.
  final String? iamCertificateId;

  /// Minimum version of the SSL protocol that you want CloudFront to use for HTTPS connections. Can only be set if <span pulumi-lang-nodejs="`cloudfrontDefaultCertificate " pulumi-lang-dotnet="`CloudfrontDefaultCertificate " pulumi-lang-go="`cloudfrontDefaultCertificate " pulumi-lang-python="`cloudfront_default_certificate " pulumi-lang-yaml="`cloudfrontDefaultCertificate " pulumi-lang-java="`cloudfrontDefaultCertificate ">`cloudfront_default_certificate </span>= false`. See all possible values in [this](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/secure-connections-supported-viewer-protocols-ciphers.html) table under "Security policy." Some examples include: `TLSv1.2_2019` and `TLSv1.2_2021`. Default: `TLSv1`. **NOTE**: If you are using a custom certificate (specified with <span pulumi-lang-nodejs="`acmCertificateArn`" pulumi-lang-dotnet="`AcmCertificateArn`" pulumi-lang-go="`acmCertificateArn`" pulumi-lang-python="`acm_certificate_arn`" pulumi-lang-yaml="`acmCertificateArn`" pulumi-lang-java="`acmCertificateArn`">`acm_certificate_arn`</span> or <span pulumi-lang-nodejs="`iamCertificateId`" pulumi-lang-dotnet="`IamCertificateId`" pulumi-lang-go="`iamCertificateId`" pulumi-lang-python="`iam_certificate_id`" pulumi-lang-yaml="`iamCertificateId`" pulumi-lang-java="`iamCertificateId`">`iam_certificate_id`</span>), and have specified `sni-only` in <span pulumi-lang-nodejs="`sslSupportMethod`" pulumi-lang-dotnet="`SslSupportMethod`" pulumi-lang-go="`sslSupportMethod`" pulumi-lang-python="`ssl_support_method`" pulumi-lang-yaml="`sslSupportMethod`" pulumi-lang-java="`sslSupportMethod`">`ssl_support_method`</span>, `TLSv1` or later must be specified. If you have specified <span pulumi-lang-nodejs="`vip`" pulumi-lang-dotnet="`Vip`" pulumi-lang-go="`vip`" pulumi-lang-python="`vip`" pulumi-lang-yaml="`vip`" pulumi-lang-java="`vip`">`vip`</span> in <span pulumi-lang-nodejs="`sslSupportMethod`" pulumi-lang-dotnet="`SslSupportMethod`" pulumi-lang-go="`sslSupportMethod`" pulumi-lang-python="`ssl_support_method`" pulumi-lang-yaml="`sslSupportMethod`" pulumi-lang-java="`sslSupportMethod`">`ssl_support_method`</span>, only `SSLv3` or `TLSv1` can be specified. If you have specified <span pulumi-lang-nodejs="`cloudfrontDefaultCertificate`" pulumi-lang-dotnet="`CloudfrontDefaultCertificate`" pulumi-lang-go="`cloudfrontDefaultCertificate`" pulumi-lang-python="`cloudfront_default_certificate`" pulumi-lang-yaml="`cloudfrontDefaultCertificate`" pulumi-lang-java="`cloudfrontDefaultCertificate`">`cloudfront_default_certificate`</span>, `TLSv1` must be specified.
  final String? minimumProtocolVersion;

  /// How you want CloudFront to serve HTTPS requests. One of <span pulumi-lang-nodejs="`vip`" pulumi-lang-dotnet="`Vip`" pulumi-lang-go="`vip`" pulumi-lang-python="`vip`" pulumi-lang-yaml="`vip`" pulumi-lang-java="`vip`">`vip`</span>, `sni-only`, or `static-ip`. Required if you specify <span pulumi-lang-nodejs="`acmCertificateArn`" pulumi-lang-dotnet="`AcmCertificateArn`" pulumi-lang-go="`acmCertificateArn`" pulumi-lang-python="`acm_certificate_arn`" pulumi-lang-yaml="`acmCertificateArn`" pulumi-lang-java="`acmCertificateArn`">`acm_certificate_arn`</span> or <span pulumi-lang-nodejs="`iamCertificateId`" pulumi-lang-dotnet="`IamCertificateId`" pulumi-lang-go="`iamCertificateId`" pulumi-lang-python="`iam_certificate_id`" pulumi-lang-yaml="`iamCertificateId`" pulumi-lang-java="`iamCertificateId`">`iam_certificate_id`</span>. **NOTE:** <span pulumi-lang-nodejs="`vip`" pulumi-lang-dotnet="`Vip`" pulumi-lang-go="`vip`" pulumi-lang-python="`vip`" pulumi-lang-yaml="`vip`" pulumi-lang-java="`vip`">`vip`</span> causes CloudFront to use a dedicated IP address and may incur extra charges.
  final String? sslSupportMethod;

  DistributionViewerCertificate({
    this.acmCertificateArn,
    this.cloudfrontDefaultCertificate,
    this.iamCertificateId,
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
    final iamCertificateIdValue = iamCertificateId;
    if (iamCertificateIdValue != null) {
      map['iamCertificateId'] = iamCertificateIdValue;
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

  factory DistributionViewerCertificate.fromMap(Map<String, dynamic> map) {
    return DistributionViewerCertificate(
      acmCertificateArn: map['acmCertificateArn'] == null
          ? null
          : map['acmCertificateArn'] as String,
      cloudfrontDefaultCertificate: map['cloudfrontDefaultCertificate'] == null
          ? null
          : map['cloudfrontDefaultCertificate'] as bool,
      iamCertificateId: map['iamCertificateId'] == null
          ? null
          : map['iamCertificateId'] as String,
      minimumProtocolVersion: map['minimumProtocolVersion'] == null
          ? null
          : map['minimumProtocolVersion'] as String,
      sslSupportMethod: map['sslSupportMethod'] == null
          ? null
          : map['sslSupportMethod'] as String,
    );
  }
}
