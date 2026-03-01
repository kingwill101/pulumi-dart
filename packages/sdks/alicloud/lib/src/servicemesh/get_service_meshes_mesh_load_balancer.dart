// ignore_for_file: unused_element, unnecessary_cast


class GetServiceMeshesMeshLoadBalancer {
  /// The IP address of a public network exposed API Server corresponding to the Load Balance.
  final String apiServerLoadbalancerId;
  /// Whether to use the IP address of a public network exposed the API Server.
  final bool apiServerPublicEip;
  /// Whether to use the IP address of a public network exposure the Istio Pilot.
  final bool pilotPublicEip;
  /// The IP address of a public network exposure Istio Pilot corresponds to the Load Balance.
  final String pilotPublicLoadbalancerId;

  /// Creates a new [GetServiceMeshesMeshLoadBalancer].
  /// [apiServerLoadbalancerId] The IP address of a public network exposed API Server corresponding to the Load Balance.
  /// [apiServerPublicEip] Whether to use the IP address of a public network exposed the API Server.
  /// [pilotPublicEip] Whether to use the IP address of a public network exposure the Istio Pilot.
  /// [pilotPublicLoadbalancerId] The IP address of a public network exposure Istio Pilot corresponds to the Load Balance.
  GetServiceMeshesMeshLoadBalancer({
    required this.apiServerLoadbalancerId,
    required this.apiServerPublicEip,
    required this.pilotPublicEip,
    required this.pilotPublicLoadbalancerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiServerLoadbalancerId': apiServerLoadbalancerId,
      'apiServerPublicEip': apiServerPublicEip,
      'pilotPublicEip': pilotPublicEip,
      'pilotPublicLoadbalancerId': pilotPublicLoadbalancerId,
    };
  }

  factory GetServiceMeshesMeshLoadBalancer.fromMap(Map<String, dynamic> map) {
    return GetServiceMeshesMeshLoadBalancer(
      apiServerLoadbalancerId: map['apiServerLoadbalancerId'] as String,
      apiServerPublicEip: map['apiServerPublicEip'] as bool,
      pilotPublicEip: map['pilotPublicEip'] as bool,
      pilotPublicLoadbalancerId: map['pilotPublicLoadbalancerId'] as String,
    );
  }
}

