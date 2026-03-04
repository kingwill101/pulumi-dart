// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResolverRuleTargetIp {
  /// One IPv4 address that you want to forward DNS queries to.
  final pulumi.Input<String>? ip;

  /// One IPv6 address that you want to forward DNS queries to.
  final pulumi.Input<String>? ipv6;

  /// Port at `ip` that you want to forward DNS queries to. Default value is `53`.
  final pulumi.Input<int>? port;

  /// Protocol for the resolver endpoint. Valid values can be found in the [AWS documentation](https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_TargetAddress.html). Default value is `Do53`.
  final pulumi.Input<String>? protocol;

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
      ip: (() {
        final guardedValue = map['ip'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipv6: (() {
        final guardedValue = map['ipv6'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      protocol: (() {
        final guardedValue = map['protocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
