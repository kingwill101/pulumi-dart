// ignore_for_file: unused_element, unnecessary_cast

import 'network_interface_sub_interface_ip_allocation_mode.dart';

class NetworkInterfaceSubInterface {
  /// An IPv4 internal IP address to assign to the instance for this subinterface. If specified, ip_allocation_mode should be set to ALLOCATE_IP.
  final String? ipAddress;
  final NetworkInterfaceSubInterfaceIpAllocationMode? ipAllocationMode;

  /// If specified, this subnetwork must belong to the same network as that of the network interface. If not specified the subnet of network interface will be used. If you specify this property, you can specify the subnetwork as a full or partial URL. For example, the following are all valid URLs: - https://www.googleapis.com/compute/v1/projects/project/regions/region /subnetworks/subnetwork - regions/region/subnetworks/subnetwork
  final String? subnetwork;

  /// VLAN tag. Should match the VLAN(s) supported by the subnetwork to which this subinterface is connecting.
  final int? vlan;

  NetworkInterfaceSubInterface({
    this.ipAddress,
    this.ipAllocationMode,
    this.subnetwork,
    this.vlan,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ipAddressValue = ipAddress;
    if (ipAddressValue != null) {
      map['ipAddress'] = ipAddressValue;
    }
    final ipAllocationModeValue = ipAllocationMode;
    if (ipAllocationModeValue != null) {
      map['ipAllocationMode'] = ipAllocationModeValue.value;
    }
    final subnetworkValue = subnetwork;
    if (subnetworkValue != null) {
      map['subnetwork'] = subnetworkValue;
    }
    final vlanValue = vlan;
    if (vlanValue != null) {
      map['vlan'] = vlanValue;
    }
    return map;
  }

  factory NetworkInterfaceSubInterface.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceSubInterface(
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      ipAllocationMode: map['ipAllocationMode'] == null
          ? null
          : NetworkInterfaceSubInterfaceIpAllocationMode.fromValue(
              map['ipAllocationMode'] as String),
      subnetwork:
          map['subnetwork'] == null ? null : map['subnetwork'] as String,
      vlan: map['vlan'] == null ? null : map['vlan'] as int,
    );
  }
}
