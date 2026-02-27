// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for VpcIpv6CidrBlockAssociation.
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

  VpcIpv6CidrBlockAssociationArgs({
    this.assignGeneratedIpv6CidrBlock,
    this.ipv6CidrBlock,
    this.ipv6IpamPoolId,
    this.ipv6NetmaskLength,
    this.ipv6Pool,
    this.region,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final assignGeneratedIpv6CidrBlockValue = assignGeneratedIpv6CidrBlock;
    if (assignGeneratedIpv6CidrBlockValue != null) {
      map['assignGeneratedIpv6CidrBlock'] = assignGeneratedIpv6CidrBlockValue;
    }
    final ipv6CidrBlockValue = ipv6CidrBlock;
    if (ipv6CidrBlockValue != null) {
      map['ipv6CidrBlock'] = ipv6CidrBlockValue;
    }
    final ipv6IpamPoolIdValue = ipv6IpamPoolId;
    if (ipv6IpamPoolIdValue != null) {
      map['ipv6IpamPoolId'] = ipv6IpamPoolIdValue;
    }
    final ipv6NetmaskLengthValue = ipv6NetmaskLength;
    if (ipv6NetmaskLengthValue != null) {
      map['ipv6NetmaskLength'] = ipv6NetmaskLengthValue;
    }
    final ipv6PoolValue = ipv6Pool;
    if (ipv6PoolValue != null) {
      map['ipv6Pool'] = ipv6PoolValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['vpcId'] = vpcId;
    return map;
  }

  factory VpcIpv6CidrBlockAssociationArgs.fromMap(Map<String, dynamic> map) {
    return VpcIpv6CidrBlockAssociationArgs(
      assignGeneratedIpv6CidrBlock: pulumi.Input.asOptionalInput<bool>(
          map['assignGeneratedIpv6CidrBlock']),
      ipv6CidrBlock: pulumi.Input.asOptionalInput<String>(map['ipv6CidrBlock']),
      ipv6IpamPoolId:
          pulumi.Input.asOptionalInput<String>(map['ipv6IpamPoolId']),
      ipv6NetmaskLength:
          pulumi.Input.asOptionalInput<int>(map['ipv6NetmaskLength']),
      ipv6Pool: pulumi.Input.asOptionalInput<String>(map['ipv6Pool']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      vpcId: pulumi.Input.asInput<String>(map['vpcId']),
    );
  }
}
