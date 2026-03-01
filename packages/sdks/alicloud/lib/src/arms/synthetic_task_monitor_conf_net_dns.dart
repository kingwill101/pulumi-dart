// ignore_for_file: unused_element, unnecessary_cast


class SyntheticTaskMonitorConfNetDns {
  /// The IP address type of the DNS server.
  /// - 0 (default):ipv4
  /// - 1:ipv6
  /// 2: Automatic.
  final int? dnsServerIpType;
  /// The IP address of the NS server. The default value is 114.114.114.114.
  final String? nsServer;
  /// DNS query method.
  /// - 0 (default): Recursive
  /// - 1: Iteration.
  final int? queryMethod;
  /// The target URL.
  final String targetUrl;
  /// TCP dial test timeout. The unit is milliseconds (ms), the minimum value is 1000, the maximum value is 300000, and the default value is 20000.
  final int? timeout;

  /// Creates a new [SyntheticTaskMonitorConfNetDns].
  /// [dnsServerIpType] The IP address type of the DNS server.
  /// [nsServer] The IP address of the NS server. The default value is 114.114.114.114.
  /// [queryMethod] DNS query method.
  /// [targetUrl] The target URL.
  /// [timeout] TCP dial test timeout. The unit is milliseconds (ms), the minimum value is 1000, the maximum value is 300000, and the default value is 20000.
  SyntheticTaskMonitorConfNetDns({
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
      dnsServerIpType: map['dnsServerIpType'] == null ? null : map['dnsServerIpType'] as int,
      nsServer: map['nsServer'] == null ? null : map['nsServer'] as String,
      queryMethod: map['queryMethod'] == null ? null : map['queryMethod'] as int,
      targetUrl: map['targetUrl'] as String,
      timeout: map['timeout'] == null ? null : map['timeout'] as int,
    );
  }
}

