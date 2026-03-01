// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_vpc_ipv6_cidr_block_association_vpc_ipv6_cidr_block_association_args_doc}
/// The set of arguments for VpcIpv6CidrBlockAssociation.
/// {@endtemplate}
/// {@macro pulumi_ec2_vpc_ipv6_cidr_block_association_vpc_ipv6_cidr_block_association_args_doc}
class VpcIpv6CidrBlockAssociationArgs {
  /// Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IPv6 addresses, or the size of the CIDR block. Default is `false`. Conflicts with `ipv6_ipam_pool_id`, `ipv6_pool`, `ipv6_cidr_block` and `ipv6_netmask_length`.
  final pulumi.Input<bool>? assignGeneratedIpv6CidrBlock;
  /// The IPv6 CIDR block for the VPC. CIDR can be explicitly set or it can be derived from IPAM using `ipv6_netmask_length`. This parameter is required if `ipv6_netmask_length` is not set and the IPAM pool does not have `allocation_default_netmask` set. Conflicts with `assign_generated_ipv6_cidr_block`.
  final pulumi.Input<String>? ipv6CidrBlock;
  /// The ID of an IPv6 IPAM pool you want to use for allocating this VPC's CIDR. IPAM is a VPC feature that you can use to automate your IP address management workflows including assigning, tracking, troubleshooting, and auditing IP addresses across AWS Regions and accounts. Conflict with `assign_generated_ipv6_cidr_block` and `ipv6_pool`.
  final pulumi.Input<String>? ipv6IpamPoolId;
  /// The netmask length of the IPv6 CIDR you want to allocate to this VPC. Requires specifying a `ipv6_ipam_pool_id`. This parameter is optional if the IPAM pool has `allocation_default_netmask` set, otherwise it or `ipv6_cidr_block` are required. Conflicts with `ipv6_cidr_block`.
  final pulumi.Input<int>? ipv6NetmaskLength;
  /// The  ID of an IPv6 address pool from which to allocate the IPv6 CIDR block. Conflicts with `assign_generated_ipv6_cidr_block` and `ipv6_ipam_pool_id`.
  final pulumi.Input<String>? ipv6Pool;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the VPC to make the association with.
  final pulumi.Input<String> vpcId;

  /// Creates a new [VpcIpv6CidrBlockAssociationArgs].
  /// [assignGeneratedIpv6CidrBlock] Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IPv6 addresses, or the size of the CIDR block. Default is `false`. Conflicts with `ipv6_ipam_pool_id`, `ipv6_pool`, `ipv6_cidr_block` and `ipv6_netmask_length`.
  /// [ipv6CidrBlock] The IPv6 CIDR block for the VPC. CIDR can be explicitly set or it can be derived from IPAM using `ipv6_netmask_length`. This parameter is required if `ipv6_netmask_length` is not set and the IPAM pool does not have `allocation_default_netmask` set. Conflicts with `assign_generated_ipv6_cidr_block`.
  /// [ipv6IpamPoolId] The ID of an IPv6 IPAM pool you want to use for allocating this VPC's CIDR. IPAM is a VPC feature that you can use to automate your IP address management workflows including assigning, tracking, troubleshooting, and auditing IP addresses across AWS Regions and accounts. Conflict with `assign_generated_ipv6_cidr_block` and `ipv6_pool`.
  /// [ipv6NetmaskLength] The netmask length of the IPv6 CIDR you want to allocate to this VPC. Requires specifying a `ipv6_ipam_pool_id`. This parameter is optional if the IPAM pool has `allocation_default_netmask` set, otherwise it or `ipv6_cidr_block` are required. Conflicts with `ipv6_cidr_block`.
  /// [ipv6Pool] The  ID of an IPv6 address pool from which to allocate the IPv6 CIDR block. Conflicts with `assign_generated_ipv6_cidr_block` and `ipv6_ipam_pool_id`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vpcId] The ID of the VPC to make the association with.
  VpcIpv6CidrBlockAssociationArgs({
    pulumi.Output<bool>? assignGeneratedIpv6CidrBlock,
    pulumi.Output<String>? ipv6CidrBlock,
    pulumi.Output<String>? ipv6IpamPoolId,
    pulumi.Output<int>? ipv6NetmaskLength,
    pulumi.Output<String>? ipv6Pool,
    pulumi.Output<String>? region,
    required pulumi.Output<String> vpcId,
  }) :
      assignGeneratedIpv6CidrBlock = pulumi.Input.asOptionalInput<bool>(assignGeneratedIpv6CidrBlock),
      ipv6CidrBlock = pulumi.Input.asOptionalInput<String>(ipv6CidrBlock),
      ipv6IpamPoolId = pulumi.Input.asOptionalInput<String>(ipv6IpamPoolId),
      ipv6NetmaskLength = pulumi.Input.asOptionalInput<int>(ipv6NetmaskLength),
      ipv6Pool = pulumi.Input.asOptionalInput<String>(ipv6Pool),
      region = pulumi.Input.asOptionalInput<String>(region),
      vpcId = pulumi.Input.asInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignGeneratedIpv6CidrBlock': ?assignGeneratedIpv6CidrBlock,
      'ipv6CidrBlock': ?ipv6CidrBlock,
      'ipv6IpamPoolId': ?ipv6IpamPoolId,
      'ipv6NetmaskLength': ?ipv6NetmaskLength,
      'ipv6Pool': ?ipv6Pool,
      'region': ?region,
      'vpcId': vpcId,
    };
  }

  factory VpcIpv6CidrBlockAssociationArgs.fromMap(Map<String, dynamic> map) {
    return VpcIpv6CidrBlockAssociationArgs(
      assignGeneratedIpv6CidrBlock: map['assignGeneratedIpv6CidrBlock'] == null ? null : pulumi.Output.create<bool>(map['assignGeneratedIpv6CidrBlock'] as bool),
      ipv6CidrBlock: map['ipv6CidrBlock'] == null ? null : pulumi.Output.create<String>(map['ipv6CidrBlock'] as String),
      ipv6IpamPoolId: map['ipv6IpamPoolId'] == null ? null : pulumi.Output.create<String>(map['ipv6IpamPoolId'] as String),
      ipv6NetmaskLength: map['ipv6NetmaskLength'] == null ? null : pulumi.Output.create<int>(map['ipv6NetmaskLength'] as int),
      ipv6Pool: map['ipv6Pool'] == null ? null : pulumi.Output.create<String>(map['ipv6Pool'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      vpcId: pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

