// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multitenant_distribution_origin_custom_origin_config_origin_mtls_config.dart';

class MultitenantDistributionOriginCustomOriginConfig {
  /// HTTP port the custom origin listens on.
  final pulumi.Input<int> httpPort;
  /// HTTPS port the custom origin listens on.
  final pulumi.Input<int> httpsPort;
  /// Type of IP addresses used by your origins. Valid values are `ipv4` and `dualstack`.
  final pulumi.Input<String>? ipAddressType;
  /// Custom keep-alive timeout, in seconds. Default: 5.
  final pulumi.Input<int>? originKeepaliveTimeout;
  /// Origin mTLS configuration for mutual TLS authentication between CloudFront and your origin. See Origin mTLS Config below.
  final pulumi.Input<MultitenantDistributionOriginCustomOriginConfigOriginMtlsConfig>? originMtlsConfig;
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
  /// [originMtlsConfig] Origin mTLS configuration for mutual TLS authentication between CloudFront and your origin. See Origin mTLS Config below.
  /// [originProtocolPolicy] Origin protocol policy to apply to your origin. Valid values are `http-only`, `https-only`, and `match-viewer`.
  /// [originReadTimeout] Custom read timeout, in seconds. Default: 30.
  /// [originSslProtocols] List of SSL/TLS protocols that you want CloudFront to use when communicating with your origin over HTTPS.
  const MultitenantDistributionOriginCustomOriginConfig({
    required this.httpPort,
    required this.httpsPort,
    this.ipAddressType,
    this.originKeepaliveTimeout,
    this.originMtlsConfig,
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
      'originMtlsConfig': ?pulumi.Input.mapOptionalInputValue<MultitenantDistributionOriginCustomOriginConfigOriginMtlsConfig, Map<String, dynamic>>(originMtlsConfig, (value) => value.toMap()),
      'originProtocolPolicy': originProtocolPolicy,
      'originReadTimeout': ?originReadTimeout,
      'originSslProtocols': originSslProtocols,
    };
  }

  factory MultitenantDistributionOriginCustomOriginConfig.fromMap(Map<String, dynamic> map) {
    return MultitenantDistributionOriginCustomOriginConfig(
      httpPort: pulumi.Input.fromValue(map['httpPort'] as int),
      httpsPort: pulumi.Input.fromValue(map['httpsPort'] as int),
      ipAddressType: (() { final guardedValue = map['ipAddressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      originKeepaliveTimeout: (() { final guardedValue = map['originKeepaliveTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      originMtlsConfig: (() { final guardedValue = map['originMtlsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MultitenantDistributionOriginCustomOriginConfigOriginMtlsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      originProtocolPolicy: pulumi.Input.fromValue(map['originProtocolPolicy'] as String),
      originReadTimeout: (() { final guardedValue = map['originReadTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      originSslProtocols: pulumi.Input.fromValue((map['originSslProtocols'] as List).cast<String>()),
    );
  }
}
