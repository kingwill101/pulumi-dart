// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'vmware_host_ip.dart';

/// Represents a collection of IP addresses to assign to nodes.
class VmwareIpBlock {
  /// The network gateway used by the VMware user cluster.
  final String? gateway;

  /// The node's network configurations used by the VMware user cluster.
  final List<VmwareHostIp>? ips;

  /// The netmask used by the VMware user cluster.
  final String? netmask;

  VmwareIpBlock({
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
      map['ips'] = Input.encodeList<VmwareHostIp, Map<String, dynamic>>(
          ipsValue, (value) => value.toMap());
    }
    final netmaskValue = netmask;
    if (netmaskValue != null) {
      map['netmask'] = netmaskValue;
    }
    return map;
  }

  factory VmwareIpBlock.fromMap(Map<String, dynamic> map) {
    return VmwareIpBlock(
      gateway: map['gateway'] == null ? null : map['gateway'] as String,
      ips: map['ips'] == null
          ? null
          : Input.decodeList<VmwareHostIp>(
              map['ips'],
              (value) =>
                  VmwareHostIp.fromMap((value as Map).cast<String, dynamic>())),
      netmask: map['netmask'] == null ? null : map['netmask'] as String,
    );
  }
}
