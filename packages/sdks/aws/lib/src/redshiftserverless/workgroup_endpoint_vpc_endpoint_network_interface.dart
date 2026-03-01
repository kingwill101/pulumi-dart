// ignore_for_file: unused_element, unnecessary_cast


class WorkgroupEndpointVpcEndpointNetworkInterface {
  /// The availability Zone.
  final String? availabilityZone;
  /// The unique identifier of the network interface.
  final String? networkInterfaceId;
  /// The IPv4 address of the network interface within the subnet.
  final String? privateIpAddress;
  /// The unique identifier of the subnet.
  final String? subnetId;

  /// Creates a new [WorkgroupEndpointVpcEndpointNetworkInterface].
  /// [availabilityZone] The availability Zone.
  /// [networkInterfaceId] The unique identifier of the network interface.
  /// [privateIpAddress] The IPv4 address of the network interface within the subnet.
  /// [subnetId] The unique identifier of the subnet.
  WorkgroupEndpointVpcEndpointNetworkInterface({
    this.availabilityZone,
    this.networkInterfaceId,
    this.privateIpAddress,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'networkInterfaceId': ?networkInterfaceId,
      'privateIpAddress': ?privateIpAddress,
      'subnetId': ?subnetId,
    };
  }

  factory WorkgroupEndpointVpcEndpointNetworkInterface.fromMap(Map<String, dynamic> map) {
    return WorkgroupEndpointVpcEndpointNetworkInterface(
      availabilityZone: map['availabilityZone'] == null ? null : map['availabilityZone'] as String,
      networkInterfaceId: map['networkInterfaceId'] == null ? null : map['networkInterfaceId'] as String,
      privateIpAddress: map['privateIpAddress'] == null ? null : map['privateIpAddress'] as String,
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
    );
  }
}

