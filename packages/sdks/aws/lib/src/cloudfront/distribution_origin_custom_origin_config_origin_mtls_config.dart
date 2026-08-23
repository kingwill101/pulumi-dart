// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionOriginCustomOriginConfigOriginMtlsConfig {
  /// ARN of the ACM certificate to use for mutual TLS authentication with the origin. The certificate must have Extended Key Usage set to TLS Client Authentication.
  final pulumi.Input<String> clientCertificateArn;

  /// Creates a new [DistributionOriginCustomOriginConfigOriginMtlsConfig].
  /// [clientCertificateArn] ARN of the ACM certificate to use for mutual TLS authentication with the origin. The certificate must have Extended Key Usage set to TLS Client Authentication.
  const DistributionOriginCustomOriginConfigOriginMtlsConfig({
    required this.clientCertificateArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientCertificateArn': clientCertificateArn,
    };
  }

  factory DistributionOriginCustomOriginConfigOriginMtlsConfig.fromMap(Map<String, dynamic> map) {
    return DistributionOriginCustomOriginConfigOriginMtlsConfig(
      clientCertificateArn: pulumi.Input.fromValue(map['clientCertificateArn'] as String),
    );
  }
}
