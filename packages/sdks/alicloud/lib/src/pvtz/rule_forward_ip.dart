// ignore_for_file: unused_element, unnecessary_cast


class RuleForwardIp {
  /// The ip of the forwarding destination.
  final String ip;
  /// The port of the forwarding destination.
  final int port;

  /// Creates a new [RuleForwardIp].
  /// [ip] The ip of the forwarding destination.
  /// [port] The port of the forwarding destination.
  RuleForwardIp({
    required this.ip,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ip,
      'port': port,
    };
  }

  factory RuleForwardIp.fromMap(Map<String, dynamic> map) {
    return RuleForwardIp(
      ip: map['ip'] as String,
      port: map['port'] as int,
    );
  }
}

