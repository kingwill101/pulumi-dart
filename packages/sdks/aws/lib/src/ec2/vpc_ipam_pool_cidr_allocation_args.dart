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
    pulumi.Output<String>? cidr,
    pulumi.Output<String>? description,
    pulumi.Output<List<String>>? disallowedCidrs,
    required pulumi.Output<String> ipamPoolId,
    pulumi.Output<int>? netmaskLength,
    pulumi.Output<String>? region,
  }) :
      cidr = pulumi.Input.asOptionalInput<String>(cidr),
      description = pulumi.Input.asOptionalInput<String>(description),
      disallowedCidrs = pulumi.Input.asOptionalInput<List<String>>(disallowedCidrs),
      ipamPoolId = pulumi.Input.asInput<String>(ipamPoolId),
      netmaskLength = pulumi.Input.asOptionalInput<int>(netmaskLength),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      cidr: map['cidr'] == null ? null : pulumi.Output.create<String>(map['cidr'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      disallowedCidrs: map['disallowedCidrs'] == null ? null : pulumi.Output.create<List<String>>((map['disallowedCidrs'] as List).cast<String>()),
      ipamPoolId: pulumi.Output.create<String>(map['ipamPoolId'] as String),
      netmaskLength: map['netmaskLength'] == null ? null : pulumi.Output.create<int>(map['netmaskLength'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

