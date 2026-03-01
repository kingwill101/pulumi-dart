// ignore_for_file: unused_element, unnecessary_cast


/// Provides information about NAT configuration on the default public Load Balancer for the node type.
class NodeTypeNatConfigResponse {
  /// The internal port for the NAT configuration.
  final int? backendPort;
  /// The port range end for the external endpoint.
  final int? frontendPortRangeEnd;
  /// The port range start for the external endpoint.
  final int? frontendPortRangeStart;

  /// Creates a new [NodeTypeNatConfigResponse].
  /// [backendPort] The internal port for the NAT configuration.
  /// [frontendPortRangeEnd] The port range end for the external endpoint.
  /// [frontendPortRangeStart] The port range start for the external endpoint.
  NodeTypeNatConfigResponse({
    this.backendPort,
    this.frontendPortRangeEnd,
    this.frontendPortRangeStart,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendPort': ?backendPort,
      'frontendPortRangeEnd': ?frontendPortRangeEnd,
      'frontendPortRangeStart': ?frontendPortRangeStart,
    };
  }

  factory NodeTypeNatConfigResponse.fromMap(Map<String, dynamic> map) {
    return NodeTypeNatConfigResponse(
      backendPort: map['backendPort'] == null ? null : map['backendPort'] as int,
      frontendPortRangeEnd: map['frontendPortRangeEnd'] == null ? null : map['frontendPortRangeEnd'] as int,
      frontendPortRangeStart: map['frontendPortRangeStart'] == null ? null : map['frontendPortRangeStart'] as int,
    );
  }
}

