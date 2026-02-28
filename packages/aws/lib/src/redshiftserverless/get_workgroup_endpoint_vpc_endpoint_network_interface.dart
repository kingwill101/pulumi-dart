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

  /// Creates a new [GetWorkgroupEndpointVpcEndpointNetworkInterface].
  /// [availabilityZone] The availability Zone.
  /// [networkInterfaceId] The unique identifier of the network interface.
  /// [privateIpAddress] The IPv4 address of the network interface within the subnet.
  /// [subnetId] The unique identifier of the subnet.
  GetWorkgroupEndpointVpcEndpointNetworkInterface({
    required this.availabilityZone,
    required this.networkInterfaceId,
    required this.privateIpAddress,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': availabilityZone,
      'networkInterfaceId': networkInterfaceId,
      'privateIpAddress': privateIpAddress,
      'subnetId': subnetId,
    };
  }

  factory GetWorkgroupEndpointVpcEndpointNetworkInterface.fromMap(Map<String, dynamic> map) {
    return GetWorkgroupEndpointVpcEndpointNetworkInterface(
      availabilityZone: map['availabilityZone'] as String,
      networkInterfaceId: map['networkInterfaceId'] as String,
      privateIpAddress: map['privateIpAddress'] as String,
      subnetId: map['subnetId'] as String,
    );
  }
}

