// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_remote_network_config_remote_node_networks.dart';
import 'cluster_remote_network_config_remote_pod_networks.dart';

class ClusterRemoteNetworkConfig {
  /// Configuration block with remote node network configuration for EKS Hybrid Nodes. Detailed below.
  final ClusterRemoteNetworkConfigRemoteNodeNetworks remoteNodeNetworks;
  /// Configuration block with remote pod network configuration for EKS Hybrid Nodes. Detailed below.
  final ClusterRemoteNetworkConfigRemotePodNetworks? remotePodNetworks;

  /// Creates a new [ClusterRemoteNetworkConfig].
  /// [remoteNodeNetworks] Configuration block with remote node network configuration for EKS Hybrid Nodes. Detailed below.
  /// [remotePodNetworks] Configuration block with remote pod network configuration for EKS Hybrid Nodes. Detailed below.
  ClusterRemoteNetworkConfig({
    required this.remoteNodeNetworks,
    this.remotePodNetworks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'remoteNodeNetworks': remoteNodeNetworks.toMap(),
      'remotePodNetworks': ?remotePodNetworks == null ? null : remotePodNetworks!.toMap(),
    };
  }

  factory ClusterRemoteNetworkConfig.fromMap(Map<String, dynamic> map) {
    return ClusterRemoteNetworkConfig(
      remoteNodeNetworks: ClusterRemoteNetworkConfigRemoteNodeNetworks.fromMap((map['remoteNodeNetworks'] as Map).cast<String, dynamic>()),
      remotePodNetworks: map['remotePodNetworks'] == null ? null : ClusterRemoteNetworkConfigRemotePodNetworks.fromMap((map['remotePodNetworks'] as Map).cast<String, dynamic>()),
    );
  }
}

