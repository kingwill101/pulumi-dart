// ignore_for_file: unused_element, unnecessary_cast


/// Describes a server to forward the DNS queries to.
class TargetDnsServer {
  /// DNS server IP address.
  final String ipAddress;
  /// DNS server port.
  final int? port;

  /// Creates a new [TargetDnsServer].
  /// [ipAddress] DNS server IP address.
  /// [port] DNS server port.
  TargetDnsServer({
    required this.ipAddress,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ipAddress,
      'port': ?port,
    };
  }

  factory TargetDnsServer.fromMap(Map<String, dynamic> map) {
    return TargetDnsServer(
      ipAddress: map['ipAddress'] as String,
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}

