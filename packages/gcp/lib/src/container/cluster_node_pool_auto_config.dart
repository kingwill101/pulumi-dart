// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_node_pool_auto_config_linux_node_config.dart';
import 'cluster_node_pool_auto_config_network_tags.dart';
import 'cluster_node_pool_auto_config_node_kubelet_config.dart';

class ClusterNodePoolAutoConfig {
  /// Linux system configuration for the cluster's automatically provisioned node pools. Only `cgroup_mode` and `node_kernel_module_loading` fields are supported in `node_pool_auto_config`. Structure is documented below.
  final ClusterNodePoolAutoConfigLinuxNodeConfig? linuxNodeConfig;

  /// The network tag config for the cluster's automatically provisioned node pools. Structure is documented below.
  final ClusterNodePoolAutoConfigNetworkTags? networkTags;

  /// Kubelet configuration for Autopilot clusters. Currently, only `insecure_kubelet_readonly_port_enabled` is supported here.
  /// Structure is documented below.
  final ClusterNodePoolAutoConfigNodeKubeletConfig? nodeKubeletConfig;

  /// A map of resource manager tag keys and values to be attached to the nodes for managing Compute Engine firewalls using Network Firewall Policies. Tags must be according to specifications found [here](https://cloud.google.com/vpc/docs/tags-firewalls-overview#specifications). A maximum of 5 tag key-value pairs can be specified. Existing tags will be replaced with new values. Tags must be in one of the following formats ([KEY]=[VALUE]) 1. `tagKeys/{tag_key_id}=tagValues/{tag_value_id}` 2. `{org_id}/{tag_key_name}={tag_value_name}` 3. `{project_id}/{tag_key_name}={tag_value_name}`.
  final Map<String, String>? resourceManagerTags;

  /// Creates a new [ClusterNodePoolAutoConfig].
  /// [linuxNodeConfig] Linux system configuration for the cluster's automatically provisioned node pools. Only `cgroup_mode` and `node_kernel_module_loading` fields are supported in `node_pool_auto_config`. Structure is documented below.
  /// [networkTags] The network tag config for the cluster's automatically provisioned node pools. Structure is documented below.
  /// [nodeKubeletConfig] Kubelet configuration for Autopilot clusters. Currently, only `insecure_kubelet_readonly_port_enabled` is supported here.
  /// [resourceManagerTags] A map of resource manager tag keys and values to be attached to the nodes for managing Compute Engine firewalls using Network Firewall Policies. Tags must be according to specifications found [here](https://cloud.google.com/vpc/docs/tags-firewalls-overview#specifications). A maximum of 5 tag key-value pairs can be specified. Existing tags will be replaced with new values. Tags must be in one of the following formats ([KEY]=[VALUE]) 1. `tagKeys/{tag_key_id}=tagValues/{tag_value_id}` 2. `{org_id}/{tag_key_name}={tag_value_name}` 3. `{project_id}/{tag_key_name}={tag_value_name}`.
  ClusterNodePoolAutoConfig({
    this.linuxNodeConfig,
    this.networkTags,
    this.nodeKubeletConfig,
    this.resourceManagerTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linuxNodeConfig': ?linuxNodeConfig == null
          ? null
          : linuxNodeConfig!.toMap(),
      'networkTags': ?networkTags == null ? null : networkTags!.toMap(),
      'nodeKubeletConfig': ?nodeKubeletConfig == null
          ? null
          : nodeKubeletConfig!.toMap(),
      'resourceManagerTags': ?resourceManagerTags,
    };
  }

  factory ClusterNodePoolAutoConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolAutoConfig(
      linuxNodeConfig: map['linuxNodeConfig'] == null
          ? null
          : ClusterNodePoolAutoConfigLinuxNodeConfig.fromMap(
              (map['linuxNodeConfig'] as Map).cast<String, dynamic>(),
            ),
      networkTags: map['networkTags'] == null
          ? null
          : ClusterNodePoolAutoConfigNetworkTags.fromMap(
              (map['networkTags'] as Map).cast<String, dynamic>(),
            ),
      nodeKubeletConfig: map['nodeKubeletConfig'] == null
          ? null
          : ClusterNodePoolAutoConfigNodeKubeletConfig.fromMap(
              (map['nodeKubeletConfig'] as Map).cast<String, dynamic>(),
            ),
      resourceManagerTags: map['resourceManagerTags'] == null
          ? null
          : (map['resourceManagerTags'] as Map).cast<String, String>(),
    );
  }
}
