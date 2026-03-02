// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcIpv6CidrBlockAssociation resources.
class VpcIpv6CidrBlockAssociationState {
  /// Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IPv6 addresses, or the size of the CIDR block. Default is `false`. Conflicts with `ipv6_ipam_pool_id`, `ipv6_pool`, `ipv6_cidr_block` and `ipv6_netmask_length`.
  final pulumi.Input<bool>? assignGeneratedIpv6CidrBlock;
  /// The source that allocated the IP address space. Values: `amazon`, `byoip`, `none`.
  final pulumi.Input<String>? ipSource;
  /// Public IPv6 addresses are those advertised on the internet from AWS. Private IP addresses are not and cannot be advertised on the internet from AWS. Values: `public`, `private`.
  final pulumi.Input<String>? ipv6AddressAttribute;
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
  final pulumi.Input<String>? vpcId;

  /// Creates a new [VpcIpv6CidrBlockAssociationState].
  /// [assignGeneratedIpv6CidrBlock] Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IPv6 addresses, or the size of the CIDR block. Default is `false`. Conflicts with `ipv6_ipam_pool_id`, `ipv6_pool`, `ipv6_cidr_block` and `ipv6_netmask_length`.
  /// [ipSource] The source that allocated the IP address space. Values: `amazon`, `byoip`, `none`.
  /// [ipv6AddressAttribute] Public IPv6 addresses are those advertised on the internet from AWS. Private IP addresses are not and cannot be advertised on the internet from AWS. Values: `public`, `private`.
  /// [ipv6CidrBlock] The IPv6 CIDR block for the VPC. CIDR can be explicitly set or it can be derived from IPAM using `ipv6_netmask_length`. This parameter is required if `ipv6_netmask_length` is not set and the IPAM pool does not have `allocation_default_netmask` set. Conflicts with `assign_generated_ipv6_cidr_block`.
  /// [ipv6IpamPoolId] The ID of an IPv6 IPAM pool you want to use for allocating this VPC's CIDR. IPAM is a VPC feature that you can use to automate your IP address management workflows including assigning, tracking, troubleshooting, and auditing IP addresses across AWS Regions and accounts. Conflict with `assign_generated_ipv6_cidr_block` and `ipv6_pool`.
  /// [ipv6NetmaskLength] The netmask length of the IPv6 CIDR you want to allocate to this VPC. Requires specifying a `ipv6_ipam_pool_id`. This parameter is optional if the IPAM pool has `allocation_default_netmask` set, otherwise it or `ipv6_cidr_block` are required. Conflicts with `ipv6_cidr_block`.
  /// [ipv6Pool] The  ID of an IPv6 address pool from which to allocate the IPv6 CIDR block. Conflicts with `assign_generated_ipv6_cidr_block` and `ipv6_ipam_pool_id`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vpcId] The ID of the VPC to make the association with.
  VpcIpv6CidrBlockAssociationState({
    this.assignGeneratedIpv6CidrBlock,
    this.ipSource,
    this.ipv6AddressAttribute,
    this.ipv6CidrBlock,
    this.ipv6IpamPoolId,
    this.ipv6NetmaskLength,
    this.ipv6Pool,
    this.region,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignGeneratedIpv6CidrBlock': ?assignGeneratedIpv6CidrBlock,
      'ipSource': ?ipSource,
      'ipv6AddressAttribute': ?ipv6AddressAttribute,
      'ipv6CidrBlock': ?ipv6CidrBlock,
      'ipv6IpamPoolId': ?ipv6IpamPoolId,
      'ipv6NetmaskLength': ?ipv6NetmaskLength,
      'ipv6Pool': ?ipv6Pool,
      'region': ?region,
      'vpcId': ?vpcId,
    };
  }

  factory VpcIpv6CidrBlockAssociationState.fromMap(Map<String, dynamic> map) {
    return VpcIpv6CidrBlockAssociationState(
      assignGeneratedIpv6CidrBlock: map['assignGeneratedIpv6CidrBlock'] == null ? null : ((map['assignGeneratedIpv6CidrBlock'] as bool).input()).input(),
      ipSource: map['ipSource'] == null ? null : ((map['ipSource'] as String).input()).input(),
      ipv6AddressAttribute: map['ipv6AddressAttribute'] == null ? null : ((map['ipv6AddressAttribute'] as String).input()).input(),
      ipv6CidrBlock: map['ipv6CidrBlock'] == null ? null : ((map['ipv6CidrBlock'] as String).input()).input(),
      ipv6IpamPoolId: map['ipv6IpamPoolId'] == null ? null : ((map['ipv6IpamPoolId'] as String).input()).input(),
      ipv6NetmaskLength: map['ipv6NetmaskLength'] == null ? null : ((map['ipv6NetmaskLength'] as int).input()).input(),
      ipv6Pool: map['ipv6Pool'] == null ? null : ((map['ipv6Pool'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      vpcId: map['vpcId'] == null ? null : ((map['vpcId'] as String).input()).input(),
    );
  }
}

