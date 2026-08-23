// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionViewerCertificate {
  /// ARN of the [AWS Certificate Manager](https://aws.amazon.com/certificate-manager/) certificate that you wish to use with this distribution. Specify this, `cloudfrontDefaultCertificate`, or `iamCertificateId`.  The ACM certificate must be in  US-EAST-1.
  final pulumi.Input<String>? acmCertificateArn;
  /// `true` if you want viewers to use HTTPS to request your objects and you're using the CloudFront domain name for your distribution. Specify this, `acmCertificateArn`, or `iamCertificateId`.
  final pulumi.Input<bool>? cloudfrontDefaultCertificate;
  /// IAM certificate identifier of the custom viewer certificate for this distribution if you are using a custom domain. Specify this, `acmCertificateArn`, or `cloudfrontDefaultCertificate`.
  final pulumi.Input<String>? iamCertificateId;
  /// Minimum version of the SSL protocol that you want CloudFront to use for HTTPS connections. Can only be set if `cloudfrontDefaultCertificate = false`. See all possible values in [this](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/secure-connections-supported-viewer-protocols-ciphers.html) table under "Security policy." Some examples include: `TLSv1.2_2019` and `TLSv1.2_2021`. Default: `TLSv1`. **NOTE**: If you are using a custom certificate (specified with `acmCertificateArn` or `iamCertificateId`), and have specified `sni-only` in `sslSupportMethod`, `TLSv1` or later must be specified. If you have specified `vip` in `sslSupportMethod`, only `SSLv3` or `TLSv1` can be specified. If you have specified `cloudfrontDefaultCertificate`, `TLSv1` must be specified.
  final pulumi.Input<String>? minimumProtocolVersion;
  /// How you want CloudFront to serve HTTPS requests. One of `vip`, `sni-only`, or `static-ip`. Required if you specify `acmCertificateArn` or `iamCertificateId`. **NOTE:** `vip` causes CloudFront to use a dedicated IP address and may incur extra charges.
  final pulumi.Input<String>? sslSupportMethod;

  /// Creates a new [DistributionViewerCertificate].
  /// [acmCertificateArn] ARN of the [AWS Certificate Manager](https://aws.amazon.com/certificate-manager/) certificate that you wish to use with this distribution. Specify this, `cloudfrontDefaultCertificate`, or `iamCertificateId`.  The ACM certificate must be in  US-EAST-1.
  /// [cloudfrontDefaultCertificate] `true` if you want viewers to use HTTPS to request your objects and you're using the CloudFront domain name for your distribution. Specify this, `acmCertificateArn`, or `iamCertificateId`.
  /// [iamCertificateId] IAM certificate identifier of the custom viewer certificate for this distribution if you are using a custom domain. Specify this, `acmCertificateArn`, or `cloudfrontDefaultCertificate`.
  /// [minimumProtocolVersion] Minimum version of the SSL protocol that you want CloudFront to use for HTTPS connections. Can only be set if `cloudfrontDefaultCertificate = false`. See all possible values in [this](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/secure-connections-supported-viewer-protocols-ciphers.html) table under "Security policy." Some examples include: `TLSv1.2_2019` and `TLSv1.2_2021`. Default: `TLSv1`. **NOTE**: If you are using a custom certificate (specified with `acmCertificateArn` or `iamCertificateId`), and have specified `sni-only` in `sslSupportMethod`, `TLSv1` or later must be specified. If you have specified `vip` in `sslSupportMethod`, only `SSLv3` or `TLSv1` can be specified. If you have specified `cloudfrontDefaultCertificate`, `TLSv1` must be specified.
  /// [sslSupportMethod] How you want CloudFront to serve HTTPS requests. One of `vip`, `sni-only`, or `static-ip`. Required if you specify `acmCertificateArn` or `iamCertificateId`. **NOTE:** `vip` causes CloudFront to use a dedicated IP address and may incur extra charges.
  const DistributionViewerCertificate({
    this.acmCertificateArn,
    this.cloudfrontDefaultCertificate,
    this.iamCertificateId,
    this.minimumProtocolVersion,
    this.sslSupportMethod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acmCertificateArn': ?acmCertificateArn,
      'cloudfrontDefaultCertificate': ?cloudfrontDefaultCertificate,
      'iamCertificateId': ?iamCertificateId,
      'minimumProtocolVersion': ?minimumProtocolVersion,
      'sslSupportMethod': ?sslSupportMethod,
    };
  }

  factory DistributionViewerCertificate.fromMap(Map<String, dynamic> map) {
    return DistributionViewerCertificate(
      acmCertificateArn: (() { final guardedValue = map['acmCertificateArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cloudfrontDefaultCertificate: (() { final guardedValue = map['cloudfrontDefaultCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      iamCertificateId: (() { final guardedValue = map['iamCertificateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minimumProtocolVersion: (() { final guardedValue = map['minimumProtocolVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslSupportMethod: (() { final guardedValue = map['sslSupportMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
