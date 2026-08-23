// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcIpv6CidrBlockAssociation resources.
class VpcIpv6CidrBlockAssociationState {
  /// Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IPv6 addresses, or the size of the CIDR block. Default is `false`. Conflicts with `ipv6IpamPoolId`, `ipv6Pool`, `ipv6CidrBlock` and `ipv6NetmaskLength`.
  final pulumi.Input<bool>? assignGeneratedIpv6CidrBlock;
  /// The source that allocated the IP address space. Values: `amazon`, `byoip`, `none`.
  final pulumi.Input<String>? ipSource;
  /// Public IPv6 addresses are those advertised on the internet from AWS. Private IP addresses are not and cannot be advertised on the internet from AWS. Values: `public`, `private`.
  final pulumi.Input<String>? ipv6AddressAttribute;
  /// The IPv6 CIDR block for the VPC. CIDR can be explicitly set or it can be derived from IPAM using `ipv6NetmaskLength`. This parameter is required if `ipv6NetmaskLength` is not set and the IPAM pool does not have `allocationDefaultNetmask` set. Conflicts with `assignGeneratedIpv6CidrBlock`.
  final pulumi.Input<String>? ipv6CidrBlock;
  /// The ID of an IPv6 IPAM pool you want to use for allocating this VPC's CIDR. IPAM is a VPC feature that you can use to automate your IP address management workflows including assigning, tracking, troubleshooting, and auditing IP addresses across AWS Regions and accounts. Conflict with `assignGeneratedIpv6CidrBlock` and `ipv6Pool`.
  final pulumi.Input<String>? ipv6IpamPoolId;
  /// The netmask length of the IPv6 CIDR you want to allocate to this VPC. Requires specifying a `ipv6IpamPoolId`. This parameter is optional if the IPAM pool has `allocationDefaultNetmask` set, otherwise it or `ipv6CidrBlock` are required. Conflicts with `ipv6CidrBlock`.
  final pulumi.Input<int>? ipv6NetmaskLength;
  /// The  ID of an IPv6 address pool from which to allocate the IPv6 CIDR block. Conflicts with `assignGeneratedIpv6CidrBlock` and `ipv6IpamPoolId`.
  final pulumi.Input<String>? ipv6Pool;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the VPC to make the association with.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [VpcIpv6CidrBlockAssociationState].
  /// [assignGeneratedIpv6CidrBlock] Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IPv6 addresses, or the size of the CIDR block. Default is `false`. Conflicts with `ipv6IpamPoolId`, `ipv6Pool`, `ipv6CidrBlock` and `ipv6NetmaskLength`.
  /// [ipSource] The source that allocated the IP address space. Values: `amazon`, `byoip`, `none`.
  /// [ipv6AddressAttribute] Public IPv6 addresses are those advertised on the internet from AWS. Private IP addresses are not and cannot be advertised on the internet from AWS. Values: `public`, `private`.
  /// [ipv6CidrBlock] The IPv6 CIDR block for the VPC. CIDR can be explicitly set or it can be derived from IPAM using `ipv6NetmaskLength`. This parameter is required if `ipv6NetmaskLength` is not set and the IPAM pool does not have `allocationDefaultNetmask` set. Conflicts with `assignGeneratedIpv6CidrBlock`.
  /// [ipv6IpamPoolId] The ID of an IPv6 IPAM pool you want to use for allocating this VPC's CIDR. IPAM is a VPC feature that you can use to automate your IP address management workflows including assigning, tracking, troubleshooting, and auditing IP addresses across AWS Regions and accounts. Conflict with `assignGeneratedIpv6CidrBlock` and `ipv6Pool`.
  /// [ipv6NetmaskLength] The netmask length of the IPv6 CIDR you want to allocate to this VPC. Requires specifying a `ipv6IpamPoolId`. This parameter is optional if the IPAM pool has `allocationDefaultNetmask` set, otherwise it or `ipv6CidrBlock` are required. Conflicts with `ipv6CidrBlock`.
  /// [ipv6Pool] The  ID of an IPv6 address pool from which to allocate the IPv6 CIDR block. Conflicts with `assignGeneratedIpv6CidrBlock` and `ipv6IpamPoolId`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vpcId] The ID of the VPC to make the association with.
  const VpcIpv6CidrBlockAssociationState({
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
      assignGeneratedIpv6CidrBlock: (() { final guardedValue = map['assignGeneratedIpv6CidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipSource: (() { final guardedValue = map['ipSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6AddressAttribute: (() { final guardedValue = map['ipv6AddressAttribute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6CidrBlock: (() { final guardedValue = map['ipv6CidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6IpamPoolId: (() { final guardedValue = map['ipv6IpamPoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6NetmaskLength: (() { final guardedValue = map['ipv6NetmaskLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ipv6Pool: (() { final guardedValue = map['ipv6Pool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
