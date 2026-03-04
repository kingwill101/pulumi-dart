// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesRuleForwardIp {
  final pulumi.Input<String> ip;
  final pulumi.Input<int> port;

  /// Creates a new [GetRulesRuleForwardIp].
  /// [ip] Required.
  /// [port] Required.
  GetRulesRuleForwardIp({required this.ip, required this.port});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ip': ip, 'port': port};
  }

  factory GetRulesRuleForwardIp.fromMap(Map<String, dynamic> map) {
    return GetRulesRuleForwardIp(
      ip: pulumi.Input.fromValue(map['ip'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
    );
  }
}
