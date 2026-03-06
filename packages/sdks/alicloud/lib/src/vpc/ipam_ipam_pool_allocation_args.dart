// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_ipam_ipam_pool_allocation_ipam_ipam_pool_allocation_args_doc}
/// The set of arguments for IpamIpamPoolAllocation.
/// {@endtemplate}
/// {@macro pulumi_vpc_ipam_ipam_pool_allocation_ipam_ipam_pool_allocation_args_doc}
class IpamIpamPoolAllocationArgs {
  /// The allocated address segment.
  final pulumi.Input<String>? cidr;
  /// Create a custom reserved network segment from The IPAM address pool by entering a mask.
  ///
  /// &gt; **NOTE:**  Enter at least one of `Cidr` or **CidrMask.
  final pulumi.Input<int>? cidrMask;
  /// The description of the ipam pool alloctaion.
  /// It must be 1 to 256 characters in length and must start with an English letter or Chinese character, but cannot start with 'http:// 'or 'https. If it is not filled in, it is empty. The default value is empty.
  final pulumi.Input<String>? ipamPoolAllocationDescription;
  /// The name of the ipam pool allocation.
  /// It must be 1 to 128 characters in length and cannot start with 'http:// 'or 'https.
  final pulumi.Input<String>? ipamPoolAllocationName;
  /// The ID of the IPAM Pool.
  final pulumi.Input<String> ipamPoolId;

  /// Creates a new [IpamIpamPoolAllocationArgs].
  /// [cidr] The allocated address segment.
  /// [cidrMask] Create a custom reserved network segment from The IPAM address pool by entering a mask.
  /// [ipamPoolAllocationDescription] The description of the ipam pool alloctaion.
  /// [ipamPoolAllocationName] The name of the ipam pool allocation.
  /// [ipamPoolId] The ID of the IPAM Pool.
  const IpamIpamPoolAllocationArgs({
    this.cidr,
    this.cidrMask,
    this.ipamPoolAllocationDescription,
    this.ipamPoolAllocationName,
    required this.ipamPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': ?cidr,
      'cidrMask': ?cidrMask,
      'ipamPoolAllocationDescription': ?ipamPoolAllocationDescription,
      'ipamPoolAllocationName': ?ipamPoolAllocationName,
      'ipamPoolId': ipamPoolId,
    };
  }

  factory IpamIpamPoolAllocationArgs.fromMap(Map<String, dynamic> map) {
    return IpamIpamPoolAllocationArgs(
      cidr: (() { final guardedValue = map['cidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cidrMask: (() { final guardedValue = map['cidrMask']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ipamPoolAllocationDescription: (() { final guardedValue = map['ipamPoolAllocationDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipamPoolAllocationName: (() { final guardedValue = map['ipamPoolAllocationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipamPoolId: pulumi.Input.fromValue(map['ipamPoolId'] as String),
    );
  }
}

