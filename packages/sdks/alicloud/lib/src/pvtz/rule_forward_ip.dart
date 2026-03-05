// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleForwardIp {
  /// The ip of the forwarding destination.
  final pulumi.Input<String> ip;
  /// The port of the forwarding destination.
  final pulumi.Input<int> port;

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
      ip: pulumi.Input.fromValue(map['ip'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
    );
  }
}

