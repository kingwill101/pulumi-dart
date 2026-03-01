// ignore_for_file: unused_element, unnecessary_cast


/// Session pool ingress configuration.
class SessionIngress {
  /// Target port in containers for traffic from ingress
  final int? targetPort;

  /// Creates a new [SessionIngress].
  /// [targetPort] Target port in containers for traffic from ingress
  SessionIngress({
    this.targetPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetPort': ?targetPort,
    };
  }

  factory SessionIngress.fromMap(Map<String, dynamic> map) {
    return SessionIngress(
      targetPort: map['targetPort'] == null ? null : map['targetPort'] as int,
    );
  }
}

