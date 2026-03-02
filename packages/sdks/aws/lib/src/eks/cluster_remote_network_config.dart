// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_remote_network_config_remote_node_networks.dart';
import 'cluster_remote_network_config_remote_pod_networks.dart';

class ClusterRemoteNetworkConfig {
  /// Configuration block with remote node network configuration for EKS Hybrid Nodes. Detailed below.
  final pulumi.Input<ClusterRemoteNetworkConfigRemoteNodeNetworks> remoteNodeNetworks;
  /// Configuration block with remote pod network configuration for EKS Hybrid Nodes. Detailed below.
  final pulumi.Input<ClusterRemoteNetworkConfigRemotePodNetworks>? remotePodNetworks;

  /// Creates a new [ClusterRemoteNetworkConfig].
  /// [remoteNodeNetworks] Configuration block with remote node network configuration for EKS Hybrid Nodes. Detailed below.
  /// [remotePodNetworks] Configuration block with remote pod network configuration for EKS Hybrid Nodes. Detailed below.
  ClusterRemoteNetworkConfig({
    required this.remoteNodeNetworks,
    this.remotePodNetworks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'remoteNodeNetworks': pulumi.Input.mapInputValue<ClusterRemoteNetworkConfigRemoteNodeNetworks, Map<String, dynamic>>(remoteNodeNetworks, (value) => value.toMap()),
      'remotePodNetworks': ?pulumi.Input.mapOptionalInputValue<ClusterRemoteNetworkConfigRemotePodNetworks, Map<String, dynamic>>(remotePodNetworks, (value) => value.toMap()),
    };
  }

  factory ClusterRemoteNetworkConfig.fromMap(Map<String, dynamic> map) {
    return ClusterRemoteNetworkConfig(
      remoteNodeNetworks: (ClusterRemoteNetworkConfigRemoteNodeNetworks.fromMap((map['remoteNodeNetworks'] as Map).cast<String, dynamic>())).input(),
      remotePodNetworks: map['remotePodNetworks'] == null ? null : (ClusterRemoteNetworkConfigRemotePodNetworks.fromMap((map['remotePodNetworks'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

