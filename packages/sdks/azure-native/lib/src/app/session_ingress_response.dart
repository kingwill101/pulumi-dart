// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Session pool ingress configuration.
class SessionIngressResponse {
  /// Target port in containers for traffic from ingress
  final pulumi.Input<int>? targetPort;

  /// Creates a new [SessionIngressResponse].
  /// [targetPort] Target port in containers for traffic from ingress
  const SessionIngressResponse({
    this.targetPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetPort': ?targetPort,
    };
  }

  factory SessionIngressResponse.fromMap(Map<String, dynamic> map) {
    return SessionIngressResponse(
      targetPort: (() { final guardedValue = map['targetPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

