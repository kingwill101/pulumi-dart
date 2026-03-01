// ignore_for_file: unused_element, unnecessary_cast


class EndpointAccessVpcEndpointNetworkInterface {
  /// The Availability Zone.
  final String? availabilityZone;
  /// The network interface identifier.
  final String? networkInterfaceId;
  /// The IPv4 address of the network interface within the subnet.
  final String? privateIpAddress;
  /// The subnet identifier.
  final String? subnetId;

  /// Creates a new [EndpointAccessVpcEndpointNetworkInterface].
  /// [availabilityZone] The Availability Zone.
  /// [networkInterfaceId] The network interface identifier.
  /// [privateIpAddress] The IPv4 address of the network interface within the subnet.
  /// [subnetId] The subnet identifier.
  EndpointAccessVpcEndpointNetworkInterface({
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

  factory EndpointAccessVpcEndpointNetworkInterface.fromMap(Map<String, dynamic> map) {
    return EndpointAccessVpcEndpointNetworkInterface(
      availabilityZone: map['availabilityZone'] == null ? null : map['availabilityZone'] as String,
      networkInterfaceId: map['networkInterfaceId'] == null ? null : map['networkInterfaceId'] as String,
      privateIpAddress: map['privateIpAddress'] == null ? null : map['privateIpAddress'] as String,
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
    );
  }
}

