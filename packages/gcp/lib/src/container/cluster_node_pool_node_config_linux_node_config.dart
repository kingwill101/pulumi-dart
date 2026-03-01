// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_node_pool_node_config_linux_node_config_hugepages_config.dart';
import 'cluster_node_pool_node_config_linux_node_config_node_kernel_module_loading.dart';

class ClusterNodePoolNodeConfigLinuxNodeConfig {
  /// Possible cgroup modes that can be used.
  /// Accepted values are:
  /// * `CGROUP_MODE_UNSPECIFIED`: CGROUP_MODE_UNSPECIFIED is when unspecified cgroup configuration is used. The default for the GKE node OS image will be used.
  /// * `CGROUP_MODE_V1`: CGROUP_MODE_V1 specifies to use cgroupv1 for the cgroup configuration on the node image.
  /// * `CGROUP_MODE_V2`: CGROUP_MODE_V2 specifies to use cgroupv2 for the cgroup configuration on the node image.
  final String? cgroupMode;
  /// Amounts for 2M and 1G hugepages. Structure is documented below.
  final ClusterNodePoolNodeConfigLinuxNodeConfigHugepagesConfig? hugepagesConfig;
  /// Settings for kernel module loading. Structure is documented below.
  final ClusterNodePoolNodeConfigLinuxNodeConfigNodeKernelModuleLoading? nodeKernelModuleLoading;
  /// The Linux kernel parameters to be applied to the nodes
  /// and all pods running on the nodes. Specified as a map from the key, such as
  /// `net.core.wmem_max`, to a string value. Currently supported attributes can be found [here](https://cloud.google.com/sdk/gcloud/reference/beta/container/node-pools/create#--system-config-from-file).
  /// Note that validations happen all server side. All attributes are optional.
  final Map<String, String>? sysctls;
  /// The Linux kernel transparent hugepage defrag setting.
  final String? transparentHugepageDefrag;
  /// The Linux kernel transparent hugepage setting.
  final String? transparentHugepageEnabled;

  /// Creates a new [ClusterNodePoolNodeConfigLinuxNodeConfig].
  /// [cgroupMode] Possible cgroup modes that can be used.
  /// [hugepagesConfig] Amounts for 2M and 1G hugepages. Structure is documented below.
  /// [nodeKernelModuleLoading] Settings for kernel module loading. Structure is documented below.
  /// [sysctls] The Linux kernel parameters to be applied to the nodes
  /// [transparentHugepageDefrag] The Linux kernel transparent hugepage defrag setting.
  /// [transparentHugepageEnabled] The Linux kernel transparent hugepage setting.
  ClusterNodePoolNodeConfigLinuxNodeConfig({
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

  factory ClusterNodePoolNodeConfigLinuxNodeConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigLinuxNodeConfig(
      cgroupMode: map['cgroupMode'] == null ? null : map['cgroupMode'] as String,
      hugepagesConfig: map['hugepagesConfig'] == null ? null : ClusterNodePoolNodeConfigLinuxNodeConfigHugepagesConfig.fromMap((map['hugepagesConfig'] as Map).cast<String, dynamic>()),
      nodeKernelModuleLoading: map['nodeKernelModuleLoading'] == null ? null : ClusterNodePoolNodeConfigLinuxNodeConfigNodeKernelModuleLoading.fromMap((map['nodeKernelModuleLoading'] as Map).cast<String, dynamic>()),
      sysctls: map['sysctls'] == null ? null : (map['sysctls'] as Map).cast<String, String>(),
      transparentHugepageDefrag: map['transparentHugepageDefrag'] == null ? null : map['transparentHugepageDefrag'] as String,
      transparentHugepageEnabled: map['transparentHugepageEnabled'] == null ? null : map['transparentHugepageEnabled'] as String,
    );
  }
}

