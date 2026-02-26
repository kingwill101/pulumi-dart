// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for VpcIpv6CidrBlockAssociation.
class VpcIpv6CidrBlockAssociationArgs {
  /// Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IPv6 addresses, or the size of the CIDR block. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. Conflicts with <span pulumi-lang-nodejs="`ipv6IpamPoolId`" pulumi-lang-dotnet="`Ipv6IpamPoolId`" pulumi-lang-go="`ipv6IpamPoolId`" pulumi-lang-python="`ipv6_ipam_pool_id`" pulumi-lang-yaml="`ipv6IpamPoolId`" pulumi-lang-java="`ipv6IpamPoolId`">`ipv6_ipam_pool_id`</span>, <span pulumi-lang-nodejs="`ipv6Pool`" pulumi-lang-dotnet="`Ipv6Pool`" pulumi-lang-go="`ipv6Pool`" pulumi-lang-python="`ipv6_pool`" pulumi-lang-yaml="`ipv6Pool`" pulumi-lang-java="`ipv6Pool`">`ipv6_pool`</span>, <span pulumi-lang-nodejs="`ipv6CidrBlock`" pulumi-lang-dotnet="`Ipv6CidrBlock`" pulumi-lang-go="`ipv6CidrBlock`" pulumi-lang-python="`ipv6_cidr_block`" pulumi-lang-yaml="`ipv6CidrBlock`" pulumi-lang-java="`ipv6CidrBlock`">`ipv6_cidr_block`</span> and <span pulumi-lang-nodejs="`ipv6NetmaskLength`" pulumi-lang-dotnet="`Ipv6NetmaskLength`" pulumi-lang-go="`ipv6NetmaskLength`" pulumi-lang-python="`ipv6_netmask_length`" pulumi-lang-yaml="`ipv6NetmaskLength`" pulumi-lang-java="`ipv6NetmaskLength`">`ipv6_netmask_length`</span>.
  final Input<bool>? assignGeneratedIpv6CidrBlock;

  /// The IPv6 CIDR block for the VPC. CIDR can be explicitly set or it can be derived from IPAM using <span pulumi-lang-nodejs="`ipv6NetmaskLength`" pulumi-lang-dotnet="`Ipv6NetmaskLength`" pulumi-lang-go="`ipv6NetmaskLength`" pulumi-lang-python="`ipv6_netmask_length`" pulumi-lang-yaml="`ipv6NetmaskLength`" pulumi-lang-java="`ipv6NetmaskLength`">`ipv6_netmask_length`</span>. This parameter is required if <span pulumi-lang-nodejs="`ipv6NetmaskLength`" pulumi-lang-dotnet="`Ipv6NetmaskLength`" pulumi-lang-go="`ipv6NetmaskLength`" pulumi-lang-python="`ipv6_netmask_length`" pulumi-lang-yaml="`ipv6NetmaskLength`" pulumi-lang-java="`ipv6NetmaskLength`">`ipv6_netmask_length`</span> is not set and the IPAM pool does not have <span pulumi-lang-nodejs="`allocationDefaultNetmask`" pulumi-lang-dotnet="`AllocationDefaultNetmask`" pulumi-lang-go="`allocationDefaultNetmask`" pulumi-lang-python="`allocation_default_netmask`" pulumi-lang-yaml="`allocationDefaultNetmask`" pulumi-lang-java="`allocationDefaultNetmask`">`allocation_default_netmask`</span> set. Conflicts with <span pulumi-lang-nodejs="`assignGeneratedIpv6CidrBlock`" pulumi-lang-dotnet="`AssignGeneratedIpv6CidrBlock`" pulumi-lang-go="`assignGeneratedIpv6CidrBlock`" pulumi-lang-python="`assign_generated_ipv6_cidr_block`" pulumi-lang-yaml="`assignGeneratedIpv6CidrBlock`" pulumi-lang-java="`assignGeneratedIpv6CidrBlock`">`assign_generated_ipv6_cidr_block`</span>.
  final Input<String>? ipv6CidrBlock;

  /// The ID of an IPv6 IPAM pool you want to use for allocating this VPC's CIDR. IPAM is a VPC feature that you can use to automate your IP address management workflows including assigning, tracking, troubleshooting, and auditing IP addresses across AWS Regions and accounts. Conflict with <span pulumi-lang-nodejs="`assignGeneratedIpv6CidrBlock`" pulumi-lang-dotnet="`AssignGeneratedIpv6CidrBlock`" pulumi-lang-go="`assignGeneratedIpv6CidrBlock`" pulumi-lang-python="`assign_generated_ipv6_cidr_block`" pulumi-lang-yaml="`assignGeneratedIpv6CidrBlock`" pulumi-lang-java="`assignGeneratedIpv6CidrBlock`">`assign_generated_ipv6_cidr_block`</span> and <span pulumi-lang-nodejs="`ipv6Pool`" pulumi-lang-dotnet="`Ipv6Pool`" pulumi-lang-go="`ipv6Pool`" pulumi-lang-python="`ipv6_pool`" pulumi-lang-yaml="`ipv6Pool`" pulumi-lang-java="`ipv6Pool`">`ipv6_pool`</span>.
  final Input<String>? ipv6IpamPoolId;

  /// The netmask length of the IPv6 CIDR you want to allocate to this VPC. Requires specifying a <span pulumi-lang-nodejs="`ipv6IpamPoolId`" pulumi-lang-dotnet="`Ipv6IpamPoolId`" pulumi-lang-go="`ipv6IpamPoolId`" pulumi-lang-python="`ipv6_ipam_pool_id`" pulumi-lang-yaml="`ipv6IpamPoolId`" pulumi-lang-java="`ipv6IpamPoolId`">`ipv6_ipam_pool_id`</span>. This parameter is optional if the IPAM pool has <span pulumi-lang-nodejs="`allocationDefaultNetmask`" pulumi-lang-dotnet="`AllocationDefaultNetmask`" pulumi-lang-go="`allocationDefaultNetmask`" pulumi-lang-python="`allocation_default_netmask`" pulumi-lang-yaml="`allocationDefaultNetmask`" pulumi-lang-java="`allocationDefaultNetmask`">`allocation_default_netmask`</span> set, otherwise it or <span pulumi-lang-nodejs="`ipv6CidrBlock`" pulumi-lang-dotnet="`Ipv6CidrBlock`" pulumi-lang-go="`ipv6CidrBlock`" pulumi-lang-python="`ipv6_cidr_block`" pulumi-lang-yaml="`ipv6CidrBlock`" pulumi-lang-java="`ipv6CidrBlock`">`ipv6_cidr_block`</span> are required. Conflicts with <span pulumi-lang-nodejs="`ipv6CidrBlock`" pulumi-lang-dotnet="`Ipv6CidrBlock`" pulumi-lang-go="`ipv6CidrBlock`" pulumi-lang-python="`ipv6_cidr_block`" pulumi-lang-yaml="`ipv6CidrBlock`" pulumi-lang-java="`ipv6CidrBlock`">`ipv6_cidr_block`</span>.
  final Input<int>? ipv6NetmaskLength;

  /// The  ID of an IPv6 address pool from which to allocate the IPv6 CIDR block. Conflicts with <span pulumi-lang-nodejs="`assignGeneratedIpv6CidrBlock`" pulumi-lang-dotnet="`AssignGeneratedIpv6CidrBlock`" pulumi-lang-go="`assignGeneratedIpv6CidrBlock`" pulumi-lang-python="`assign_generated_ipv6_cidr_block`" pulumi-lang-yaml="`assignGeneratedIpv6CidrBlock`" pulumi-lang-java="`assignGeneratedIpv6CidrBlock`">`assign_generated_ipv6_cidr_block`</span> and <span pulumi-lang-nodejs="`ipv6IpamPoolId`" pulumi-lang-dotnet="`Ipv6IpamPoolId`" pulumi-lang-go="`ipv6IpamPoolId`" pulumi-lang-python="`ipv6_ipam_pool_id`" pulumi-lang-yaml="`ipv6IpamPoolId`" pulumi-lang-java="`ipv6IpamPoolId`">`ipv6_ipam_pool_id`</span>.
  final Input<String>? ipv6Pool;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The ID of the VPC to make the association with.
  final Input<String> vpcId;

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
      assignGeneratedIpv6CidrBlock:
          Input.asOptionalInput<bool>(map['assignGeneratedIpv6CidrBlock']),
      ipv6CidrBlock: Input.asOptionalInput<String>(map['ipv6CidrBlock']),
      ipv6IpamPoolId: Input.asOptionalInput<String>(map['ipv6IpamPoolId']),
      ipv6NetmaskLength: Input.asOptionalInput<int>(map['ipv6NetmaskLength']),
      ipv6Pool: Input.asOptionalInput<String>(map['ipv6Pool']),
      region: Input.asOptionalInput<String>(map['region']),
      vpcId: Input.asInput<String>(map['vpcId']),
    );
  }
}
