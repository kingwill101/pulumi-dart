// ignore_for_file: unused_element, unnecessary_cast

import '../cluster_node_pool_auto_config_linux_node_config/cluster_node_pool_auto_config_linux_node_config.dart';
import '../cluster_node_pool_auto_config_network_tags/cluster_node_pool_auto_config_network_tags.dart';
import '../cluster_node_pool_auto_config_node_kubelet_config/cluster_node_pool_auto_config_node_kubelet_config.dart';

class ClusterNodePoolAutoConfig {
  /// Linux system configuration for the cluster's automatically provisioned node pools. Only <span pulumi-lang-nodejs="`cgroupMode`" pulumi-lang-dotnet="`CgroupMode`" pulumi-lang-go="`cgroupMode`" pulumi-lang-python="`cgroup_mode`" pulumi-lang-yaml="`cgroupMode`" pulumi-lang-java="`cgroupMode`">`cgroup_mode`</span> and <span pulumi-lang-nodejs="`nodeKernelModuleLoading`" pulumi-lang-dotnet="`NodeKernelModuleLoading`" pulumi-lang-go="`nodeKernelModuleLoading`" pulumi-lang-python="`node_kernel_module_loading`" pulumi-lang-yaml="`nodeKernelModuleLoading`" pulumi-lang-java="`nodeKernelModuleLoading`">`node_kernel_module_loading`</span> fields are supported in <span pulumi-lang-nodejs="`nodePoolAutoConfig`" pulumi-lang-dotnet="`NodePoolAutoConfig`" pulumi-lang-go="`nodePoolAutoConfig`" pulumi-lang-python="`node_pool_auto_config`" pulumi-lang-yaml="`nodePoolAutoConfig`" pulumi-lang-java="`nodePoolAutoConfig`">`node_pool_auto_config`</span>. Structure is documented below.
  final ClusterNodePoolAutoConfigLinuxNodeConfig? linuxNodeConfig;

  /// The network tag config for the cluster's automatically provisioned node pools. Structure is documented below.
  final ClusterNodePoolAutoConfigNetworkTags? networkTags;

  /// Kubelet configuration for Autopilot clusters. Currently, only <span pulumi-lang-nodejs="`insecureKubeletReadonlyPortEnabled`" pulumi-lang-dotnet="`InsecureKubeletReadonlyPortEnabled`" pulumi-lang-go="`insecureKubeletReadonlyPortEnabled`" pulumi-lang-python="`insecure_kubelet_readonly_port_enabled`" pulumi-lang-yaml="`insecureKubeletReadonlyPortEnabled`" pulumi-lang-java="`insecureKubeletReadonlyPortEnabled`">`insecure_kubelet_readonly_port_enabled`</span> is supported here.
  /// Structure is documented below.
  final ClusterNodePoolAutoConfigNodeKubeletConfig? nodeKubeletConfig;

  /// A map of resource manager tag keys and values to be attached to the nodes for managing Compute Engine firewalls using Network Firewall Policies. Tags must be according to specifications found [here](https://cloud.google.com/vpc/docs/tags-firewalls-overview#specifications). A maximum of 5 tag key-value pairs can be specified. Existing tags will be replaced with new values. Tags must be in one of the following formats ([KEY]=[VALUE]) 1. `tagKeys/{tag_key_id}=tagValues/{tag_value_id}` 2. `{org_id}/{tag_key_name}={tag_value_name}` 3. `{project_id}/{tag_key_name}={tag_value_name}`.
  final Map<String, String>? resourceManagerTags;

  ClusterNodePoolAutoConfig({
    this.linuxNodeConfig,
    this.networkTags,
    this.nodeKubeletConfig,
    this.resourceManagerTags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final linuxNodeConfigValue = linuxNodeConfig;
    if (linuxNodeConfigValue != null) {
      map['linuxNodeConfig'] = linuxNodeConfigValue.toMap();
    }
    final networkTagsValue = networkTags;
    if (networkTagsValue != null) {
      map['networkTags'] = networkTagsValue.toMap();
    }
    final nodeKubeletConfigValue = nodeKubeletConfig;
    if (nodeKubeletConfigValue != null) {
      map['nodeKubeletConfig'] = nodeKubeletConfigValue.toMap();
    }
    final resourceManagerTagsValue = resourceManagerTags;
    if (resourceManagerTagsValue != null) {
      map['resourceManagerTags'] = resourceManagerTagsValue;
    }
    return map;
  }

  factory ClusterNodePoolAutoConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolAutoConfig(
      linuxNodeConfig: map['linuxNodeConfig'] == null
          ? null
          : ClusterNodePoolAutoConfigLinuxNodeConfig.fromMap(
              (map['linuxNodeConfig'] as Map).cast<String, dynamic>()),
      networkTags: map['networkTags'] == null
          ? null
          : ClusterNodePoolAutoConfigNetworkTags.fromMap(
              (map['networkTags'] as Map).cast<String, dynamic>()),
      nodeKubeletConfig: map['nodeKubeletConfig'] == null
          ? null
          : ClusterNodePoolAutoConfigNodeKubeletConfig.fromMap(
              (map['nodeKubeletConfig'] as Map).cast<String, dynamic>()),
      resourceManagerTags: map['resourceManagerTags'] == null
          ? null
          : (map['resourceManagerTags'] as Map).cast<String, String>(),
    );
  }
}
