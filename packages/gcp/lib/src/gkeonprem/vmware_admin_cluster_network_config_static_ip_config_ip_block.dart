// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_admin_cluster_network_config_static_ip_config_ip_block_ip.dart';

class VmwareAdminClusterNetworkConfigStaticIpConfigIpBlock {
  /// The network gateway used by the VMware Admin Cluster.
  final String gateway;

  /// The node's network configurations used by the VMware Admin Cluster.
  /// Structure is documented below.
  final List<VmwareAdminClusterNetworkConfigStaticIpConfigIpBlockIp> ips;

  /// The netmask used by the VMware Admin Cluster.
  final String netmask;

  /// Creates a new [VmwareAdminClusterNetworkConfigStaticIpConfigIpBlock].
  /// [gateway] The network gateway used by the VMware Admin Cluster.
  /// [ips] The node's network configurations used by the VMware Admin Cluster.
  /// [netmask] The netmask used by the VMware Admin Cluster.
  VmwareAdminClusterNetworkConfigStaticIpConfigIpBlock({
    required this.gateway,
    required this.ips,
    required this.netmask,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gateway'] = gateway;
    map['ips'] = pulumi.Input.encodeList<
        VmwareAdminClusterNetworkConfigStaticIpConfigIpBlockIp,
        Map<String, dynamic>>(ips, (value) => value.toMap());
    map['netmask'] = netmask;
    return map;
  }

  factory VmwareAdminClusterNetworkConfigStaticIpConfigIpBlock.fromMap(
      Map<String, dynamic> map) {
    return VmwareAdminClusterNetworkConfigStaticIpConfigIpBlock(
      gateway: map['gateway'] as String,
      ips: pulumi.Input.decodeList<
              VmwareAdminClusterNetworkConfigStaticIpConfigIpBlockIp>(
          map['ips'],
          (value) =>
              VmwareAdminClusterNetworkConfigStaticIpConfigIpBlockIp.fromMap(
                  (value as Map).cast<String, dynamic>())),
      netmask: map['netmask'] as String,
    );
  }
}
