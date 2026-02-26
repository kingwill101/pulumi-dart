// ignore_for_file: unused_element, unnecessary_cast

class GetResolverRuleTargetIp {
  /// IPv4 address that you want to forward DNS queries to.
  final String ip;

  /// IPv6 address that you want to forward DNS queries to.
  final String ipv6;

  /// Port at the IP address that you want to forward DNS queries to.
  final int port;

  /// Protocol for the target IP address. Valid values are `Do53` (DNS over port 53), `DoH` (DNS over HTTPS), and `DoH-FIPS` (DNS over HTTPS with FIPS).
  final String protocol;

  GetResolverRuleTargetIp({
    required this.ip,
    required this.ipv6,
    required this.port,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ip'] = ip;
    map['ipv6'] = ipv6;
    map['port'] = port;
    map['protocol'] = protocol;
    return map;
  }

  factory GetResolverRuleTargetIp.fromMap(Map<String, dynamic> map) {
    return GetResolverRuleTargetIp(
      ip: map['ip'] as String,
      ipv6: map['ipv6'] as String,
      port: map['port'] as int,
      protocol: map['protocol'] as String,
    );
  }
}
