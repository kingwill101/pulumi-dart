// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipam_pool_prefix_allocation_response.dart';

/// AddressSpace contains an array of IP address ranges that can be used by subnets of the virtual network.
class AddressSpaceResponse {
  /// A list of address blocks reserved for this virtual network in CIDR notation.
  final pulumi.Input<List<String>>? addressPrefixes;
  /// A list of IPAM Pools allocating IP address prefixes.
  final pulumi.Input<List<IpamPoolPrefixAllocationResponse>>? ipamPoolPrefixAllocations;

  /// Creates a new [AddressSpaceResponse].
  /// [addressPrefixes] A list of address blocks reserved for this virtual network in CIDR notation.
  /// [ipamPoolPrefixAllocations] A list of IPAM Pools allocating IP address prefixes.
  AddressSpaceResponse({
    this.addressPrefixes,
    this.ipamPoolPrefixAllocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefixes': ?addressPrefixes,
      'ipamPoolPrefixAllocations': ?pulumi.Input.mapOptionalInputValue<List<IpamPoolPrefixAllocationResponse>, List<Map<String, dynamic>>>(ipamPoolPrefixAllocations, (value) => pulumi.Input.encodeList<IpamPoolPrefixAllocationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AddressSpaceResponse.fromMap(Map<String, dynamic> map) {
    return AddressSpaceResponse(
      addressPrefixes: map['addressPrefixes'] == null ? null : ((map['addressPrefixes']! as List).cast<String>()).input(),
      ipamPoolPrefixAllocations: map['ipamPoolPrefixAllocations'] == null ? null : (pulumi.Input.decodeList<IpamPoolPrefixAllocationResponse>(map['ipamPoolPrefixAllocations']!, (value) => IpamPoolPrefixAllocationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

