// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../vmware_cluster_network_config_static_ip_config_ip_block/vmware_cluster_network_config_static_ip_config_ip_block.dart';

class VMwareClusterNetworkConfigStaticIpConfig {
  /// Represents the configuration values for static IP allocation to nodes.
  /// Structure is documented below.
  final List<VMwareClusterNetworkConfigStaticIpConfigIpBlock> ipBlocks;

  VMwareClusterNetworkConfigStaticIpConfig({
    required this.ipBlocks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipBlocks'] = Input.encodeList<
        VMwareClusterNetworkConfigStaticIpConfigIpBlock,
        Map<String, dynamic>>(ipBlocks, (value) => value.toMap());
    return map;
  }

  factory VMwareClusterNetworkConfigStaticIpConfig.fromMap(
      Map<String, dynamic> map) {
    return VMwareClusterNetworkConfigStaticIpConfig(
      ipBlocks:
          Input.decodeList<VMwareClusterNetworkConfigStaticIpConfigIpBlock>(
              map['ipBlocks'],
              (value) =>
                  VMwareClusterNetworkConfigStaticIpConfigIpBlock.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
