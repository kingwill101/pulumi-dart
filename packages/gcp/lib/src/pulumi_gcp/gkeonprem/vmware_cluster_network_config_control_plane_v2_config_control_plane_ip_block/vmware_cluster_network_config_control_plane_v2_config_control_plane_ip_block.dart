// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../vmware_cluster_network_config_control_plane_v2_config_control_plane_ip_block_ip/vmware_cluster_network_config_control_plane_v2_config_control_plane_ip_block_ip.dart';

class VMwareClusterNetworkConfigControlPlaneV2ConfigControlPlaneIpBlock {
  /// The network gateway used by the VMware User Cluster.
  final String? gateway;

  /// The node's network configurations used by the VMware User Cluster.
  /// Structure is documented below.
  final List<
      VMwareClusterNetworkConfigControlPlaneV2ConfigControlPlaneIpBlockIp>? ips;

  /// The netmask used by the VMware User Cluster.
  final String? netmask;

  VMwareClusterNetworkConfigControlPlaneV2ConfigControlPlaneIpBlock({
    this.gateway,
    this.ips,
    this.netmask,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final gatewayValue = gateway;
    if (gatewayValue != null) {
      map['gateway'] = gatewayValue;
    }
    final ipsValue = ips;
    if (ipsValue != null) {
      map['ips'] = pulumi.Input.encodeList<
          VMwareClusterNetworkConfigControlPlaneV2ConfigControlPlaneIpBlockIp,
          Map<String, dynamic>>(ipsValue, (value) => value.toMap());
    }
    final netmaskValue = netmask;
    if (netmaskValue != null) {
      map['netmask'] = netmaskValue;
    }
    return map;
  }

  factory VMwareClusterNetworkConfigControlPlaneV2ConfigControlPlaneIpBlock.fromMap(
      Map<String, dynamic> map) {
    return VMwareClusterNetworkConfigControlPlaneV2ConfigControlPlaneIpBlock(
      gateway: map['gateway'] == null ? null : map['gateway'] as String,
      ips: map['ips'] == null
          ? null
          : pulumi.Input.decodeList<
                  VMwareClusterNetworkConfigControlPlaneV2ConfigControlPlaneIpBlockIp>(
              map['ips'],
              (value) =>
                  VMwareClusterNetworkConfigControlPlaneV2ConfigControlPlaneIpBlockIp
                      .fromMap((value as Map).cast<String, dynamic>())),
      netmask: map['netmask'] == null ? null : map['netmask'] as String,
    );
  }
}
