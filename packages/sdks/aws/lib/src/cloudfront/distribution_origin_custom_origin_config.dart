// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionOriginCustomOriginConfig {
  /// HTTP port the custom origin listens on.
  final pulumi.Input<int> httpPort;
  /// HTTPS port the custom origin listens on.
  final pulumi.Input<int> httpsPort;
  /// IP protocol CloudFront uses when connecting to your origin. Valid values: `ipv4`, `ipv6`, `dualstack`.
  final pulumi.Input<String>? ipAddressType;
  final pulumi.Input<int>? originKeepaliveTimeout;
  /// Origin protocol policy to apply to your origin. One of `http-only`, `https-only`, or `match-viewer`.
  final pulumi.Input<String> originProtocolPolicy;
  final pulumi.Input<int>? originReadTimeout;
  /// List of SSL/TLS protocols that CloudFront can use when connecting to your origin over HTTPS. Valid values: `SSLv3`, `TLSv1`, `TLSv1.1`, `TLSv1.2`. For more information, see [Minimum Origin SSL Protocol](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesOriginSSLProtocols) in the Amazon CloudFront Developer Guide.
  final pulumi.Input<List<String>> originSslProtocols;

  /// Creates a new [DistributionOriginCustomOriginConfig].
  /// [httpPort] HTTP port the custom origin listens on.
  /// [httpsPort] HTTPS port the custom origin listens on.
  /// [ipAddressType] IP protocol CloudFront uses when connecting to your origin. Valid values: `ipv4`, `ipv6`, `dualstack`.
  /// [originKeepaliveTimeout] Optional.
  /// [originProtocolPolicy] Origin protocol policy to apply to your origin. One of `http-only`, `https-only`, or `match-viewer`.
  /// [originReadTimeout] Optional.
  /// [originSslProtocols] List of SSL/TLS protocols that CloudFront can use when connecting to your origin over HTTPS. Valid values: `SSLv3`, `TLSv1`, `TLSv1.1`, `TLSv1.2`. For more information, see [Minimum Origin SSL Protocol](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesOriginSSLProtocols) in the Amazon CloudFront Developer Guide.
  DistributionOriginCustomOriginConfig({
    required this.httpPort,
    required this.httpsPort,
    this.ipAddressType,
    this.originKeepaliveTimeout,
    required this.originProtocolPolicy,
    this.originReadTimeout,
    required this.originSslProtocols,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpPort': httpPort,
      'httpsPort': httpsPort,
      'ipAddressType': ?ipAddressType,
      'originKeepaliveTimeout': ?originKeepaliveTimeout,
      'originProtocolPolicy': originProtocolPolicy,
      'originReadTimeout': ?originReadTimeout,
      'originSslProtocols': originSslProtocols,
    };
  }

  factory DistributionOriginCustomOriginConfig.fromMap(Map<String, dynamic> map) {
    return DistributionOriginCustomOriginConfig(
      httpPort: (map['httpPort'] as int).input(),
      httpsPort: (map['httpsPort'] as int).input(),
      ipAddressType: map['ipAddressType'] == null ? null : (map['ipAddressType'] as String).input(),
      originKeepaliveTimeout: map['originKeepaliveTimeout'] == null ? null : (map['originKeepaliveTimeout'] as int).input(),
      originProtocolPolicy: (map['originProtocolPolicy'] as String).input(),
      originReadTimeout: map['originReadTimeout'] == null ? null : (map['originReadTimeout'] as int).input(),
      originSslProtocols: ((map['originSslProtocols'] as List).cast<String>()).input(),
    );
  }
}

