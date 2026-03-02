// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointAccessVpcEndpointNetworkInterface {
  /// The Availability Zone.
  final pulumi.Input<String>? availabilityZone;
  /// The network interface identifier.
  final pulumi.Input<String>? networkInterfaceId;
  /// The IPv4 address of the network interface within the subnet.
  final pulumi.Input<String>? privateIpAddress;
  /// The subnet identifier.
  final pulumi.Input<String>? subnetId;

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
      availabilityZone: map['availabilityZone'] == null ? null : ((map['availabilityZone'] as String).input()).input(),
      networkInterfaceId: map['networkInterfaceId'] == null ? null : ((map['networkInterfaceId'] as String).input()).input(),
      privateIpAddress: map['privateIpAddress'] == null ? null : ((map['privateIpAddress'] as String).input()).input(),
      subnetId: map['subnetId'] == null ? null : ((map['subnetId'] as String).input()).input(),
    );
  }
}

