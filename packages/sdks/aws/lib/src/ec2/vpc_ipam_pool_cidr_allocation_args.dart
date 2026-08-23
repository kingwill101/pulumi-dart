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
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [VpcIpamPoolCidrAllocationArgs].
  /// [cidr] The CIDR you want to assign to the pool.
  /// [description] The description for the allocation.
  /// [disallowedCidrs] Exclude a particular CIDR range from being returned by the pool.
  /// [ipamPoolId] The ID of the pool to which you want to assign a CIDR.
  /// [netmaskLength] The netmask length of the CIDR you would like to allocate to the IPAM pool. Valid Values: `0-128`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const VpcIpamPoolCidrAllocationArgs({
    this.cidr,
    this.description,
    this.disallowedCidrs,
    required this.ipamPoolId,
    this.netmaskLength,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': ?cidr,
      'description': ?description,
      'disallowedCidrs': ?disallowedCidrs,
      'ipamPoolId': ipamPoolId,
      'netmaskLength': ?netmaskLength,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory VpcIpamPoolCidrAllocationArgs.fromMap(Map<String, dynamic> map) {
    return VpcIpamPoolCidrAllocationArgs(
      cidr: (() { final guardedValue = map['cidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disallowedCidrs: (() { final guardedValue = map['disallowedCidrs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipamPoolId: pulumi.Input.fromValue(map['ipamPoolId'] as String),
      netmaskLength: (() { final guardedValue = map['netmaskLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
