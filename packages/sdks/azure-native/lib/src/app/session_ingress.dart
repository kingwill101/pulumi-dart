// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Session pool ingress configuration.
class SessionIngress {
  /// Target port in containers for traffic from ingress
  final pulumi.Input<int?>? targetPort;

  /// Creates a new [SessionIngress].
  /// [targetPort] Target port in containers for traffic from ingress
  const SessionIngress({
    this.targetPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetPort': ?targetPort,
    };
  }

  factory SessionIngress.fromMap(Map<String, dynamic> map) {
    return SessionIngress(
      targetPort: (() { final guardedValue = map['targetPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
