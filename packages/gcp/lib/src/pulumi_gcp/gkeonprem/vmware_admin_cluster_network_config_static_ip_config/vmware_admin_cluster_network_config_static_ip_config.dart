// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../vmware_admin_cluster_network_config_static_ip_config_ip_block/vmware_admin_cluster_network_config_static_ip_config_ip_block.dart';

class VmwareAdminClusterNetworkConfigStaticIpConfig {
  /// Represents the configuration values for static IP allocation to nodes.
  /// Structure is documented below.
  final List<VmwareAdminClusterNetworkConfigStaticIpConfigIpBlock>? ipBlocks;

  VmwareAdminClusterNetworkConfigStaticIpConfig({
    this.ipBlocks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ipBlocksValue = ipBlocks;
    if (ipBlocksValue != null) {
      map['ipBlocks'] = pulumi.Input.encodeList<
          VmwareAdminClusterNetworkConfigStaticIpConfigIpBlock,
          Map<String, dynamic>>(ipBlocksValue, (value) => value.toMap());
    }
    return map;
  }

  factory VmwareAdminClusterNetworkConfigStaticIpConfig.fromMap(
      Map<String, dynamic> map) {
    return VmwareAdminClusterNetworkConfigStaticIpConfig(
      ipBlocks: map['ipBlocks'] == null
          ? null
          : pulumi.Input.decodeList<
                  VmwareAdminClusterNetworkConfigStaticIpConfigIpBlock>(
              map['ipBlocks'],
              (value) =>
                  VmwareAdminClusterNetworkConfigStaticIpConfigIpBlock.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
