// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceMeshesMeshLoadBalancer {
  /// The IP address of a public network exposed API Server corresponding to the Load Balance.
  final pulumi.Input<String> apiServerLoadbalancerId;
  /// Whether to use the IP address of a public network exposed the API Server.
  final pulumi.Input<bool> apiServerPublicEip;
  /// Whether to use the IP address of a public network exposure the Istio Pilot.
  final pulumi.Input<bool> pilotPublicEip;
  /// The IP address of a public network exposure Istio Pilot corresponds to the Load Balance.
  final pulumi.Input<String> pilotPublicLoadbalancerId;

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
      apiServerLoadbalancerId: pulumi.Input.fromValue(map['apiServerLoadbalancerId'] as String),
      apiServerPublicEip: pulumi.Input.fromValue(map['apiServerPublicEip'] as bool),
      pilotPublicEip: pulumi.Input.fromValue(map['pilotPublicEip'] as bool),
      pilotPublicLoadbalancerId: pulumi.Input.fromValue(map['pilotPublicLoadbalancerId'] as String),
    );
  }
}

