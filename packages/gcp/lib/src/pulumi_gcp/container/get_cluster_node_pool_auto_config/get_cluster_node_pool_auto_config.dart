// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_cluster_node_pool_auto_config_linux_node_config/get_cluster_node_pool_auto_config_linux_node_config.dart';
import '../get_cluster_node_pool_auto_config_network_tag/get_cluster_node_pool_auto_config_network_tag.dart';
import '../get_cluster_node_pool_auto_config_node_kubelet_config/get_cluster_node_pool_auto_config_node_kubelet_config.dart';

class GetClusterNodePoolAutoConfig {
  /// Linux node configuration options.
  final List<GetClusterNodePoolAutoConfigLinuxNodeConfig> linuxNodeConfigs;

  /// Collection of Compute Engine network tags that can be applied to a node's underlying VM instance.
  final List<GetClusterNodePoolAutoConfigNetworkTag> networkTags;

  /// Node kubelet configs.
  final List<GetClusterNodePoolAutoConfigNodeKubeletConfig> nodeKubeletConfigs;

  /// A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored (both PUT & PATCH) when empty.
  final Map<String, String> resourceManagerTags;

  GetClusterNodePoolAutoConfig({
    required this.linuxNodeConfigs,
    required this.networkTags,
    required this.nodeKubeletConfigs,
    required this.resourceManagerTags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['linuxNodeConfigs'] = pulumi.Input.encodeList<
        GetClusterNodePoolAutoConfigLinuxNodeConfig,
        Map<String, dynamic>>(linuxNodeConfigs, (value) => value.toMap());
    map['networkTags'] = pulumi.Input.encodeList<
        GetClusterNodePoolAutoConfigNetworkTag,
        Map<String, dynamic>>(networkTags, (value) => value.toMap());
    map['nodeKubeletConfigs'] = pulumi.Input.encodeList<
        GetClusterNodePoolAutoConfigNodeKubeletConfig,
        Map<String, dynamic>>(nodeKubeletConfigs, (value) => value.toMap());
    map['resourceManagerTags'] = resourceManagerTags;
    return map;
  }

  factory GetClusterNodePoolAutoConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolAutoConfig(
      linuxNodeConfigs:
          pulumi.Input.decodeList<GetClusterNodePoolAutoConfigLinuxNodeConfig>(
              map['linuxNodeConfigs'],
              (value) => GetClusterNodePoolAutoConfigLinuxNodeConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      networkTags:
          pulumi.Input.decodeList<GetClusterNodePoolAutoConfigNetworkTag>(
              map['networkTags'],
              (value) => GetClusterNodePoolAutoConfigNetworkTag.fromMap(
                  (value as Map).cast<String, dynamic>())),
      nodeKubeletConfigs: pulumi.Input.decodeList<
              GetClusterNodePoolAutoConfigNodeKubeletConfig>(
          map['nodeKubeletConfigs'],
          (value) => GetClusterNodePoolAutoConfigNodeKubeletConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      resourceManagerTags:
          (map['resourceManagerTags'] as Map).cast<String, String>(),
    );
  }
}
