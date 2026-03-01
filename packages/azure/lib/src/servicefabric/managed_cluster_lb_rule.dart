// ignore_for_file: unused_element, unnecessary_cast


class ManagedClusterLbRule {
  /// LB Backend port.
  final int backendPort;
  /// LB Frontend port.
  final int frontendPort;
  /// Protocol for the probe. Can be one of `tcp`, `udp`, `http`, or `https`.
  final String probeProtocol;
  /// Path for the probe to check, when probe protocol is set to `http`.
  final String? probeRequestPath;
  /// The transport protocol used in this rule. Can be one of `tcp` or `udp`.
  final String protocol;

  /// Creates a new [ManagedClusterLbRule].
  /// [backendPort] LB Backend port.
  /// [frontendPort] LB Frontend port.
  /// [probeProtocol] Protocol for the probe. Can be one of `tcp`, `udp`, `http`, or `https`.
  /// [probeRequestPath] Path for the probe to check, when probe protocol is set to `http`.
  /// [protocol] The transport protocol used in this rule. Can be one of `tcp` or `udp`.
  ManagedClusterLbRule({
    required this.backendPort,
    required this.frontendPort,
    required this.probeProtocol,
    this.probeRequestPath,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendPort': backendPort,
      'frontendPort': frontendPort,
      'probeProtocol': probeProtocol,
      'probeRequestPath': ?probeRequestPath,
      'protocol': protocol,
    };
  }

  factory ManagedClusterLbRule.fromMap(Map<String, dynamic> map) {
    return ManagedClusterLbRule(
      backendPort: map['backendPort'] as int,
      frontendPort: map['frontendPort'] as int,
      probeProtocol: map['probeProtocol'] as String,
      probeRequestPath: map['probeRequestPath'] == null ? null : map['probeRequestPath'] as String,
      protocol: map['protocol'] as String,
    );
  }
}

