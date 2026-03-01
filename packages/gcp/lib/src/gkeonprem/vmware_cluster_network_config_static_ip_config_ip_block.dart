// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_cluster_network_config_static_ip_config_ip_block_ip.dart';

class VMwareClusterNetworkConfigStaticIpConfigIpBlock {
  /// The network gateway used by the VMware User Cluster.
  final String gateway;
  /// The node's network configurations used by the VMware User Cluster.
  /// Structure is documented below.
  final List<VMwareClusterNetworkConfigStaticIpConfigIpBlockIp> ips;
  /// The netmask used by the VMware User Cluster.
  final String netmask;

  /// Creates a new [VMwareClusterNetworkConfigStaticIpConfigIpBlock].
  /// [gateway] The network gateway used by the VMware User Cluster.
  /// [ips] The node's network configurations used by the VMware User Cluster.
  /// [netmask] The netmask used by the VMware User Cluster.
  VMwareClusterNetworkConfigStaticIpConfigIpBlock({
    required this.gateway,
    required this.ips,
    required this.netmask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gateway': gateway,
      'ips': pulumi.Input.encodeList<VMwareClusterNetworkConfigStaticIpConfigIpBlockIp, Map<String, dynamic>>(ips, (value) => value.toMap()),
      'netmask': netmask,
    };
  }

  factory VMwareClusterNetworkConfigStaticIpConfigIpBlock.fromMap(Map<String, dynamic> map) {
    return VMwareClusterNetworkConfigStaticIpConfigIpBlock(
      gateway: map['gateway'] as String,
      ips: pulumi.Input.decodeList<VMwareClusterNetworkConfigStaticIpConfigIpBlockIp>(map['ips'], (value) => VMwareClusterNetworkConfigStaticIpConfigIpBlockIp.fromMap((value as Map).cast<String, dynamic>())),
      netmask: map['netmask'] as String,
    );
  }
}

