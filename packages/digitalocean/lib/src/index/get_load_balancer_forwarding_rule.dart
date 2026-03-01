// ignore_for_file: unused_element, unnecessary_cast


class GetLoadBalancerForwardingRule {
  /// the id of the tls certificate used for ssl termination if enabled
  final String certificateId;
  /// the name of the tls certificate used for ssl termination if enabled
  final String certificateName;
  /// the port on which the load balancer instance will listen
  final int entryPort;
  /// the protocol used for traffic to the load balancer
  final String entryProtocol;
  /// the port on the backend Droplets to which the load balancer will send traffic
  final int targetPort;
  /// the protocol used for traffic to the backend droplets
  final String targetProtocol;
  /// whether ssl encrypted traffic will be passed through to the backend droplets
  final bool tlsPassthrough;

  /// Creates a new [GetLoadBalancerForwardingRule].
  /// [certificateId] the id of the tls certificate used for ssl termination if enabled
  /// [certificateName] the name of the tls certificate used for ssl termination if enabled
  /// [entryPort] the port on which the load balancer instance will listen
  /// [entryProtocol] the protocol used for traffic to the load balancer
  /// [targetPort] the port on the backend Droplets to which the load balancer will send traffic
  /// [targetProtocol] the protocol used for traffic to the backend droplets
  /// [tlsPassthrough] whether ssl encrypted traffic will be passed through to the backend droplets
  GetLoadBalancerForwardingRule({
    required this.certificateId,
    required this.certificateName,
    required this.entryPort,
    required this.entryProtocol,
    required this.targetPort,
    required this.targetProtocol,
    required this.tlsPassthrough,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': certificateId,
      'certificateName': certificateName,
      'entryPort': entryPort,
      'entryProtocol': entryProtocol,
      'targetPort': targetPort,
      'targetProtocol': targetProtocol,
      'tlsPassthrough': tlsPassthrough,
    };
  }

  factory GetLoadBalancerForwardingRule.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerForwardingRule(
      certificateId: map['certificateId'] as String,
      certificateName: map['certificateName'] as String,
      entryPort: map['entryPort'] as int,
      entryProtocol: map['entryProtocol'] as String,
      targetPort: map['targetPort'] as int,
      targetProtocol: map['targetProtocol'] as String,
      tlsPassthrough: map['tlsPassthrough'] as bool,
    );
  }
}

