// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResolverRuleTargetIp {
  /// IPv4 address that you want to forward DNS queries to.
  final pulumi.Input<String> ip;
  /// IPv6 address that you want to forward DNS queries to.
  final pulumi.Input<String> ipv6;
  /// Port at the IP address that you want to forward DNS queries to.
  final pulumi.Input<int> port;
  /// Protocol for the target IP address. Valid values are `Do53` (DNS over port 53), `DoH` (DNS over HTTPS), and `DoH-FIPS` (DNS over HTTPS with FIPS).
  final pulumi.Input<String> protocol;

  /// Creates a new [GetResolverRuleTargetIp].
  /// [ip] IPv4 address that you want to forward DNS queries to.
  /// [ipv6] IPv6 address that you want to forward DNS queries to.
  /// [port] Port at the IP address that you want to forward DNS queries to.
  /// [protocol] Protocol for the target IP address. Valid values are `Do53` (DNS over port 53), `DoH` (DNS over HTTPS), and `DoH-FIPS` (DNS over HTTPS with FIPS).
  GetResolverRuleTargetIp({
    required this.ip,
    required this.ipv6,
    required this.port,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ip,
      'ipv6': ipv6,
      'port': port,
      'protocol': protocol,
    };
  }

  factory GetResolverRuleTargetIp.fromMap(Map<String, dynamic> map) {
    return GetResolverRuleTargetIp(
      ip: pulumi.Input.fromValue(map['ip'] as String),
      ipv6: pulumi.Input.fromValue(map['ipv6'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
    );
  }
}

