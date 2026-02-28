// ignore_for_file: unused_element, unnecessary_cast

import 'node_pool_node_config_linux_node_config_hugepages_config.dart';
import 'node_pool_node_config_linux_node_config_node_kernel_module_loading.dart';

class NodePoolNodeConfigLinuxNodeConfig {
  /// cgroupMode specifies the cgroup mode to be used on the node.
  final String? cgroupMode;
  /// Amounts for 2M and 1G hugepages.
  final NodePoolNodeConfigLinuxNodeConfigHugepagesConfig? hugepagesConfig;
  /// The settings for kernel module loading.
  final NodePoolNodeConfigLinuxNodeConfigNodeKernelModuleLoading? nodeKernelModuleLoading;
  /// The Linux kernel parameters to be applied to the nodes and all pods running on the nodes.
  final Map<String, String>? sysctls;
  /// The Linux kernel transparent hugepage defrag setting.
  final String? transparentHugepageDefrag;
  /// The Linux kernel transparent hugepage setting.
  final String? transparentHugepageEnabled;

  /// Creates a new [NodePoolNodeConfigLinuxNodeConfig].
  /// [cgroupMode] cgroupMode specifies the cgroup mode to be used on the node.
  /// [hugepagesConfig] Amounts for 2M and 1G hugepages.
  /// [nodeKernelModuleLoading] The settings for kernel module loading.
  /// [sysctls] The Linux kernel parameters to be applied to the nodes and all pods running on the nodes.
  /// [transparentHugepageDefrag] The Linux kernel transparent hugepage defrag setting.
  /// [transparentHugepageEnabled] The Linux kernel transparent hugepage setting.
  NodePoolNodeConfigLinuxNodeConfig({
    this.cgroupMode,
    this.hugepagesConfig,
    this.nodeKernelModuleLoading,
    this.sysctls,
    this.transparentHugepageDefrag,
    this.transparentHugepageEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cgroupMode': ?cgroupMode,
      'hugepagesConfig': ?hugepagesConfig == null ? null : hugepagesConfig!.toMap(),
      'nodeKernelModuleLoading': ?nodeKernelModuleLoading == null ? null : nodeKernelModuleLoading!.toMap(),
      'sysctls': ?sysctls,
      'transparentHugepageDefrag': ?transparentHugepageDefrag,
      'transparentHugepageEnabled': ?transparentHugepageEnabled,
    };
  }

  factory NodePoolNodeConfigLinuxNodeConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigLinuxNodeConfig(
      cgroupMode: map['cgroupMode'] == null ? null : map['cgroupMode'] as String,
      hugepagesConfig: map['hugepagesConfig'] == null ? null : NodePoolNodeConfigLinuxNodeConfigHugepagesConfig.fromMap((map['hugepagesConfig'] as Map).cast<String, dynamic>()),
      nodeKernelModuleLoading: map['nodeKernelModuleLoading'] == null ? null : NodePoolNodeConfigLinuxNodeConfigNodeKernelModuleLoading.fromMap((map['nodeKernelModuleLoading'] as Map).cast<String, dynamic>()),
      sysctls: map['sysctls'] == null ? null : (map['sysctls'] as Map).cast<String, String>(),
      transparentHugepageDefrag: map['transparentHugepageDefrag'] == null ? null : map['transparentHugepageDefrag'] as String,
      transparentHugepageEnabled: map['transparentHugepageEnabled'] == null ? null : map['transparentHugepageEnabled'] as String,
    );
  }
}

