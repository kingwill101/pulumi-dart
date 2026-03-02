// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipam_pool_prefix_allocation.dart';

/// AddressSpace contains an array of IP address ranges that can be used by subnets of the virtual network.
class AddressSpace {
  /// A list of address blocks reserved for this virtual network in CIDR notation.
  final pulumi.Input<List<String>>? addressPrefixes;
  /// A list of IPAM Pools allocating IP address prefixes.
  final pulumi.Input<List<IpamPoolPrefixAllocation>>? ipamPoolPrefixAllocations;

  /// Creates a new [AddressSpace].
  /// [addressPrefixes] A list of address blocks reserved for this virtual network in CIDR notation.
  /// [ipamPoolPrefixAllocations] A list of IPAM Pools allocating IP address prefixes.
  AddressSpace({
    this.addressPrefixes,
    this.ipamPoolPrefixAllocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefixes': ?addressPrefixes,
      'ipamPoolPrefixAllocations': ?pulumi.Input.mapOptionalInputValue<List<IpamPoolPrefixAllocation>, List<Map<String, dynamic>>>(ipamPoolPrefixAllocations, (value) => pulumi.Input.encodeList<IpamPoolPrefixAllocation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AddressSpace.fromMap(Map<String, dynamic> map) {
    return AddressSpace(
      addressPrefixes: map['addressPrefixes'] == null ? null : ((map['addressPrefixes'] as List).cast<String>()).input(),
      ipamPoolPrefixAllocations: map['ipamPoolPrefixAllocations'] == null ? null : (pulumi.Input.decodeList<IpamPoolPrefixAllocation>(map['ipamPoolPrefixAllocations'], (value) => IpamPoolPrefixAllocation.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

