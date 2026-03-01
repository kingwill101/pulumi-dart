// ignore_for_file: unused_element, unnecessary_cast

class ResolverRuleTargetIp {
  /// One IPv4 address that you want to forward DNS queries to.
  final String? ip;

  /// One IPv6 address that you want to forward DNS queries to.
  final String? ipv6;

  /// Port at `ip` that you want to forward DNS queries to. Default value is `53`.
  final int? port;

  /// Protocol for the resolver endpoint. Valid values can be found in the [AWS documentation](https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_TargetAddress.html). Default value is `Do53`.
  final String? protocol;

  /// Creates a new [ResolverRuleTargetIp].
  /// [ip] One IPv4 address that you want to forward DNS queries to.
  /// [ipv6] One IPv6 address that you want to forward DNS queries to.
  /// [port] Port at `ip` that you want to forward DNS queries to. Default value is `53`.
  /// [protocol] Protocol for the resolver endpoint. Valid values can be found in the [AWS documentation](https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_TargetAddress.html). Default value is `Do53`.
  ResolverRuleTargetIp({this.ip, this.ipv6, this.port, this.protocol});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ?ip,
      'ipv6': ?ipv6,
      'port': ?port,
      'protocol': ?protocol,
    };
  }

  factory ResolverRuleTargetIp.fromMap(Map<String, dynamic> map) {
    return ResolverRuleTargetIp(
      ip: map['ip'] == null ? null : map['ip'] as String,
      ipv6: map['ipv6'] == null ? null : map['ipv6'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
    );
  }
}
