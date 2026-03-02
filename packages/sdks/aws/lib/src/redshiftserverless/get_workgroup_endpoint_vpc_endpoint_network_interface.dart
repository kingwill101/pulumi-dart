// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkgroupEndpointVpcEndpointNetworkInterface {
  /// The availability Zone.
  final pulumi.Input<String> availabilityZone;
  /// The unique identifier of the network interface.
  final pulumi.Input<String> networkInterfaceId;
  /// The IPv4 address of the network interface within the subnet.
  final pulumi.Input<String> privateIpAddress;
  /// The unique identifier of the subnet.
  final pulumi.Input<String> subnetId;

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
      availabilityZone: (map['availabilityZone'] as String).input(),
      networkInterfaceId: (map['networkInterfaceId'] as String).input(),
      privateIpAddress: (map['privateIpAddress'] as String).input(),
      subnetId: (map['subnetId'] as String).input(),
    );
  }
}

