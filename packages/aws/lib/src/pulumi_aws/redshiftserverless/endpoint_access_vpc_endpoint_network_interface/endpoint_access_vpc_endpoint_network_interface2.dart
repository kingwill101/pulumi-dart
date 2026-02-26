// ignore_for_file: unused_element, unnecessary_cast

class EndpointAccessVpcEndpointNetworkInterface2 {
  /// The availability Zone.
  final String? availabilityZone;

  /// The unique identifier of the network interface.
  final String? networkInterfaceId;

  /// The IPv4 address of the network interface within the subnet.
  final String? privateIpAddress;

  /// The unique identifier of the subnet.
  final String? subnetId;

  EndpointAccessVpcEndpointNetworkInterface2({
    this.availabilityZone,
    this.networkInterfaceId,
    this.privateIpAddress,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final availabilityZoneValue = availabilityZone;
    if (availabilityZoneValue != null) {
      map['availabilityZone'] = availabilityZoneValue;
    }
    final networkInterfaceIdValue = networkInterfaceId;
    if (networkInterfaceIdValue != null) {
      map['networkInterfaceId'] = networkInterfaceIdValue;
    }
    final privateIpAddressValue = privateIpAddress;
    if (privateIpAddressValue != null) {
      map['privateIpAddress'] = privateIpAddressValue;
    }
    final subnetIdValue = subnetId;
    if (subnetIdValue != null) {
      map['subnetId'] = subnetIdValue;
    }
    return map;
  }

  factory EndpointAccessVpcEndpointNetworkInterface2.fromMap(
      Map<String, dynamic> map) {
    return EndpointAccessVpcEndpointNetworkInterface2(
      availabilityZone: map['availabilityZone'] == null
          ? null
          : map['availabilityZone'] as String,
      networkInterfaceId: map['networkInterfaceId'] == null
          ? null
          : map['networkInterfaceId'] as String,
      privateIpAddress: map['privateIpAddress'] == null
          ? null
          : map['privateIpAddress'] as String,
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
    );
  }
}
