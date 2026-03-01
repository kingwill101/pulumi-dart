// ignore_for_file: unused_element, unnecessary_cast


class ServiceMeshLoadBalancer {
  /// The Instance ID of APIServer Load Balancer
  final String? apiServerLoadbalancerId;
  /// Indicates whether to use the IP address of a public network exposed API Server
  final bool? apiServerPublicEip;
  /// Indicates whether to use the IP address of a public network exposure Istio Pilot. **Note**: This field has been deprecated and is readonly as of 1.232.0. Use pilot_public_eip_id instead.
  final bool? pilotPublicEip;
  /// the EIP instance id of Pilot load balancer.
  final String? pilotPublicEipId;
  /// The Instance ID of Pilot Load Balancer
  final String? pilotPublicLoadbalancerId;

  /// Creates a new [ServiceMeshLoadBalancer].
  /// [apiServerLoadbalancerId] The Instance ID of APIServer Load Balancer
  /// [apiServerPublicEip] Indicates whether to use the IP address of a public network exposed API Server
  /// [pilotPublicEip] Indicates whether to use the IP address of a public network exposure Istio Pilot. **Note**: This field has been deprecated and is readonly as of 1.232.0. Use pilot_public_eip_id instead.
  /// [pilotPublicEipId] the EIP instance id of Pilot load balancer.
  /// [pilotPublicLoadbalancerId] The Instance ID of Pilot Load Balancer
  ServiceMeshLoadBalancer({
    this.apiServerLoadbalancerId,
    this.apiServerPublicEip,
    this.pilotPublicEip,
    this.pilotPublicEipId,
    this.pilotPublicLoadbalancerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiServerLoadbalancerId': ?apiServerLoadbalancerId,
      'apiServerPublicEip': ?apiServerPublicEip,
      'pilotPublicEip': ?pilotPublicEip,
      'pilotPublicEipId': ?pilotPublicEipId,
      'pilotPublicLoadbalancerId': ?pilotPublicLoadbalancerId,
    };
  }

  factory ServiceMeshLoadBalancer.fromMap(Map<String, dynamic> map) {
    return ServiceMeshLoadBalancer(
      apiServerLoadbalancerId: map['apiServerLoadbalancerId'] == null ? null : map['apiServerLoadbalancerId'] as String,
      apiServerPublicEip: map['apiServerPublicEip'] == null ? null : map['apiServerPublicEip'] as bool,
      pilotPublicEip: map['pilotPublicEip'] == null ? null : map['pilotPublicEip'] as bool,
      pilotPublicEipId: map['pilotPublicEipId'] == null ? null : map['pilotPublicEipId'] as String,
      pilotPublicLoadbalancerId: map['pilotPublicLoadbalancerId'] == null ? null : map['pilotPublicLoadbalancerId'] as String,
    );
  }
}

