// ignore_for_file: unused_element, unnecessary_cast

class DistributionViewerCertificate {
  /// ARN of the [AWS Certificate Manager](https://aws.amazon.com/certificate-manager/) certificate that you wish to use with this distribution. Specify this, `cloudfront_default_certificate`, or `iam_certificate_id`.  The ACM certificate must be in  US-EAST-1.
  final String? acmCertificateArn;

  /// `true` if you want viewers to use HTTPS to request your objects and you're using the CloudFront domain name for your distribution. Specify this, `acm_certificate_arn`, or `iam_certificate_id`.
  final bool? cloudfrontDefaultCertificate;

  /// IAM certificate identifier of the custom viewer certificate for this distribution if you are using a custom domain. Specify this, `acm_certificate_arn`, or `cloudfront_default_certificate`.
  final String? iamCertificateId;

  /// Minimum version of the SSL protocol that you want CloudFront to use for HTTPS connections. Can only be set if `cloudfront_default_certificate = false`. See all possible values in [this](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/secure-connections-supported-viewer-protocols-ciphers.html) table under "Security policy." Some examples include: `TLSv1.2_2019` and `TLSv1.2_2021`. Default: `TLSv1`. **NOTE**: If you are using a custom certificate (specified with `acm_certificate_arn` or `iam_certificate_id`), and have specified `sni-only` in `ssl_support_method`, `TLSv1` or later must be specified. If you have specified `vip` in `ssl_support_method`, only `SSLv3` or `TLSv1` can be specified. If you have specified `cloudfront_default_certificate`, `TLSv1` must be specified.
  final String? minimumProtocolVersion;

  /// How you want CloudFront to serve HTTPS requests. One of `vip`, `sni-only`, or `static-ip`. Required if you specify `acm_certificate_arn` or `iam_certificate_id`. **NOTE:** `vip` causes CloudFront to use a dedicated IP address and may incur extra charges.
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
