// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_pool_auto_config_linux_node_config_node_kernel_module_loading.dart';

class GetClusterNodePoolAutoConfigLinuxNodeConfig {
  /// cgroupMode specifies the cgroup mode to be used on the node.
  final String cgroupMode;

  /// The settings for kernel module loading.
  final List<GetClusterNodePoolAutoConfigLinuxNodeConfigNodeKernelModuleLoading>
      nodeKernelModuleLoadings;

  /// Creates a new [GetClusterNodePoolAutoConfigLinuxNodeConfig].
  /// [cgroupMode] cgroupMode specifies the cgroup mode to be used on the node.
  /// [nodeKernelModuleLoadings] The settings for kernel module loading.
  GetClusterNodePoolAutoConfigLinuxNodeConfig({
    required this.cgroupMode,
    required this.nodeKernelModuleLoadings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cgroupMode'] = cgroupMode;
    map['nodeKernelModuleLoadings'] = pulumi.Input.encodeList<
            GetClusterNodePoolAutoConfigLinuxNodeConfigNodeKernelModuleLoading,
            Map<String, dynamic>>(
        nodeKernelModuleLoadings, (value) => value.toMap());
    return map;
  }

  factory GetClusterNodePoolAutoConfigLinuxNodeConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodePoolAutoConfigLinuxNodeConfig(
      cgroupMode: map['cgroupMode'] as String,
      nodeKernelModuleLoadings: pulumi.Input.decodeList<
              GetClusterNodePoolAutoConfigLinuxNodeConfigNodeKernelModuleLoading>(
          map['nodeKernelModuleLoadings'],
          (value) =>
              GetClusterNodePoolAutoConfigLinuxNodeConfigNodeKernelModuleLoading
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
