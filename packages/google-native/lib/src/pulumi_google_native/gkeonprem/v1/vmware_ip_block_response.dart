// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'vmware_host_ip_response.dart';

/// Represents a collection of IP addresses to assign to nodes.
class VmwareIpBlockResponse {
  /// The network gateway used by the VMware user cluster.
  final String gateway;

  /// The node's network configurations used by the VMware user cluster.
  final List<VmwareHostIpResponse> ips;

  /// The netmask used by the VMware user cluster.
  final String netmask;

  VmwareIpBlockResponse({
    required this.gateway,
    required this.ips,
    required this.netmask,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gateway'] = gateway;
    map['ips'] = Input.encodeList<VmwareHostIpResponse, Map<String, dynamic>>(
        ips, (value) => value.toMap());
    map['netmask'] = netmask;
    return map;
  }

  factory VmwareIpBlockResponse.fromMap(Map<String, dynamic> map) {
    return VmwareIpBlockResponse(
      gateway: map['gateway'] as String,
      ips: Input.decodeList<VmwareHostIpResponse>(
          map['ips'],
          (value) => VmwareHostIpResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      netmask: map['netmask'] as String,
    );
  }
}
