// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_vpc_ipam_pool_cidr_allocation_vpc_ipam_pool_cidr_allocation_args_doc}
/// The set of arguments for VpcIpamPoolCidrAllocation.
/// {@endtemplate}
/// {@macro pulumi_ec2_vpc_ipam_pool_cidr_allocation_vpc_ipam_pool_cidr_allocation_args_doc}
class VpcIpamPoolCidrAllocationArgs {
  /// The CIDR you want to assign to the pool.
  final pulumi.Input<String>? cidr;
  /// The description for the allocation.
  final pulumi.Input<String>? description;
  /// Exclude a particular CIDR range from being returned by the pool.
  final pulumi.Input<List<String>>? disallowedCidrs;
  /// The ID of the pool to which you want to assign a CIDR.
  final pulumi.Input<String> ipamPoolId;
  /// The netmask length of the CIDR you would like to allocate to the IPAM pool. Valid Values: `0-128`.
  final pulumi.Input<int>? netmaskLength;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [VpcIpamPoolCidrAllocationArgs].
  /// [cidr] The CIDR you want to assign to the pool.
  /// [description] The description for the allocation.
  /// [disallowedCidrs] Exclude a particular CIDR range from being returned by the pool.
  /// [ipamPoolId] The ID of the pool to which you want to assign a CIDR.
  /// [netmaskLength] The netmask length of the CIDR you would like to allocate to the IPAM pool. Valid Values: `0-128`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  VpcIpamPoolCidrAllocationArgs({
    this.cidr,
    this.description,
    this.disallowedCidrs,
    required this.ipamPoolId,
    this.netmaskLength,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': ?cidr,
      'description': ?description,
      'disallowedCidrs': ?disallowedCidrs,
      'ipamPoolId': ipamPoolId,
      'netmaskLength': ?netmaskLength,
      'region': ?region,
    };
  }

  factory VpcIpamPoolCidrAllocationArgs.fromMap(Map<String, dynamic> map) {
    return VpcIpamPoolCidrAllocationArgs(
      cidr: map['cidr'] == null ? null : ((map['cidr'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      disallowedCidrs: map['disallowedCidrs'] == null ? null : (((map['disallowedCidrs'] as List).cast<String>()).input()).input(),
      ipamPoolId: (map['ipamPoolId'] as String).input(),
      netmaskLength: map['netmaskLength'] == null ? null : ((map['netmaskLength'] as int).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

