// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MultitenantDistributionViewerCertificate {
  /// ARN of the AWS Certificate Manager certificate that you wish to use with this distribution. Required when using a custom SSL certificate.
  final pulumi.Input<String>? acmCertificateArn;
  /// Whether to use the CloudFront default certificate. Cannot be used with `acm_certificate_arn`.
  final pulumi.Input<bool>? cloudfrontDefaultCertificate;
  /// Minimum version of the SSL protocol that you want CloudFront to use for HTTPS connections. Default: `TLSv1`.
  final pulumi.Input<String>? minimumProtocolVersion;
  /// How you want CloudFront to serve HTTPS requests. Valid values are `sni-only` and `vip`. Required when `acm_certificate_arn` is specified.
  final pulumi.Input<String>? sslSupportMethod;

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
      acmCertificateArn: map['acmCertificateArn'] == null ? null : ((map['acmCertificateArn'] as String).input()).input(),
      cloudfrontDefaultCertificate: map['cloudfrontDefaultCertificate'] == null ? null : ((map['cloudfrontDefaultCertificate'] as bool).input()).input(),
      minimumProtocolVersion: map['minimumProtocolVersion'] == null ? null : ((map['minimumProtocolVersion'] as String).input()).input(),
      sslSupportMethod: map['sslSupportMethod'] == null ? null : ((map['sslSupportMethod'] as String).input()).input(),
    );
  }
}

