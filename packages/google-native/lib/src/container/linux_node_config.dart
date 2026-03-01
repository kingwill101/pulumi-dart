// ignore_for_file: unused_element, unnecessary_cast

import 'linux_node_config_cgroup_mode.dart';

/// Parameters that can be configured on Linux nodes.
class LinuxNodeConfig {
  /// cgroup_mode specifies the cgroup mode to be used on the node.
  final LinuxNodeConfigCgroupMode? cgroupMode;

  /// The Linux kernel parameters to be applied to the nodes and all pods running on the nodes. The following parameters are supported. net.core.busy_poll net.core.busy_read net.core.netdev_max_backlog net.core.rmem_max net.core.wmem_default net.core.wmem_max net.core.optmem_max net.core.somaxconn net.ipv4.tcp_rmem net.ipv4.tcp_wmem net.ipv4.tcp_tw_reuse
  final Map<String, String>? sysctls;

  /// Creates a new [LinuxNodeConfig].
  /// [cgroupMode] cgroup_mode specifies the cgroup mode to be used on the node.
  /// [sysctls] The Linux kernel parameters to be applied to the nodes and all pods running on the nodes. The following parameters are supported. net.core.busy_poll net.core.busy_read net.core.netdev_max_backlog net.core.rmem_max net.core.wmem_default net.core.wmem_max net.core.optmem_max net.core.somaxconn net.ipv4.tcp_rmem net.ipv4.tcp_wmem net.ipv4.tcp_tw_reuse
  LinuxNodeConfig({this.cgroupMode, this.sysctls});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cgroupMode': ?cgroupMode == null ? null : cgroupMode!.value,
      'sysctls': ?sysctls,
    };
  }

  factory LinuxNodeConfig.fromMap(Map<String, dynamic> map) {
    return LinuxNodeConfig(
      cgroupMode: map['cgroupMode'] == null
          ? null
          : LinuxNodeConfigCgroupMode.fromValue(map['cgroupMode'] as String),
      sysctls: map['sysctls'] == null
          ? null
          : (map['sysctls'] as Map).cast<String, String>(),
    );
  }
}
