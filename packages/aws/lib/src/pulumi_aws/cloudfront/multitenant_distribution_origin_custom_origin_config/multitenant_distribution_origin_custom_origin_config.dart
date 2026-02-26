// ignore_for_file: unused_element, unnecessary_cast

class MultitenantDistributionOriginCustomOriginConfig {
  /// HTTP port the custom origin listens on.
  final int httpPort;

  /// HTTPS port the custom origin listens on.
  final int httpsPort;

  /// Type of IP addresses used by your origins. Valid values are <span pulumi-lang-nodejs="`ipv4`" pulumi-lang-dotnet="`Ipv4`" pulumi-lang-go="`ipv4`" pulumi-lang-python="`ipv4`" pulumi-lang-yaml="`ipv4`" pulumi-lang-java="`ipv4`">`ipv4`</span> and <span pulumi-lang-nodejs="`dualstack`" pulumi-lang-dotnet="`Dualstack`" pulumi-lang-go="`dualstack`" pulumi-lang-python="`dualstack`" pulumi-lang-yaml="`dualstack`" pulumi-lang-java="`dualstack`">`dualstack`</span>.
  final String? ipAddressType;

  /// Custom keep-alive timeout, in seconds. Default: 5.
  final int? originKeepaliveTimeout;

  /// Origin protocol policy to apply to your origin. Valid values are `http-only`, `https-only`, and `match-viewer`.
  final String originProtocolPolicy;

  /// Custom read timeout, in seconds. Default: 30.
  final int? originReadTimeout;

  /// List of SSL/TLS protocols that you want CloudFront to use when communicating with your origin over HTTPS.
  final List<String> originSslProtocols;

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

  factory MultitenantDistributionOriginCustomOriginConfig.fromMap(
      Map<String, dynamic> map) {
    return MultitenantDistributionOriginCustomOriginConfig(
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
