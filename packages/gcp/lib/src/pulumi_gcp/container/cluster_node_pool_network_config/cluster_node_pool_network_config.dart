// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cluster_node_pool_network_config_additional_node_network_config/cluster_node_pool_network_config_additional_node_network_config.dart';
import '../cluster_node_pool_network_config_additional_pod_network_config/cluster_node_pool_network_config_additional_pod_network_config.dart';
import '../cluster_node_pool_network_config_network_performance_config/cluster_node_pool_network_config_network_performance_config.dart';
import '../cluster_node_pool_network_config_pod_cidr_overprovision_config/cluster_node_pool_network_config_pod_cidr_overprovision_config.dart';

class ClusterNodePoolNetworkConfig {
  /// The accelerator network profile to use for this node pool.
  final String? acceleratorNetworkProfile;

  /// We specify the additional node networks for this node pool using this list. Each node network corresponds to an additional interface
  final List<ClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig>?
      additionalNodeNetworkConfigs;

  /// We specify the additional pod networks for this node pool using this list. Each pod network corresponds to an additional alias IP range for the node
  final List<ClusterNodePoolNetworkConfigAdditionalPodNetworkConfig>?
      additionalPodNetworkConfigs;

  /// Whether to create a new range for pod IPs in this node pool. Defaults are provided for pod_range and pod_ipv4_cidr_block if they are not specified.
  final bool? createPodRange;

  /// Whether nodes have internal IP addresses only.
  final bool? enablePrivateNodes;

  /// Network bandwidth tier configuration.
  final ClusterNodePoolNetworkConfigNetworkPerformanceConfig?
      networkPerformanceConfig;

  /// Configuration for node-pool level pod cidr overprovision. If not set, the cluster level setting will be inherited
  final ClusterNodePoolNetworkConfigPodCidrOverprovisionConfig?
      podCidrOverprovisionConfig;

  /// The IP address range for pod IPs in this node pool. Only applicable if create_pod_range is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. /14) to have a range chosen with a specific netmask. Set to a CIDR notation (e.g. 10.96.0.0/14) to pick a specific range to use.
  final String? podIpv4CidrBlock;

  /// The ID of the secondary range for pod IPs. If create_pod_range is true, this ID is used for the new range. If create_pod_range is false, uses an existing secondary range with this ID.
  final String? podRange;

  /// The name or self_link of the Google Compute Engine
  /// subnetwork in which the cluster's instances are launched.
  final String? subnetwork;

  ClusterNodePoolNetworkConfig({
    this.acceleratorNetworkProfile,
    this.additionalNodeNetworkConfigs,
    this.additionalPodNetworkConfigs,
    this.createPodRange,
    this.enablePrivateNodes,
    this.networkPerformanceConfig,
    this.podCidrOverprovisionConfig,
    this.podIpv4CidrBlock,
    this.podRange,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceleratorNetworkProfileValue = acceleratorNetworkProfile;
    if (acceleratorNetworkProfileValue != null) {
      map['acceleratorNetworkProfile'] = acceleratorNetworkProfileValue;
    }
    final additionalNodeNetworkConfigsValue = additionalNodeNetworkConfigs;
    if (additionalNodeNetworkConfigsValue != null) {
      map['additionalNodeNetworkConfigs'] = Input.encodeList<
              ClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig,
              Map<String, dynamic>>(
          additionalNodeNetworkConfigsValue, (value) => value.toMap());
    }
    final additionalPodNetworkConfigsValue = additionalPodNetworkConfigs;
    if (additionalPodNetworkConfigsValue != null) {
      map['additionalPodNetworkConfigs'] = Input.encodeList<
              ClusterNodePoolNetworkConfigAdditionalPodNetworkConfig,
              Map<String, dynamic>>(
          additionalPodNetworkConfigsValue, (value) => value.toMap());
    }
    final createPodRangeValue = createPodRange;
    if (createPodRangeValue != null) {
      map['createPodRange'] = createPodRangeValue;
    }
    final enablePrivateNodesValue = enablePrivateNodes;
    if (enablePrivateNodesValue != null) {
      map['enablePrivateNodes'] = enablePrivateNodesValue;
    }
    final networkPerformanceConfigValue = networkPerformanceConfig;
    if (networkPerformanceConfigValue != null) {
      map['networkPerformanceConfig'] = networkPerformanceConfigValue.toMap();
    }
    final podCidrOverprovisionConfigValue = podCidrOverprovisionConfig;
    if (podCidrOverprovisionConfigValue != null) {
      map['podCidrOverprovisionConfig'] =
          podCidrOverprovisionConfigValue.toMap();
    }
    final podIpv4CidrBlockValue = podIpv4CidrBlock;
    if (podIpv4CidrBlockValue != null) {
      map['podIpv4CidrBlock'] = podIpv4CidrBlockValue;
    }
    final podRangeValue = podRange;
    if (podRangeValue != null) {
      map['podRange'] = podRangeValue;
    }
    final subnetworkValue = subnetwork;
    if (subnetworkValue != null) {
      map['subnetwork'] = subnetworkValue;
    }
    return map;
  }

  factory ClusterNodePoolNetworkConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNetworkConfig(
      acceleratorNetworkProfile: map['acceleratorNetworkProfile'] == null
          ? null
          : map['acceleratorNetworkProfile'] as String,
      additionalNodeNetworkConfigs: map['additionalNodeNetworkConfigs'] == null
          ? null
          : Input.decodeList<
                  ClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig>(
              map['additionalNodeNetworkConfigs'],
              (value) => ClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig
                  .fromMap((value as Map).cast<String, dynamic>())),
      additionalPodNetworkConfigs: map['additionalPodNetworkConfigs'] == null
          ? null
          : Input.decodeList<
                  ClusterNodePoolNetworkConfigAdditionalPodNetworkConfig>(
              map['additionalPodNetworkConfigs'],
              (value) => ClusterNodePoolNetworkConfigAdditionalPodNetworkConfig
                  .fromMap((value as Map).cast<String, dynamic>())),
      createPodRange:
          map['createPodRange'] == null ? null : map['createPodRange'] as bool,
      enablePrivateNodes: map['enablePrivateNodes'] == null
          ? null
          : map['enablePrivateNodes'] as bool,
      networkPerformanceConfig: map['networkPerformanceConfig'] == null
          ? null
          : ClusterNodePoolNetworkConfigNetworkPerformanceConfig.fromMap(
              (map['networkPerformanceConfig'] as Map).cast<String, dynamic>()),
      podCidrOverprovisionConfig: map['podCidrOverprovisionConfig'] == null
          ? null
          : ClusterNodePoolNetworkConfigPodCidrOverprovisionConfig.fromMap(
              (map['podCidrOverprovisionConfig'] as Map)
                  .cast<String, dynamic>()),
      podIpv4CidrBlock: map['podIpv4CidrBlock'] == null
          ? null
          : map['podIpv4CidrBlock'] as String,
      podRange: map['podRange'] == null ? null : map['podRange'] as String,
      subnetwork:
          map['subnetwork'] == null ? null : map['subnetwork'] as String,
    );
  }
}
