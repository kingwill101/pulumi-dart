// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'vmware_ip_block.dart';

/// Represents the network configuration required for the VMware user clusters with Static IP configurations.
class VmwareStaticIpConfig {
  /// Represents the configuration values for static IP allocation to nodes.
  final List<VmwareIpBlock>? ipBlocks;

  VmwareStaticIpConfig({
    this.ipBlocks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ipBlocksValue = ipBlocks;
    if (ipBlocksValue != null) {
      map['ipBlocks'] = Input.encodeList<VmwareIpBlock, Map<String, dynamic>>(
          ipBlocksValue, (value) => value.toMap());
    }
    return map;
  }

  factory VmwareStaticIpConfig.fromMap(Map<String, dynamic> map) {
    return VmwareStaticIpConfig(
      ipBlocks: map['ipBlocks'] == null
          ? null
          : Input.decodeList<VmwareIpBlock>(
              map['ipBlocks'],
              (value) => VmwareIpBlock.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
