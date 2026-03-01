// ignore_for_file: unused_element, unnecessary_cast

import 'sysctl_config_response.dart';

/// OS configurations of Linux agent nodes. See [AKS custom node configuration](https://docs.microsoft.com/azure/aks/custom-node-configuration) for more details.
class LinuxOSConfigResponse {
  /// The size in MB of a swap file that will be created on each node.
  final int? swapFileSizeMB;
  /// Sysctl settings for Linux agent nodes.
  final SysctlConfigResponse? sysctls;
  /// Whether the kernel should make aggressive use of memory compaction to make more hugepages available. Valid values are 'always', 'defer', 'defer+madvise', 'madvise' and 'never'. The default is 'madvise'. For more information see [Transparent Hugepages](https://www.kernel.org/doc/html/latest/admin-guide/mm/transhuge.html#admin-guide-transhuge).
  final String? transparentHugePageDefrag;
  /// Whether transparent hugepages are enabled. Valid values are 'always', 'madvise', and 'never'. The default is 'always'. For more information see [Transparent Hugepages](https://www.kernel.org/doc/html/latest/admin-guide/mm/transhuge.html#admin-guide-transhuge).
  final String? transparentHugePageEnabled;

  /// Creates a new [LinuxOSConfigResponse].
  /// [swapFileSizeMB] The size in MB of a swap file that will be created on each node.
  /// [sysctls] Sysctl settings for Linux agent nodes.
  /// [transparentHugePageDefrag] Whether the kernel should make aggressive use of memory compaction to make more hugepages available. Valid values are 'always', 'defer', 'defer+madvise', 'madvise' and 'never'. The default is 'madvise'. For more information see [Transparent Hugepages](https://www.kernel.org/doc/html/latest/admin-guide/mm/transhuge.html#admin-guide-transhuge).
  /// [transparentHugePageEnabled] Whether transparent hugepages are enabled. Valid values are 'always', 'madvise', and 'never'. The default is 'always'. For more information see [Transparent Hugepages](https://www.kernel.org/doc/html/latest/admin-guide/mm/transhuge.html#admin-guide-transhuge).
  LinuxOSConfigResponse({
    this.swapFileSizeMB,
    this.sysctls,
    this.transparentHugePageDefrag,
    this.transparentHugePageEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'swapFileSizeMB': ?swapFileSizeMB,
      'sysctls': ?sysctls == null ? null : sysctls!.toMap(),
      'transparentHugePageDefrag': ?transparentHugePageDefrag,
      'transparentHugePageEnabled': ?transparentHugePageEnabled,
    };
  }

  factory LinuxOSConfigResponse.fromMap(Map<String, dynamic> map) {
    return LinuxOSConfigResponse(
      swapFileSizeMB: map['swapFileSizeMB'] == null ? null : map['swapFileSizeMB'] as int,
      sysctls: map['sysctls'] == null ? null : SysctlConfigResponse.fromMap((map['sysctls'] as Map).cast<String, dynamic>()),
      transparentHugePageDefrag: map['transparentHugePageDefrag'] == null ? null : map['transparentHugePageDefrag'] as String,
      transparentHugePageEnabled: map['transparentHugePageEnabled'] == null ? null : map['transparentHugePageEnabled'] as String,
    );
  }
}

