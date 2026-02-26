// ignore_for_file: unused_element, unnecessary_cast

import 'private_cluster_master_global_access_config_response2.dart';

/// Configuration options for private clusters.
class PrivateClusterConfigResponse4 {
  /// Whether the master's internal IP address is used as the cluster endpoint.
  final bool enablePrivateEndpoint;

  /// Whether nodes have internal IP addresses only. If enabled, all nodes are given only RFC 1918 private addresses and communicate with the master via private networking.
  final bool enablePrivateNodes;

  /// Controls master global access settings.
  final PrivateClusterMasterGlobalAccessConfigResponse2
      masterGlobalAccessConfig;

  /// The IP range in CIDR notation to use for the hosted master network. This range will be used for assigning internal IP addresses to the master or set of masters, as well as the ILB VIP. This range must not overlap with any other ranges in use within the cluster's network.
  final String masterIpv4CidrBlock;

  /// The peering name in the customer VPC used by this cluster.
  final String peeringName;

  /// The internal IP address of this cluster's master endpoint.
  final String privateEndpoint;

  /// Subnet to provision the master's private endpoint during cluster creation. Specified in projects/*/regions/*/subnetworks/* format.
  final String privateEndpointSubnetwork;

  /// The external IP address of this cluster's master endpoint.
  final String publicEndpoint;

  PrivateClusterConfigResponse4({
    required this.enablePrivateEndpoint,
    required this.enablePrivateNodes,
    required this.masterGlobalAccessConfig,
    required this.masterIpv4CidrBlock,
    required this.peeringName,
    required this.privateEndpoint,
    required this.privateEndpointSubnetwork,
    required this.publicEndpoint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enablePrivateEndpoint'] = enablePrivateEndpoint;
    map['enablePrivateNodes'] = enablePrivateNodes;
    map['masterGlobalAccessConfig'] = masterGlobalAccessConfig.toMap();
    map['masterIpv4CidrBlock'] = masterIpv4CidrBlock;
    map['peeringName'] = peeringName;
    map['privateEndpoint'] = privateEndpoint;
    map['privateEndpointSubnetwork'] = privateEndpointSubnetwork;
    map['publicEndpoint'] = publicEndpoint;
    return map;
  }

  factory PrivateClusterConfigResponse4.fromMap(Map<String, dynamic> map) {
    return PrivateClusterConfigResponse4(
      enablePrivateEndpoint: map['enablePrivateEndpoint'] as bool,
      enablePrivateNodes: map['enablePrivateNodes'] as bool,
      masterGlobalAccessConfig:
          PrivateClusterMasterGlobalAccessConfigResponse2.fromMap(
              (map['masterGlobalAccessConfig'] as Map).cast<String, dynamic>()),
      masterIpv4CidrBlock: map['masterIpv4CidrBlock'] as String,
      peeringName: map['peeringName'] as String,
      privateEndpoint: map['privateEndpoint'] as String,
      privateEndpointSubnetwork: map['privateEndpointSubnetwork'] as String,
      publicEndpoint: map['publicEndpoint'] as String,
    );
  }
}
