// ignore_for_file: unused_element, unnecessary_cast

import 'network_interface_nic_type4.dart';

/// The definition of a network interface resource attached to a VM.
class NetworkInterface5 {
  /// Optional. The name of the VPC that this VM instance is in. Format: `projects/{project_id}/global/networks/{network_id}`
  final String? network;

  /// Optional. The type of vNIC to be used on this interface. This may be gVNIC or VirtioNet.
  final NetworkInterfaceNicType4? nicType;

  /// Optional. The name of the subnet that this VM instance is in. Format: `projects/{project_id}/regions/{region}/subnetworks/{subnetwork_id}`
  final String? subnet;

  NetworkInterface5({
    this.network,
    this.nicType,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final nicTypeValue = nicType;
    if (nicTypeValue != null) {
      map['nicType'] = nicTypeValue.value;
    }
    final subnetValue = subnet;
    if (subnetValue != null) {
      map['subnet'] = subnetValue;
    }
    return map;
  }

  factory NetworkInterface5.fromMap(Map<String, dynamic> map) {
    return NetworkInterface5(
      network: map['network'] == null ? null : map['network'] as String,
      nicType: map['nicType'] == null
          ? null
          : NetworkInterfaceNicType4.fromValue(map['nicType'] as String),
      subnet: map['subnet'] == null ? null : map['subnet'] as String,
    );
  }
}
