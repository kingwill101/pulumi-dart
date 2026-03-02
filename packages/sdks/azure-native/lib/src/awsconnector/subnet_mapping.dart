// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of SubnetMapping
class SubnetMapping {
  /// [Network Load Balancers] The allocation ID of the Elastic IP address for an internet-facing load balancer.
  final pulumi.Input<String>? allocationId;
  /// [Network Load Balancers] The IPv6 address.
  final pulumi.Input<String>? iPv6Address;
  /// A IPAddressType
  final pulumi.Input<String>? ipAddressType;
  /// [Network Load Balancers] The private IPv4 address for an internal load balancer.
  final pulumi.Input<String>? privateIPv4Address;
  /// A SubnetId.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [SubnetMapping].
  /// [allocationId] [Network Load Balancers] The allocation ID of the Elastic IP address for an internet-facing load balancer.
  /// [iPv6Address] [Network Load Balancers] The IPv6 address.
  /// [ipAddressType] A IPAddressType
  /// [privateIPv4Address] [Network Load Balancers] The private IPv4 address for an internal load balancer.
  /// [subnetId] A SubnetId.
  SubnetMapping({
    this.allocationId,
    this.iPv6Address,
    this.ipAddressType,
    this.privateIPv4Address,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationId': ?allocationId,
      'iPv6Address': ?iPv6Address,
      'ipAddressType': ?ipAddressType,
      'privateIPv4Address': ?privateIPv4Address,
      'subnetId': ?subnetId,
    };
  }

  factory SubnetMapping.fromMap(Map<String, dynamic> map) {
    return SubnetMapping(
      allocationId: map['allocationId'] == null ? null : (map['allocationId']! as String).input(),
      iPv6Address: map['iPv6Address'] == null ? null : (map['iPv6Address']! as String).input(),
      ipAddressType: map['ipAddressType'] == null ? null : (map['ipAddressType']! as String).input(),
      privateIPv4Address: map['privateIPv4Address'] == null ? null : (map['privateIPv4Address']! as String).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId']! as String).input(),
    );
  }
}

