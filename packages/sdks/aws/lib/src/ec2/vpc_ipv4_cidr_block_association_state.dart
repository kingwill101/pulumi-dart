// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcIpv4CidrBlockAssociation resources.
class VpcIpv4CidrBlockAssociationState {
  /// The IPv4 CIDR block for the VPC. CIDR can be explicitly set or it can be derived from IPAM using `ipv4_netmask_length`.
  final pulumi.Input<String>? cidrBlock;
  /// The ID of an IPv4 IPAM pool you want to use for allocating this VPC's CIDR. IPAM is a VPC feature that you can use to automate your IP address management workflows including assigning, tracking, troubleshooting, and auditing IP addresses across AWS Regions and accounts. Using IPAM you can monitor IP address usage throughout your AWS Organization.
  final pulumi.Input<String>? ipv4IpamPoolId;
  /// The netmask length of the IPv4 CIDR you want to allocate to this VPC. Requires specifying a `ipv4_ipam_pool_id`.
  final pulumi.Input<int>? ipv4NetmaskLength;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the VPC to make the association with.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [VpcIpv4CidrBlockAssociationState].
  /// [cidrBlock] The IPv4 CIDR block for the VPC. CIDR can be explicitly set or it can be derived from IPAM using `ipv4_netmask_length`.
  /// [ipv4IpamPoolId] The ID of an IPv4 IPAM pool you want to use for allocating this VPC's CIDR. IPAM is a VPC feature that you can use to automate your IP address management workflows including assigning, tracking, troubleshooting, and auditing IP addresses across AWS Regions and accounts. Using IPAM you can monitor IP address usage throughout your AWS Organization.
  /// [ipv4NetmaskLength] The netmask length of the IPv4 CIDR you want to allocate to this VPC. Requires specifying a `ipv4_ipam_pool_id`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vpcId] The ID of the VPC to make the association with.
  VpcIpv4CidrBlockAssociationState({
    pulumi.Output<String>? cidrBlock,
    pulumi.Output<String>? ipv4IpamPoolId,
    pulumi.Output<int>? ipv4NetmaskLength,
    pulumi.Output<String>? region,
    pulumi.Output<String>? vpcId,
  }) :
      cidrBlock = pulumi.Input.asOptionalInput<String>(cidrBlock),
      ipv4IpamPoolId = pulumi.Input.asOptionalInput<String>(ipv4IpamPoolId),
      ipv4NetmaskLength = pulumi.Input.asOptionalInput<int>(ipv4NetmaskLength),
      region = pulumi.Input.asOptionalInput<String>(region),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': ?cidrBlock,
      'ipv4IpamPoolId': ?ipv4IpamPoolId,
      'ipv4NetmaskLength': ?ipv4NetmaskLength,
      'region': ?region,
      'vpcId': ?vpcId,
    };
  }

  factory VpcIpv4CidrBlockAssociationState.fromMap(Map<String, dynamic> map) {
    return VpcIpv4CidrBlockAssociationState(
      cidrBlock: map['cidrBlock'] == null ? null : pulumi.Output.create<String>(map['cidrBlock'] as String),
      ipv4IpamPoolId: map['ipv4IpamPoolId'] == null ? null : pulumi.Output.create<String>(map['ipv4IpamPoolId'] as String),
      ipv4NetmaskLength: map['ipv4NetmaskLength'] == null ? null : pulumi.Output.create<int>(map['ipv4NetmaskLength'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

