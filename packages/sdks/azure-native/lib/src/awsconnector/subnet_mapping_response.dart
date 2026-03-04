// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of SubnetMapping
class SubnetMappingResponse {
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

  /// Creates a new [SubnetMappingResponse].
  /// [allocationId] [Network Load Balancers] The allocation ID of the Elastic IP address for an internet-facing load balancer.
  /// [iPv6Address] [Network Load Balancers] The IPv6 address.
  /// [ipAddressType] A IPAddressType
  /// [privateIPv4Address] [Network Load Balancers] The private IPv4 address for an internal load balancer.
  /// [subnetId] A SubnetId.
  SubnetMappingResponse({
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

  factory SubnetMappingResponse.fromMap(Map<String, dynamic> map) {
    return SubnetMappingResponse(
      allocationId: (() {
        final guardedValue = map['allocationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      iPv6Address: (() {
        final guardedValue = map['iPv6Address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipAddressType: (() {
        final guardedValue = map['ipAddressType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateIPv4Address: (() {
        final guardedValue = map['privateIPv4Address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subnetId: (() {
        final guardedValue = map['subnetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
