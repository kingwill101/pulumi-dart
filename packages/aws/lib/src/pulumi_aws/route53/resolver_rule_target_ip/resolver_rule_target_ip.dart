// ignore_for_file: unused_element, unnecessary_cast

class ResolverRuleTargetIp {
  /// One IPv4 address that you want to forward DNS queries to.
  final String? ip;

  /// One IPv6 address that you want to forward DNS queries to.
  final String? ipv6;

  /// Port at <span pulumi-lang-nodejs="`ip`" pulumi-lang-dotnet="`Ip`" pulumi-lang-go="`ip`" pulumi-lang-python="`ip`" pulumi-lang-yaml="`ip`" pulumi-lang-java="`ip`">`ip`</span> that you want to forward DNS queries to. Default value is <span pulumi-lang-nodejs="`53`" pulumi-lang-dotnet="`53`" pulumi-lang-go="`53`" pulumi-lang-python="`53`" pulumi-lang-yaml="`53`" pulumi-lang-java="`53`">`53`</span>.
  final int? port;

  /// Protocol for the resolver endpoint. Valid values can be found in the [AWS documentation](https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_TargetAddress.html). Default value is `Do53`.
  final String? protocol;

  ResolverRuleTargetIp({
    this.ip,
    this.ipv6,
    this.port,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ipValue = ip;
    if (ipValue != null) {
      map['ip'] = ipValue;
    }
    final ipv6Value = ipv6;
    if (ipv6Value != null) {
      map['ipv6'] = ipv6Value;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final protocolValue = protocol;
    if (protocolValue != null) {
      map['protocol'] = protocolValue;
    }
    return map;
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
