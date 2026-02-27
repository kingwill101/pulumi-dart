// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for VpcIpv4CidrBlockAssociation.
class VpcIpv4CidrBlockAssociationArgs {
  /// The IPv4 CIDR block for the VPC. CIDR can be explicitly set or it can be derived from IPAM using `ipv4_netmask_length`.
  final pulumi.Input<String>? cidrBlock;

  /// The ID of an IPv4 IPAM pool you want to use for allocating this VPC's CIDR. IPAM is a VPC feature that you can use to automate your IP address management workflows including assigning, tracking, troubleshooting, and auditing IP addresses across AWS Regions and accounts. Using IPAM you can monitor IP address usage throughout your AWS Organization.
  final pulumi.Input<String>? ipv4IpamPoolId;

  /// The netmask length of the IPv4 CIDR you want to allocate to this VPC. Requires specifying a `ipv4_ipam_pool_id`.
  final pulumi.Input<int>? ipv4NetmaskLength;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ID of the VPC to make the association with.
  final pulumi.Input<String> vpcId;

  VpcIpv4CidrBlockAssociationArgs({
    this.cidrBlock,
    this.ipv4IpamPoolId,
    this.ipv4NetmaskLength,
    this.region,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cidrBlockValue = cidrBlock;
    if (cidrBlockValue != null) {
      map['cidrBlock'] = cidrBlockValue;
    }
    final ipv4IpamPoolIdValue = ipv4IpamPoolId;
    if (ipv4IpamPoolIdValue != null) {
      map['ipv4IpamPoolId'] = ipv4IpamPoolIdValue;
    }
    final ipv4NetmaskLengthValue = ipv4NetmaskLength;
    if (ipv4NetmaskLengthValue != null) {
      map['ipv4NetmaskLength'] = ipv4NetmaskLengthValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['vpcId'] = vpcId;
    return map;
  }

  factory VpcIpv4CidrBlockAssociationArgs.fromMap(Map<String, dynamic> map) {
    return VpcIpv4CidrBlockAssociationArgs(
      cidrBlock: pulumi.Input.asOptionalInput<String>(map['cidrBlock']),
      ipv4IpamPoolId:
          pulumi.Input.asOptionalInput<String>(map['ipv4IpamPoolId']),
      ipv4NetmaskLength:
          pulumi.Input.asOptionalInput<int>(map['ipv4NetmaskLength']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      vpcId: pulumi.Input.asInput<String>(map['vpcId']),
    );
  }
}
