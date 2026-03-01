// ignore_for_file: unused_element, unnecessary_cast


/// Session pool ingress configuration.
class SessionIngressResponse {
  /// Target port in containers for traffic from ingress
  final int? targetPort;

  /// Creates a new [SessionIngressResponse].
  /// [targetPort] Target port in containers for traffic from ingress
  SessionIngressResponse({
    this.targetPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetPort': ?targetPort,
    };
  }

  factory SessionIngressResponse.fromMap(Map<String, dynamic> map) {
    return SessionIngressResponse(
      targetPort: map['targetPort'] == null ? null : map['targetPort'] as int,
    );
  }
}

