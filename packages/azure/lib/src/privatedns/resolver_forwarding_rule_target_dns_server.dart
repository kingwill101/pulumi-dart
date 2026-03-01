// ignore_for_file: unused_element, unnecessary_cast


class ResolverForwardingRuleTargetDnsServer {
  /// DNS server IP address.
  final String ipAddress;
  /// DNS server port.
  final int? port;

  /// Creates a new [ResolverForwardingRuleTargetDnsServer].
  /// [ipAddress] DNS server IP address.
  /// [port] DNS server port.
  ResolverForwardingRuleTargetDnsServer({
    required this.ipAddress,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ipAddress,
      'port': ?port,
    };
  }

  factory ResolverForwardingRuleTargetDnsServer.fromMap(Map<String, dynamic> map) {
    return ResolverForwardingRuleTargetDnsServer(
      ipAddress: map['ipAddress'] as String,
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}

