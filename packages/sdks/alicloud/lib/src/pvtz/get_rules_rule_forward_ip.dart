// ignore_for_file: unused_element, unnecessary_cast


class GetRulesRuleForwardIp {
  final String ip;
  final int port;

  /// Creates a new [GetRulesRuleForwardIp].
  /// [ip] Required.
  /// [port] Required.
  GetRulesRuleForwardIp({
    required this.ip,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ip,
      'port': port,
    };
  }

  factory GetRulesRuleForwardIp.fromMap(Map<String, dynamic> map) {
    return GetRulesRuleForwardIp(
      ip: map['ip'] as String,
      port: map['port'] as int,
    );
  }
}

