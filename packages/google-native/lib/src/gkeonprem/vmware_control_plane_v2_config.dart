// ignore_for_file: unused_element, unnecessary_cast

import 'vmware_ip_block.dart';

/// Specifies control plane V2 config.
class VmwareControlPlaneV2Config {
  /// Static IP addresses for the control plane nodes.
  final VmwareIpBlock? controlPlaneIpBlock;

  /// Creates a new [VmwareControlPlaneV2Config].
  /// [controlPlaneIpBlock] Static IP addresses for the control plane nodes.
  VmwareControlPlaneV2Config({
    this.controlPlaneIpBlock,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final controlPlaneIpBlockValue = controlPlaneIpBlock;
    if (controlPlaneIpBlockValue != null) {
      map['controlPlaneIpBlock'] = controlPlaneIpBlockValue.toMap();
    }
    return map;
  }

  factory VmwareControlPlaneV2Config.fromMap(Map<String, dynamic> map) {
    return VmwareControlPlaneV2Config(
      controlPlaneIpBlock: map['controlPlaneIpBlock'] == null
          ? null
          : VmwareIpBlock.fromMap(
              (map['controlPlaneIpBlock'] as Map).cast<String, dynamic>()),
    );
  }
}
