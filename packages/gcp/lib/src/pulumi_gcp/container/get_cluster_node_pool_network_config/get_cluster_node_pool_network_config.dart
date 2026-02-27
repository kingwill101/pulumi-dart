// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cluster_node_pool_network_config_additional_node_network_config/get_cluster_node_pool_network_config_additional_node_network_config.dart';
import '../get_cluster_node_pool_network_config_additional_pod_network_config/get_cluster_node_pool_network_config_additional_pod_network_config.dart';
import '../get_cluster_node_pool_network_config_network_performance_config/get_cluster_node_pool_network_config_network_performance_config.dart';
import '../get_cluster_node_pool_network_config_pod_cidr_overprovision_config/get_cluster_node_pool_network_config_pod_cidr_overprovision_config.dart';

class GetClusterNodePoolNetworkConfig {
  /// The accelerator network profile to use for this node pool.
  final String acceleratorNetworkProfile;

  /// We specify the additional node networks for this node pool using this list. Each node network corresponds to an additional interface
  final List<GetClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig>
      additionalNodeNetworkConfigs;

  /// We specify the additional pod networks for this node pool using this list. Each pod network corresponds to an additional alias IP range for the node
  final List<GetClusterNodePoolNetworkConfigAdditionalPodNetworkConfig>
      additionalPodNetworkConfigs;

  /// Whether to create a new range for pod IPs in this node pool. Defaults are provided for pod_range and pod_ipv4_cidr_block if they are not specified.
  final bool createPodRange;

  /// Whether nodes have internal IP addresses only.
  final bool enablePrivateNodes;

  /// Network bandwidth tier configuration.
  final List<GetClusterNodePoolNetworkConfigNetworkPerformanceConfig>
      networkPerformanceConfigs;

  /// Configuration for node-pool level pod cidr overprovision. If not set, the cluster level setting will be inherited
  final List<GetClusterNodePoolNetworkConfigPodCidrOverprovisionConfig>
      podCidrOverprovisionConfigs;

  /// The IP address range for pod IPs in this node pool. Only applicable if create_pod_range is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. /14) to have a range chosen with a specific netmask. Set to a CIDR notation (e.g. 10.96.0.0/14) to pick a specific range to use.
  final String podIpv4CidrBlock;

  /// The ID of the secondary range for pod IPs. If create_pod_range is true, this ID is used for the new range. If create_pod_range is false, uses an existing secondary range with this ID.
  final String podRange;

  /// The subnetwork path for the node pool. Format: projects/{project}/regions/{region}/subnetworks/{subnetwork} . If the cluster is associated with multiple subnetworks, the subnetwork for the node pool is picked based on the IP utilization during node pool creation and is immutable.
  final String subnetwork;

  GetClusterNodePoolNetworkConfig({
    required this.acceleratorNetworkProfile,
    required this.additionalNodeNetworkConfigs,
    required this.additionalPodNetworkConfigs,
    required this.createPodRange,
    required this.enablePrivateNodes,
    required this.networkPerformanceConfigs,
    required this.podCidrOverprovisionConfigs,
    required this.podIpv4CidrBlock,
    required this.podRange,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['acceleratorNetworkProfile'] = acceleratorNetworkProfile;
    map['additionalNodeNetworkConfigs'] = Input.encodeList<
            GetClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig,
            Map<String, dynamic>>(
        additionalNodeNetworkConfigs, (value) => value.toMap());
    map['additionalPodNetworkConfigs'] = Input.encodeList<
            GetClusterNodePoolNetworkConfigAdditionalPodNetworkConfig,
            Map<String, dynamic>>(
        additionalPodNetworkConfigs, (value) => value.toMap());
    map['createPodRange'] = createPodRange;
    map['enablePrivateNodes'] = enablePrivateNodes;
    map['networkPerformanceConfigs'] = Input.encodeList<
            GetClusterNodePoolNetworkConfigNetworkPerformanceConfig,
            Map<String, dynamic>>(
        networkPerformanceConfigs, (value) => value.toMap());
    map['podCidrOverprovisionConfigs'] = Input.encodeList<
            GetClusterNodePoolNetworkConfigPodCidrOverprovisionConfig,
            Map<String, dynamic>>(
        podCidrOverprovisionConfigs, (value) => value.toMap());
    map['podIpv4CidrBlock'] = podIpv4CidrBlock;
    map['podRange'] = podRange;
    map['subnetwork'] = subnetwork;
    return map;
  }

  factory GetClusterNodePoolNetworkConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNetworkConfig(
      acceleratorNetworkProfile: map['acceleratorNetworkProfile'] as String,
      additionalNodeNetworkConfigs: Input.decodeList<
              GetClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig>(
          map['additionalNodeNetworkConfigs'],
          (value) => GetClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig
              .fromMap((value as Map).cast<String, dynamic>())),
      additionalPodNetworkConfigs: Input.decodeList<
              GetClusterNodePoolNetworkConfigAdditionalPodNetworkConfig>(
          map['additionalPodNetworkConfigs'],
          (value) =>
              GetClusterNodePoolNetworkConfigAdditionalPodNetworkConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      createPodRange: map['createPodRange'] as bool,
      enablePrivateNodes: map['enablePrivateNodes'] as bool,
      networkPerformanceConfigs: Input.decodeList<
              GetClusterNodePoolNetworkConfigNetworkPerformanceConfig>(
          map['networkPerformanceConfigs'],
          (value) =>
              GetClusterNodePoolNetworkConfigNetworkPerformanceConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      podCidrOverprovisionConfigs: Input.decodeList<
              GetClusterNodePoolNetworkConfigPodCidrOverprovisionConfig>(
          map['podCidrOverprovisionConfigs'],
          (value) =>
              GetClusterNodePoolNetworkConfigPodCidrOverprovisionConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      podIpv4CidrBlock: map['podIpv4CidrBlock'] as String,
      podRange: map['podRange'] as String,
      subnetwork: map['subnetwork'] as String,
    );
  }
}
