// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MultitenantDistributionViewerCertificate {
  /// ARN of the AWS Certificate Manager certificate that you wish to use with this distribution. Required when using a custom SSL certificate.
  final pulumi.Input<String>? acmCertificateArn;
  /// Whether to use the CloudFront default certificate. Cannot be used with `acmCertificateArn`.
  final pulumi.Input<bool>? cloudfrontDefaultCertificate;
  /// Minimum version of the SSL protocol that you want CloudFront to use for HTTPS connections. Default: `TLSv1`.
  final pulumi.Input<String>? minimumProtocolVersion;
  /// How you want CloudFront to serve HTTPS requests. Valid values are `sni-only` and `vip`. Required when `acmCertificateArn` is specified.
  final pulumi.Input<String>? sslSupportMethod;

  /// Creates a new [MultitenantDistributionViewerCertificate].
  /// [acmCertificateArn] ARN of the AWS Certificate Manager certificate that you wish to use with this distribution. Required when using a custom SSL certificate.
  /// [cloudfrontDefaultCertificate] Whether to use the CloudFront default certificate. Cannot be used with `acmCertificateArn`.
  /// [minimumProtocolVersion] Minimum version of the SSL protocol that you want CloudFront to use for HTTPS connections. Default: `TLSv1`.
  /// [sslSupportMethod] How you want CloudFront to serve HTTPS requests. Valid values are `sni-only` and `vip`. Required when `acmCertificateArn` is specified.
  const MultitenantDistributionViewerCertificate({
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
      acmCertificateArn: (() { final guardedValue = map['acmCertificateArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cloudfrontDefaultCertificate: (() { final guardedValue = map['cloudfrontDefaultCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      minimumProtocolVersion: (() { final guardedValue = map['minimumProtocolVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslSupportMethod: (() { final guardedValue = map['sslSupportMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
