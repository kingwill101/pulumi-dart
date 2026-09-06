// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sysctl_config.dart';

/// OS configurations of Linux agent nodes. See [AKS custom node configuration](https://docs.microsoft.com/azure/aks/custom-node-configuration) for more details.
class LinuxOSConfig {
  /// The size in MB of a swap file that will be created on each node.
  final pulumi.Input<int?>? swapFileSizeMB;
  /// Sysctl settings for Linux agent nodes.
  final pulumi.Input<SysctlConfig?>? sysctls;
  /// Whether the kernel should make aggressive use of memory compaction to make more hugepages available. Valid values are 'always', 'defer', 'defer+madvise', 'madvise' and 'never'. The default is 'madvise'. For more information see [Transparent Hugepages](https://www.kernel.org/doc/html/latest/admin-guide/mm/transhuge.html#admin-guide-transhuge).
  final pulumi.Input<String?>? transparentHugePageDefrag;
  /// Whether transparent hugepages are enabled. Valid values are 'always', 'madvise', and 'never'. The default is 'always'. For more information see [Transparent Hugepages](https://www.kernel.org/doc/html/latest/admin-guide/mm/transhuge.html#admin-guide-transhuge).
  final pulumi.Input<String?>? transparentHugePageEnabled;

  /// Creates a new [LinuxOSConfig].
  /// [swapFileSizeMB] The size in MB of a swap file that will be created on each node.
  /// [sysctls] Sysctl settings for Linux agent nodes.
  /// [transparentHugePageDefrag] Whether the kernel should make aggressive use of memory compaction to make more hugepages available. Valid values are 'always', 'defer', 'defer+madvise', 'madvise' and 'never'. The default is 'madvise'. For more information see [Transparent Hugepages](https://www.kernel.org/doc/html/latest/admin-guide/mm/transhuge.html#admin-guide-transhuge).
  /// [transparentHugePageEnabled] Whether transparent hugepages are enabled. Valid values are 'always', 'madvise', and 'never'. The default is 'always'. For more information see [Transparent Hugepages](https://www.kernel.org/doc/html/latest/admin-guide/mm/transhuge.html#admin-guide-transhuge).
  const LinuxOSConfig({
    this.swapFileSizeMB,
    this.sysctls,
    this.transparentHugePageDefrag,
    this.transparentHugePageEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'swapFileSizeMB': ?swapFileSizeMB,
      'sysctls': ?pulumi.Input.mapOptionalInputValue<SysctlConfig, Map<String, dynamic>>(sysctls, (value) => value.toMap()),
      'transparentHugePageDefrag': ?transparentHugePageDefrag,
      'transparentHugePageEnabled': ?transparentHugePageEnabled,
    };
  }

  factory LinuxOSConfig.fromMap(Map<String, dynamic> map) {
    return LinuxOSConfig(
      swapFileSizeMB: (() { final guardedValue = map['swapFileSizeMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      sysctls: (() { final guardedValue = map['sysctls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SysctlConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      transparentHugePageDefrag: (() { final guardedValue = map['transparentHugePageDefrag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transparentHugePageEnabled: (() { final guardedValue = map['transparentHugePageEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
