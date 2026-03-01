// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interface_vpc_ipv4_address.dart';
import 'interface_vpc_ipv4_assigned_address.dart';
import 'interface_vpc_ipv4_assigned_range.dart';
import 'interface_vpc_ipv4_range.dart';

class InterfaceVpcIpv4 {
  /// Specifies the IPv4 addresses to use in the VPC subnet. Each object in this list supports:
  final List<InterfaceVpcIpv4Address>? addresses;
  /// (Computed) The IPv4 addresses assigned for use in the VPC subnet, calculated from the `addresses` input. Each object in this set supports:
  final List<InterfaceVpcIpv4AssignedAddress>? assignedAddresses;
  /// Assigned additional IPv6 ranges to use in the VPC subnet, calculated from `ranges` input.
  final List<InterfaceVpcIpv4AssignedRange>? assignedRanges;
  /// IPv4 ranges in CIDR notation (1.2.3.4/24) or prefix-only format (/24). Each object in this list supports:
  final List<InterfaceVpcIpv4Range>? ranges;

  /// Creates a new [InterfaceVpcIpv4].
  /// [addresses] Specifies the IPv4 addresses to use in the VPC subnet. Each object in this list supports:
  /// [assignedAddresses] (Computed) The IPv4 addresses assigned for use in the VPC subnet, calculated from the `addresses` input. Each object in this set supports:
  /// [assignedRanges] Assigned additional IPv6 ranges to use in the VPC subnet, calculated from `ranges` input.
  /// [ranges] IPv4 ranges in CIDR notation (1.2.3.4/24) or prefix-only format (/24). Each object in this list supports:
  InterfaceVpcIpv4({
    this.addresses,
    this.assignedAddresses,
    this.assignedRanges,
    this.ranges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': ?addresses == null ? null : pulumi.Input.encodeList<InterfaceVpcIpv4Address, Map<String, dynamic>>(addresses!, (value) => value.toMap()),
      'assignedAddresses': ?assignedAddresses == null ? null : pulumi.Input.encodeList<InterfaceVpcIpv4AssignedAddress, Map<String, dynamic>>(assignedAddresses!, (value) => value.toMap()),
      'assignedRanges': ?assignedRanges == null ? null : pulumi.Input.encodeList<InterfaceVpcIpv4AssignedRange, Map<String, dynamic>>(assignedRanges!, (value) => value.toMap()),
      'ranges': ?ranges == null ? null : pulumi.Input.encodeList<InterfaceVpcIpv4Range, Map<String, dynamic>>(ranges!, (value) => value.toMap()),
    };
  }

  factory InterfaceVpcIpv4.fromMap(Map<String, dynamic> map) {
    return InterfaceVpcIpv4(
      addresses: map['addresses'] == null ? null : pulumi.Input.decodeList<InterfaceVpcIpv4Address>(map['addresses'], (value) => InterfaceVpcIpv4Address.fromMap((value as Map).cast<String, dynamic>())),
      assignedAddresses: map['assignedAddresses'] == null ? null : pulumi.Input.decodeList<InterfaceVpcIpv4AssignedAddress>(map['assignedAddresses'], (value) => InterfaceVpcIpv4AssignedAddress.fromMap((value as Map).cast<String, dynamic>())),
      assignedRanges: map['assignedRanges'] == null ? null : pulumi.Input.decodeList<InterfaceVpcIpv4AssignedRange>(map['assignedRanges'], (value) => InterfaceVpcIpv4AssignedRange.fromMap((value as Map).cast<String, dynamic>())),
      ranges: map['ranges'] == null ? null : pulumi.Input.decodeList<InterfaceVpcIpv4Range>(map['ranges'], (value) => InterfaceVpcIpv4Range.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

