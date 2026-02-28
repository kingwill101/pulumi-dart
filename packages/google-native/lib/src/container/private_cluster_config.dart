// ignore_for_file: unused_element, unnecessary_cast

import 'private_cluster_master_global_access_config.dart';

/// Configuration options for private clusters.
class PrivateClusterConfig {
  /// Whether the master's internal IP address is used as the cluster endpoint.
  final bool? enablePrivateEndpoint;
  /// Whether nodes have internal IP addresses only. If enabled, all nodes are given only RFC 1918 private addresses and communicate with the master via private networking.
  final bool? enablePrivateNodes;
  /// Controls master global access settings.
  final PrivateClusterMasterGlobalAccessConfig? masterGlobalAccessConfig;
  /// The IP range in CIDR notation to use for the hosted master network. This range will be used for assigning internal IP addresses to the master or set of masters, as well as the ILB VIP. This range must not overlap with any other ranges in use within the cluster's network.
  final String? masterIpv4CidrBlock;
  /// Subnet to provision the master's private endpoint during cluster creation. Specified in projects/*/regions/*/subnetworks/* format.
  final String? privateEndpointSubnetwork;

  /// Creates a new [PrivateClusterConfig].
  /// [enablePrivateEndpoint] Whether the master's internal IP address is used as the cluster endpoint.
  /// [enablePrivateNodes] Whether nodes have internal IP addresses only. If enabled, all nodes are given only RFC 1918 private addresses and communicate with the master via private networking.
  /// [masterGlobalAccessConfig] Controls master global access settings.
  /// [masterIpv4CidrBlock] The IP range in CIDR notation to use for the hosted master network. This range will be used for assigning internal IP addresses to the master or set of masters, as well as the ILB VIP. This range must not overlap with any other ranges in use within the cluster's network.
  /// [privateEndpointSubnetwork] Subnet to provision the master's private endpoint during cluster creation. Specified in projects/*/regions/*/subnetworks/* format.
  PrivateClusterConfig({
    this.enablePrivateEndpoint,
    this.enablePrivateNodes,
    this.masterGlobalAccessConfig,
    this.masterIpv4CidrBlock,
    this.privateEndpointSubnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enablePrivateEndpoint': ?enablePrivateEndpoint,
      'enablePrivateNodes': ?enablePrivateNodes,
      'masterGlobalAccessConfig': ?masterGlobalAccessConfig == null ? null : masterGlobalAccessConfig!.toMap(),
      'masterIpv4CidrBlock': ?masterIpv4CidrBlock,
      'privateEndpointSubnetwork': ?privateEndpointSubnetwork,
    };
  }

  factory PrivateClusterConfig.fromMap(Map<String, dynamic> map) {
    return PrivateClusterConfig(
      enablePrivateEndpoint: map['enablePrivateEndpoint'] == null ? null : map['enablePrivateEndpoint'] as bool,
      enablePrivateNodes: map['enablePrivateNodes'] == null ? null : map['enablePrivateNodes'] as bool,
      masterGlobalAccessConfig: map['masterGlobalAccessConfig'] == null ? null : PrivateClusterMasterGlobalAccessConfig.fromMap((map['masterGlobalAccessConfig'] as Map).cast<String, dynamic>()),
      masterIpv4CidrBlock: map['masterIpv4CidrBlock'] == null ? null : map['masterIpv4CidrBlock'] as String,
      privateEndpointSubnetwork: map['privateEndpointSubnetwork'] == null ? null : map['privateEndpointSubnetwork'] as String,
    );
  }
}

