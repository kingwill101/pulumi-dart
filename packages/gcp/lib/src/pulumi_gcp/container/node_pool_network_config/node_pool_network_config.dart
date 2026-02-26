// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../node_pool_network_config_additional_node_network_config/node_pool_network_config_additional_node_network_config.dart';
import '../node_pool_network_config_additional_pod_network_config/node_pool_network_config_additional_pod_network_config.dart';
import '../node_pool_network_config_network_performance_config/node_pool_network_config_network_performance_config.dart';
import '../node_pool_network_config_pod_cidr_overprovision_config/node_pool_network_config_pod_cidr_overprovision_config.dart';

class NodePoolNetworkConfig {
  /// Specifies the accelerator network profile for nodes in this node pool. Setting to `"auto"` enables GKE to automatically configure high-performance networking settings for nodes with accelerators (like GPUs). GKE manages the underlying resources (like VPCs and subnets) for this configuration.
  final String? acceleratorNetworkProfile;

  /// We specify the additional node networks for this node pool using this list. Each node network corresponds to an additional interface.
  /// Structure is documented below
  final List<NodePoolNetworkConfigAdditionalNodeNetworkConfig>?
      additionalNodeNetworkConfigs;

  /// We specify the additional pod networks for this node pool using this list. Each pod network corresponds to an additional alias IP range for the node.
  /// Structure is documented below
  final List<NodePoolNetworkConfigAdditionalPodNetworkConfig>?
      additionalPodNetworkConfigs;

  /// Whether to create a new range for pod IPs in this node pool. Defaults are provided for <span pulumi-lang-nodejs="`podRange`" pulumi-lang-dotnet="`PodRange`" pulumi-lang-go="`podRange`" pulumi-lang-python="`pod_range`" pulumi-lang-yaml="`podRange`" pulumi-lang-java="`podRange`">`pod_range`</span> and <span pulumi-lang-nodejs="`podIpv4CidrBlock`" pulumi-lang-dotnet="`PodIpv4CidrBlock`" pulumi-lang-go="`podIpv4CidrBlock`" pulumi-lang-python="`pod_ipv4_cidr_block`" pulumi-lang-yaml="`podIpv4CidrBlock`" pulumi-lang-java="`podIpv4CidrBlock`">`pod_ipv4_cidr_block`</span> if they are not specified.
  final bool? createPodRange;

  /// Whether nodes have internal IP addresses only.
  final bool? enablePrivateNodes;

  /// Network bandwidth tier configuration. Structure is documented below.
  final NodePoolNetworkConfigNetworkPerformanceConfig? networkPerformanceConfig;

  /// Configuration for node-pool level pod cidr overprovision. If not set, the cluster level setting will be inherited. Structure is documented below.
  final NodePoolNetworkConfigPodCidrOverprovisionConfig?
      podCidrOverprovisionConfig;

  /// The IP address range for pod IPs in this node pool. Only applicable if createPodRange is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. /14) to have a range chosen with a specific netmask. Set to a CIDR notation (e.g. 10.96.0.0/14) to pick a specific range to use.
  final String? podIpv4CidrBlock;

  /// The ID of the secondary range for pod IPs. If <span pulumi-lang-nodejs="`createPodRange`" pulumi-lang-dotnet="`CreatePodRange`" pulumi-lang-go="`createPodRange`" pulumi-lang-python="`create_pod_range`" pulumi-lang-yaml="`createPodRange`" pulumi-lang-java="`createPodRange`">`create_pod_range`</span> is true, this ID is used for the new range. If <span pulumi-lang-nodejs="`createPodRange`" pulumi-lang-dotnet="`CreatePodRange`" pulumi-lang-go="`createPodRange`" pulumi-lang-python="`create_pod_range`" pulumi-lang-yaml="`createPodRange`" pulumi-lang-java="`createPodRange`">`create_pod_range`</span> is false, uses an existing secondary range with this ID.
  final String? podRange;

  /// The subnetwork path for the node pool. Format: `projects/{project}/regions/{region}/subnetworks/{subnetwork}`. If the cluster is associated with multiple subnetworks, the subnetwork for the node pool is picked based on the IP utilization during node pool creation and is immutable
  final String? subnetwork;

  NodePoolNetworkConfig({
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
              NodePoolNetworkConfigAdditionalNodeNetworkConfig,
              Map<String, dynamic>>(
          additionalNodeNetworkConfigsValue, (value) => value.toMap());
    }
    final additionalPodNetworkConfigsValue = additionalPodNetworkConfigs;
    if (additionalPodNetworkConfigsValue != null) {
      map['additionalPodNetworkConfigs'] = Input.encodeList<
              NodePoolNetworkConfigAdditionalPodNetworkConfig,
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

  factory NodePoolNetworkConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolNetworkConfig(
      acceleratorNetworkProfile: map['acceleratorNetworkProfile'] == null
          ? null
          : map['acceleratorNetworkProfile'] as String,
      additionalNodeNetworkConfigs: map['additionalNodeNetworkConfigs'] == null
          ? null
          : Input.decodeList<NodePoolNetworkConfigAdditionalNodeNetworkConfig>(
              map['additionalNodeNetworkConfigs'],
              (value) =>
                  NodePoolNetworkConfigAdditionalNodeNetworkConfig.fromMap(
                      (value as Map).cast<String, dynamic>())),
      additionalPodNetworkConfigs: map['additionalPodNetworkConfigs'] == null
          ? null
          : Input.decodeList<NodePoolNetworkConfigAdditionalPodNetworkConfig>(
              map['additionalPodNetworkConfigs'],
              (value) =>
                  NodePoolNetworkConfigAdditionalPodNetworkConfig.fromMap(
                      (value as Map).cast<String, dynamic>())),
      createPodRange:
          map['createPodRange'] == null ? null : map['createPodRange'] as bool,
      enablePrivateNodes: map['enablePrivateNodes'] == null
          ? null
          : map['enablePrivateNodes'] as bool,
      networkPerformanceConfig: map['networkPerformanceConfig'] == null
          ? null
          : NodePoolNetworkConfigNetworkPerformanceConfig.fromMap(
              (map['networkPerformanceConfig'] as Map).cast<String, dynamic>()),
      podCidrOverprovisionConfig: map['podCidrOverprovisionConfig'] == null
          ? null
          : NodePoolNetworkConfigPodCidrOverprovisionConfig.fromMap(
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
