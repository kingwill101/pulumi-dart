// ignore_for_file: unused_element, unnecessary_cast

class GetWorkgroupEndpointVpcEndpointNetworkInterface {
  /// The availability Zone.
  final String availabilityZone;

  /// The unique identifier of the network interface.
  final String networkInterfaceId;

  /// The IPv4 address of the network interface within the subnet.
  final String privateIpAddress;

  /// The unique identifier of the subnet.
  final String subnetId;

  GetWorkgroupEndpointVpcEndpointNetworkInterface({
    required this.availabilityZone,
    required this.networkInterfaceId,
    required this.privateIpAddress,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['availabilityZone'] = availabilityZone;
    map['networkInterfaceId'] = networkInterfaceId;
    map['privateIpAddress'] = privateIpAddress;
    map['subnetId'] = subnetId;
    return map;
  }

  factory GetWorkgroupEndpointVpcEndpointNetworkInterface.fromMap(
      Map<String, dynamic> map) {
    return GetWorkgroupEndpointVpcEndpointNetworkInterface(
      availabilityZone: map['availabilityZone'] as String,
      networkInterfaceId: map['networkInterfaceId'] as String,
      privateIpAddress: map['privateIpAddress'] as String,
      subnetId: map['subnetId'] as String,
    );
  }
}
