// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_config_linux_node_config_hugepages_config.dart';
import 'get_cluster_node_config_linux_node_config_node_kernel_module_loading.dart';

class GetClusterNodeConfigLinuxNodeConfig {
  /// cgroupMode specifies the cgroup mode to be used on the node.
  final String cgroupMode;

  /// Amounts for 2M and 1G hugepages.
  final List<GetClusterNodeConfigLinuxNodeConfigHugepagesConfig>
  hugepagesConfigs;

  /// The settings for kernel module loading.
  final List<GetClusterNodeConfigLinuxNodeConfigNodeKernelModuleLoading>
  nodeKernelModuleLoadings;

  /// The Linux kernel parameters to be applied to the nodes and all pods running on the nodes.
  final Map<String, String> sysctls;

  /// The Linux kernel transparent hugepage defrag setting.
  final String transparentHugepageDefrag;

  /// The Linux kernel transparent hugepage setting.
  final String transparentHugepageEnabled;

  /// Creates a new [GetClusterNodeConfigLinuxNodeConfig].
  /// [cgroupMode] cgroupMode specifies the cgroup mode to be used on the node.
  /// [hugepagesConfigs] Amounts for 2M and 1G hugepages.
  /// [nodeKernelModuleLoadings] The settings for kernel module loading.
  /// [sysctls] The Linux kernel parameters to be applied to the nodes and all pods running on the nodes.
  /// [transparentHugepageDefrag] The Linux kernel transparent hugepage defrag setting.
  /// [transparentHugepageEnabled] The Linux kernel transparent hugepage setting.
  GetClusterNodeConfigLinuxNodeConfig({
    required this.cgroupMode,
    required this.hugepagesConfigs,
    required this.nodeKernelModuleLoadings,
    required this.sysctls,
    required this.transparentHugepageDefrag,
    required this.transparentHugepageEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cgroupMode': cgroupMode,
      'hugepagesConfigs':
          pulumi.Input.encodeList<
            GetClusterNodeConfigLinuxNodeConfigHugepagesConfig,
            Map<String, dynamic>
          >(hugepagesConfigs, (value) => value.toMap()),
      'nodeKernelModuleLoadings':
          pulumi.Input.encodeList<
            GetClusterNodeConfigLinuxNodeConfigNodeKernelModuleLoading,
            Map<String, dynamic>
          >(nodeKernelModuleLoadings, (value) => value.toMap()),
      'sysctls': sysctls,
      'transparentHugepageDefrag': transparentHugepageDefrag,
      'transparentHugepageEnabled': transparentHugepageEnabled,
    };
  }

  factory GetClusterNodeConfigLinuxNodeConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterNodeConfigLinuxNodeConfig(
      cgroupMode: map['cgroupMode'] as String,
      hugepagesConfigs:
          pulumi.Input.decodeList<
            GetClusterNodeConfigLinuxNodeConfigHugepagesConfig
          >(
            map['hugepagesConfigs'],
            (value) =>
                GetClusterNodeConfigLinuxNodeConfigHugepagesConfig.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      nodeKernelModuleLoadings:
          pulumi.Input.decodeList<
            GetClusterNodeConfigLinuxNodeConfigNodeKernelModuleLoading
          >(
            map['nodeKernelModuleLoadings'],
            (value) =>
                GetClusterNodeConfigLinuxNodeConfigNodeKernelModuleLoading.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      sysctls: (map['sysctls'] as Map).cast<String, String>(),
      transparentHugepageDefrag: map['transparentHugepageDefrag'] as String,
      transparentHugepageEnabled: map['transparentHugepageEnabled'] as String,
    );
  }
}
