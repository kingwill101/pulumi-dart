// ignore_for_file: unused_element, unnecessary_cast

import '../cluster_node_config_linux_node_config_hugepages_config/cluster_node_config_linux_node_config_hugepages_config.dart';
import '../cluster_node_config_linux_node_config_node_kernel_module_loading/cluster_node_config_linux_node_config_node_kernel_module_loading.dart';

class ClusterNodeConfigLinuxNodeConfig {
  /// Possible cgroup modes that can be used.
  /// Accepted values are:
  /// * `CGROUP_MODE_UNSPECIFIED`: CGROUP_MODE_UNSPECIFIED is when unspecified cgroup configuration is used. The default for the GKE node OS image will be used.
  /// * `CGROUP_MODE_V1`: CGROUP_MODE_V1 specifies to use cgroupv1 for the cgroup configuration on the node image.
  /// * `CGROUP_MODE_V2`: CGROUP_MODE_V2 specifies to use cgroupv2 for the cgroup configuration on the node image.
  final String? cgroupMode;

  /// Amounts for 2M and 1G hugepages. Structure is documented below.
  final ClusterNodeConfigLinuxNodeConfigHugepagesConfig? hugepagesConfig;

  /// Settings for kernel module loading. Structure is documented below.
  final ClusterNodeConfigLinuxNodeConfigNodeKernelModuleLoading?
      nodeKernelModuleLoading;

  /// The Linux kernel parameters to be applied to the nodes
  /// and all pods running on the nodes. Specified as a map from the key, such as
  /// `net.core.wmem_max`, to a string value. Currently supported attributes can be found [here](https://cloud.google.com/sdk/gcloud/reference/beta/container/node-pools/create#--system-config-from-file).
  /// Note that validations happen all server side. All attributes are optional.
  final Map<String, String>? sysctls;

  /// The Linux kernel transparent hugepage defrag setting.
  final String? transparentHugepageDefrag;

  /// The Linux kernel transparent hugepage setting.
  final String? transparentHugepageEnabled;

  ClusterNodeConfigLinuxNodeConfig({
    this.cgroupMode,
    this.hugepagesConfig,
    this.nodeKernelModuleLoading,
    this.sysctls,
    this.transparentHugepageDefrag,
    this.transparentHugepageEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cgroupModeValue = cgroupMode;
    if (cgroupModeValue != null) {
      map['cgroupMode'] = cgroupModeValue;
    }
    final hugepagesConfigValue = hugepagesConfig;
    if (hugepagesConfigValue != null) {
      map['hugepagesConfig'] = hugepagesConfigValue.toMap();
    }
    final nodeKernelModuleLoadingValue = nodeKernelModuleLoading;
    if (nodeKernelModuleLoadingValue != null) {
      map['nodeKernelModuleLoading'] = nodeKernelModuleLoadingValue.toMap();
    }
    final sysctlsValue = sysctls;
    if (sysctlsValue != null) {
      map['sysctls'] = sysctlsValue;
    }
    final transparentHugepageDefragValue = transparentHugepageDefrag;
    if (transparentHugepageDefragValue != null) {
      map['transparentHugepageDefrag'] = transparentHugepageDefragValue;
    }
    final transparentHugepageEnabledValue = transparentHugepageEnabled;
    if (transparentHugepageEnabledValue != null) {
      map['transparentHugepageEnabled'] = transparentHugepageEnabledValue;
    }
    return map;
  }

  factory ClusterNodeConfigLinuxNodeConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigLinuxNodeConfig(
      cgroupMode:
          map['cgroupMode'] == null ? null : map['cgroupMode'] as String,
      hugepagesConfig: map['hugepagesConfig'] == null
          ? null
          : ClusterNodeConfigLinuxNodeConfigHugepagesConfig.fromMap(
              (map['hugepagesConfig'] as Map).cast<String, dynamic>()),
      nodeKernelModuleLoading: map['nodeKernelModuleLoading'] == null
          ? null
          : ClusterNodeConfigLinuxNodeConfigNodeKernelModuleLoading.fromMap(
              (map['nodeKernelModuleLoading'] as Map).cast<String, dynamic>()),
      sysctls: map['sysctls'] == null
          ? null
          : (map['sysctls'] as Map).cast<String, String>(),
      transparentHugepageDefrag: map['transparentHugepageDefrag'] == null
          ? null
          : map['transparentHugepageDefrag'] as String,
      transparentHugepageEnabled: map['transparentHugepageEnabled'] == null
          ? null
          : map['transparentHugepageEnabled'] as String,
    );
  }
}
