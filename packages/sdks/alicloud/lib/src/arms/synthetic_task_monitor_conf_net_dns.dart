// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SyntheticTaskMonitorConfNetDns {
  /// The IP address type of the DNS server.
  /// - 0 (default):ipv4
  /// - 1:ipv6
  /// 2: Automatic.
  final pulumi.Input<int>? dnsServerIpType;
  /// The IP address of the NS server. The default value is 114.114.114.114.
  final pulumi.Input<String>? nsServer;
  /// DNS query method.
  /// - 0 (default): Recursive
  /// - 1: Iteration.
  final pulumi.Input<int>? queryMethod;
  /// The target URL.
  final pulumi.Input<String> targetUrl;
  /// TCP dial test timeout. The unit is milliseconds (ms), the minimum value is 1000, the maximum value is 300000, and the default value is 20000.
  final pulumi.Input<int>? timeout;

  /// Creates a new [SyntheticTaskMonitorConfNetDns].
  /// [dnsServerIpType] The IP address type of the DNS server.
  /// [nsServer] The IP address of the NS server. The default value is 114.114.114.114.
  /// [queryMethod] DNS query method.
  /// [targetUrl] The target URL.
  /// [timeout] TCP dial test timeout. The unit is milliseconds (ms), the minimum value is 1000, the maximum value is 300000, and the default value is 20000.
  const SyntheticTaskMonitorConfNetDns({
    this.dnsServerIpType,
    this.nsServer,
    this.queryMethod,
    required this.targetUrl,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsServerIpType': ?dnsServerIpType,
      'nsServer': ?nsServer,
      'queryMethod': ?queryMethod,
      'targetUrl': targetUrl,
      'timeout': ?timeout,
    };
  }

  factory SyntheticTaskMonitorConfNetDns.fromMap(Map<String, dynamic> map) {
    return SyntheticTaskMonitorConfNetDns(
      dnsServerIpType: (() { final guardedValue = map['dnsServerIpType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      nsServer: (() { final guardedValue = map['nsServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryMethod: (() { final guardedValue = map['queryMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      targetUrl: pulumi.Input.fromValue(map['targetUrl'] as String),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

