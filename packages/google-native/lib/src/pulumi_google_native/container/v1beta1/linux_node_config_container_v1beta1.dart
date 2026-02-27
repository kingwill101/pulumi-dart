// ignore_for_file: unused_element, unnecessary_cast

import 'linux_node_config_cgroup_mode_container_v1beta1.dart';

/// Parameters that can be configured on Linux nodes.
class LinuxNodeConfigContainerV1beta1 {
  /// cgroup_mode specifies the cgroup mode to be used on the node.
  final LinuxNodeConfigCgroupModeContainerV1beta1? cgroupMode;

  /// The Linux kernel parameters to be applied to the nodes and all pods running on the nodes. The following parameters are supported. net.core.busy_poll net.core.busy_read net.core.netdev_max_backlog net.core.rmem_max net.core.wmem_default net.core.wmem_max net.core.optmem_max net.core.somaxconn net.ipv4.tcp_rmem net.ipv4.tcp_wmem net.ipv4.tcp_tw_reuse
  final Map<String, String>? sysctls;

  LinuxNodeConfigContainerV1beta1({
    this.cgroupMode,
    this.sysctls,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cgroupModeValue = cgroupMode;
    if (cgroupModeValue != null) {
      map['cgroupMode'] = cgroupModeValue.value;
    }
    final sysctlsValue = sysctls;
    if (sysctlsValue != null) {
      map['sysctls'] = sysctlsValue;
    }
    return map;
  }

  factory LinuxNodeConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return LinuxNodeConfigContainerV1beta1(
      cgroupMode: map['cgroupMode'] == null
          ? null
          : LinuxNodeConfigCgroupModeContainerV1beta1.fromValue(
              map['cgroupMode'] as String),
      sysctls: map['sysctls'] == null
          ? null
          : (map['sysctls'] as Map).cast<String, String>(),
    );
  }
}
