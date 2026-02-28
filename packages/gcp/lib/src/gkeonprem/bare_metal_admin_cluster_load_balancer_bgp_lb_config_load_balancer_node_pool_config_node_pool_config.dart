// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_admin_cluster_load_balancer_bgp_lb_config_load_balancer_node_pool_config_node_pool_config_kubelet_config.dart';
import 'bare_metal_admin_cluster_load_balancer_bgp_lb_config_load_balancer_node_pool_config_node_pool_config_node_config.dart';
import 'bare_metal_admin_cluster_load_balancer_bgp_lb_config_load_balancer_node_pool_config_node_pool_config_taint.dart';

class BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfig {
  /// A nested object resource.
  /// Structure is documented below.
  final BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigKubeletConfig? kubeletConfig;
  /// The labels assigned to nodes of this node pool.
  /// An object containing a list of key/value pairs.
  /// Example:
  /// { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final Map<String, String>? labels;
  /// Structure is documented below.
  final List<BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigNodeConfig>? nodeConfigs;
  /// The available Operating Systems to be run in a Node.
  final String? operatingSystem;
  /// Structure is documented below.
  final List<BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigTaint>? taints;

  /// Creates a new [BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfig].
  /// [kubeletConfig] A nested object resource.
  /// [labels] The labels assigned to nodes of this node pool.
  /// [nodeConfigs] Structure is documented below.
  /// [operatingSystem] The available Operating Systems to be run in a Node.
  /// [taints] Structure is documented below.
  BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfig({
    this.kubeletConfig,
    this.labels,
    this.nodeConfigs,
    this.operatingSystem,
    this.taints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubeletConfig': ?kubeletConfig == null ? null : kubeletConfig!.toMap(),
      'labels': ?labels,
      'nodeConfigs': ?nodeConfigs == null ? null : pulumi.Input.encodeList<BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigNodeConfig, Map<String, dynamic>>(nodeConfigs!, (value) => value.toMap()),
      'operatingSystem': ?operatingSystem,
      'taints': ?taints == null ? null : pulumi.Input.encodeList<BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigTaint, Map<String, dynamic>>(taints!, (value) => value.toMap()),
    };
  }

  factory BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfig(
      kubeletConfig: map['kubeletConfig'] == null ? null : BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigKubeletConfig.fromMap((map['kubeletConfig'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      nodeConfigs: map['nodeConfigs'] == null ? null : pulumi.Input.decodeList<BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigNodeConfig>(map['nodeConfigs'], (value) => BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigNodeConfig.fromMap((value as Map).cast<String, dynamic>())),
      operatingSystem: map['operatingSystem'] == null ? null : map['operatingSystem'] as String,
      taints: map['taints'] == null ? null : pulumi.Input.decodeList<BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigTaint>(map['taints'], (value) => BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigTaint.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

