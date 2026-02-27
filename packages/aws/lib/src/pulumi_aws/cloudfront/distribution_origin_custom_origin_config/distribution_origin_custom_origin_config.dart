// ignore_for_file: unused_element, unnecessary_cast

class DistributionOriginCustomOriginConfig {
  /// HTTP port the custom origin listens on.
  final int httpPort;

  /// HTTPS port the custom origin listens on.
  final int httpsPort;

  /// IP protocol CloudFront uses when connecting to your origin. Valid values: `ipv4`, `ipv6`, `dualstack`.
  final String? ipAddressType;
  final int? originKeepaliveTimeout;

  /// Origin protocol policy to apply to your origin. One of `http-only`, `https-only`, or `match-viewer`.
  final String originProtocolPolicy;
  final int? originReadTimeout;

  /// List of SSL/TLS protocols that CloudFront can use when connecting to your origin over HTTPS. Valid values: `SSLv3`, `TLSv1`, `TLSv1.1`, `TLSv1.2`. For more information, see [Minimum Origin SSL Protocol](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesOriginSSLProtocols) in the Amazon CloudFront Developer Guide.
  final List<String> originSslProtocols;

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
    final map = <String, dynamic>{};
    map['httpPort'] = httpPort;
    map['httpsPort'] = httpsPort;
    final ipAddressTypeValue = ipAddressType;
    if (ipAddressTypeValue != null) {
      map['ipAddressType'] = ipAddressTypeValue;
    }
    final originKeepaliveTimeoutValue = originKeepaliveTimeout;
    if (originKeepaliveTimeoutValue != null) {
      map['originKeepaliveTimeout'] = originKeepaliveTimeoutValue;
    }
    map['originProtocolPolicy'] = originProtocolPolicy;
    final originReadTimeoutValue = originReadTimeout;
    if (originReadTimeoutValue != null) {
      map['originReadTimeout'] = originReadTimeoutValue;
    }
    map['originSslProtocols'] = originSslProtocols;
    return map;
  }

  factory DistributionOriginCustomOriginConfig.fromMap(
      Map<String, dynamic> map) {
    return DistributionOriginCustomOriginConfig(
      httpPort: map['httpPort'] as int,
      httpsPort: map['httpsPort'] as int,
      ipAddressType:
          map['ipAddressType'] == null ? null : map['ipAddressType'] as String,
      originKeepaliveTimeout: map['originKeepaliveTimeout'] == null
          ? null
          : map['originKeepaliveTimeout'] as int,
      originProtocolPolicy: map['originProtocolPolicy'] as String,
      originReadTimeout: map['originReadTimeout'] == null
          ? null
          : map['originReadTimeout'] as int,
      originSslProtocols: (map['originSslProtocols'] as List).cast<String>(),
    );
  }
}
