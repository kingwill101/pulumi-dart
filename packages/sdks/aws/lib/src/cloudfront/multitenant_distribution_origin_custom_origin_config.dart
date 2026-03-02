// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MultitenantDistributionOriginCustomOriginConfig {
  /// HTTP port the custom origin listens on.
  final pulumi.Input<int> httpPort;
  /// HTTPS port the custom origin listens on.
  final pulumi.Input<int> httpsPort;
  /// Type of IP addresses used by your origins. Valid values are `ipv4` and `dualstack`.
  final pulumi.Input<String>? ipAddressType;
  /// Custom keep-alive timeout, in seconds. Default: 5.
  final pulumi.Input<int>? originKeepaliveTimeout;
  /// Origin protocol policy to apply to your origin. Valid values are `http-only`, `https-only`, and `match-viewer`.
  final pulumi.Input<String> originProtocolPolicy;
  /// Custom read timeout, in seconds. Default: 30.
  final pulumi.Input<int>? originReadTimeout;
  /// List of SSL/TLS protocols that you want CloudFront to use when communicating with your origin over HTTPS.
  final pulumi.Input<List<String>> originSslProtocols;

  /// Creates a new [MultitenantDistributionOriginCustomOriginConfig].
  /// [httpPort] HTTP port the custom origin listens on.
  /// [httpsPort] HTTPS port the custom origin listens on.
  /// [ipAddressType] Type of IP addresses used by your origins. Valid values are `ipv4` and `dualstack`.
  /// [originKeepaliveTimeout] Custom keep-alive timeout, in seconds. Default: 5.
  /// [originProtocolPolicy] Origin protocol policy to apply to your origin. Valid values are `http-only`, `https-only`, and `match-viewer`.
  /// [originReadTimeout] Custom read timeout, in seconds. Default: 30.
  /// [originSslProtocols] List of SSL/TLS protocols that you want CloudFront to use when communicating with your origin over HTTPS.
  MultitenantDistributionOriginCustomOriginConfig({
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

  factory MultitenantDistributionOriginCustomOriginConfig.fromMap(Map<String, dynamic> map) {
    return MultitenantDistributionOriginCustomOriginConfig(
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

