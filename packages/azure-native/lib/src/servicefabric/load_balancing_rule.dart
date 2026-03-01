// ignore_for_file: unused_element, unnecessary_cast


/// Describes a load balancing rule.
class LoadBalancingRule {
  /// The port used for internal connections on the endpoint. Acceptable values are between 1 and 65535.
  final int backendPort;
  /// The port for the external endpoint. Port numbers for each rule must be unique within the Load Balancer. Acceptable values are between 1 and 65534.
  final int frontendPort;
  /// The load distribution policy for this rule.
  final String? loadDistribution;
  /// The prob port used by the load balancing rule. Acceptable values are between 1 and 65535.
  final int? probePort;
  /// the reference to the load balancer probe used by the load balancing rule.
  final String probeProtocol;
  /// The probe request path. Only supported for HTTP/HTTPS probes.
  final String? probeRequestPath;
  /// The reference to the transport protocol used by the load balancing rule.
  final String protocol;

  /// Creates a new [LoadBalancingRule].
  /// [backendPort] The port used for internal connections on the endpoint. Acceptable values are between 1 and 65535.
  /// [frontendPort] The port for the external endpoint. Port numbers for each rule must be unique within the Load Balancer. Acceptable values are between 1 and 65534.
  /// [loadDistribution] The load distribution policy for this rule.
  /// [probePort] The prob port used by the load balancing rule. Acceptable values are between 1 and 65535.
  /// [probeProtocol] the reference to the load balancer probe used by the load balancing rule.
  /// [probeRequestPath] The probe request path. Only supported for HTTP/HTTPS probes.
  /// [protocol] The reference to the transport protocol used by the load balancing rule.
  LoadBalancingRule({
    required this.backendPort,
    required this.frontendPort,
    this.loadDistribution,
    this.probePort,
    required this.probeProtocol,
    this.probeRequestPath,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendPort': backendPort,
      'frontendPort': frontendPort,
      'loadDistribution': ?loadDistribution,
      'probePort': ?probePort,
      'probeProtocol': probeProtocol,
      'probeRequestPath': ?probeRequestPath,
      'protocol': protocol,
    };
  }

  factory LoadBalancingRule.fromMap(Map<String, dynamic> map) {
    return LoadBalancingRule(
      backendPort: map['backendPort'] as int,
      frontendPort: map['frontendPort'] as int,
      loadDistribution: map['loadDistribution'] == null ? null : map['loadDistribution'] as String,
      probePort: map['probePort'] == null ? null : map['probePort'] as int,
      probeProtocol: map['probeProtocol'] as String,
      probeRequestPath: map['probeRequestPath'] == null ? null : map['probeRequestPath'] as String,
      protocol: map['protocol'] as String,
    );
  }
}

