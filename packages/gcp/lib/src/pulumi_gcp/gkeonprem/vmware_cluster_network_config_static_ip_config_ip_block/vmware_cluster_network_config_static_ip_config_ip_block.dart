// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../vmware_cluster_network_config_static_ip_config_ip_block_ip/vmware_cluster_network_config_static_ip_config_ip_block_ip.dart';

class VMwareClusterNetworkConfigStaticIpConfigIpBlock {
  /// The network gateway used by the VMware User Cluster.
  final String gateway;

  /// The node's network configurations used by the VMware User Cluster.
  /// Structure is documented below.
  final List<VMwareClusterNetworkConfigStaticIpConfigIpBlockIp> ips;

  /// The netmask used by the VMware User Cluster.
  final String netmask;

  VMwareClusterNetworkConfigStaticIpConfigIpBlock({
    required this.gateway,
    required this.ips,
    required this.netmask,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gateway'] = gateway;
    map['ips'] = Input.encodeList<
        VMwareClusterNetworkConfigStaticIpConfigIpBlockIp,
        Map<String, dynamic>>(ips, (value) => value.toMap());
    map['netmask'] = netmask;
    return map;
  }

  factory VMwareClusterNetworkConfigStaticIpConfigIpBlock.fromMap(
      Map<String, dynamic> map) {
    return VMwareClusterNetworkConfigStaticIpConfigIpBlock(
      gateway: map['gateway'] as String,
      ips: Input.decodeList<VMwareClusterNetworkConfigStaticIpConfigIpBlockIp>(
          map['ips'],
          (value) => VMwareClusterNetworkConfigStaticIpConfigIpBlockIp.fromMap(
              (value as Map).cast<String, dynamic>())),
      netmask: map['netmask'] as String,
    );
  }
}
