// ignore_for_file: unused_element, unnecessary_cast

class NetworkInterfaceSubInterfaceResponse {
  /// An IPv4 internal IP address to assign to the instance for this subinterface. If specified, ip_allocation_mode should be set to ALLOCATE_IP.
  final String ipAddress;
  final String ipAllocationMode;

  /// If specified, this subnetwork must belong to the same network as that of the network interface. If not specified the subnet of network interface will be used. If you specify this property, you can specify the subnetwork as a full or partial URL. For example, the following are all valid URLs: - https://www.googleapis.com/compute/v1/projects/project/regions/region /subnetworks/subnetwork - regions/region/subnetworks/subnetwork
  final String subnetwork;

  /// VLAN tag. Should match the VLAN(s) supported by the subnetwork to which this subinterface is connecting.
  final int vlan;

  NetworkInterfaceSubInterfaceResponse({
    required this.ipAddress,
    required this.ipAllocationMode,
    required this.subnetwork,
    required this.vlan,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipAddress'] = ipAddress;
    map['ipAllocationMode'] = ipAllocationMode;
    map['subnetwork'] = subnetwork;
    map['vlan'] = vlan;
    return map;
  }

  factory NetworkInterfaceSubInterfaceResponse.fromMap(
      Map<String, dynamic> map) {
    return NetworkInterfaceSubInterfaceResponse(
      ipAddress: map['ipAddress'] as String,
      ipAllocationMode: map['ipAllocationMode'] as String,
      subnetwork: map['subnetwork'] as String,
      vlan: map['vlan'] as int,
    );
  }
}
