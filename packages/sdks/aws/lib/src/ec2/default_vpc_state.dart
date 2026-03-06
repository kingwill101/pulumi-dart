// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DefaultVpc resources.
class DefaultVpcState {
  final pulumi.Input<String>? arn;
  final pulumi.Input<bool>? assignGeneratedIpv6CidrBlock;
  /// The primary IPv4 CIDR block for the VPC
  final pulumi.Input<String>? cidrBlock;
  final pulumi.Input<String>? defaultNetworkAclId;
  final pulumi.Input<String>? defaultRouteTableId;
  final pulumi.Input<String>? defaultSecurityGroupId;
  final pulumi.Input<String>? dhcpOptionsId;
  final pulumi.Input<bool>? enableDnsHostnames;
  final pulumi.Input<bool>? enableDnsSupport;
  final pulumi.Input<bool>? enableNetworkAddressUsageMetrics;
  final pulumi.Input<bool>? existingDefaultVpc;
  /// Whether destroying the resource deletes the default VPC. Default: `false`
  final pulumi.Input<bool>? forceDestroy;
  /// The allowed tenancy of instances launched into the VPC
  final pulumi.Input<String>? instanceTenancy;
  final pulumi.Input<String>? ipv6AssociationId;
  final pulumi.Input<String>? ipv6CidrBlock;
  final pulumi.Input<String>? ipv6CidrBlockNetworkBorderGroup;
  final pulumi.Input<String>? ipv6IpamPoolId;
  final pulumi.Input<int>? ipv6NetmaskLength;
  final pulumi.Input<String>? mainRouteTableId;
  final pulumi.Input<String>? ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  final pulumi.Input<String>? region;
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [DefaultVpcState].
  /// [arn] Optional.
  /// [assignGeneratedIpv6CidrBlock] Optional.
  /// [cidrBlock] The primary IPv4 CIDR block for the VPC
  /// [defaultNetworkAclId] Optional.
  /// [defaultRouteTableId] Optional.
  /// [defaultSecurityGroupId] Optional.
  /// [dhcpOptionsId] Optional.
  /// [enableDnsHostnames] Optional.
  /// [enableDnsSupport] Optional.
  /// [enableNetworkAddressUsageMetrics] Optional.
  /// [existingDefaultVpc] Optional.
  /// [forceDestroy] Whether destroying the resource deletes the default VPC. Default: `false`
  /// [instanceTenancy] The allowed tenancy of instances launched into the VPC
  /// [ipv6AssociationId] Optional.
  /// [ipv6CidrBlock] Optional.
  /// [ipv6CidrBlockNetworkBorderGroup] Optional.
  /// [ipv6IpamPoolId] Optional.
  /// [ipv6NetmaskLength] Optional.
  /// [mainRouteTableId] Optional.
  /// [ownerId] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  /// [tags] Optional.
  /// [tagsAll] Optional.
  const DefaultVpcState({
    this.arn,
    this.assignGeneratedIpv6CidrBlock,
    this.cidrBlock,
    this.defaultNetworkAclId,
    this.defaultRouteTableId,
    this.defaultSecurityGroupId,
    this.dhcpOptionsId,
    this.enableDnsHostnames,
    this.enableDnsSupport,
    this.enableNetworkAddressUsageMetrics,
    this.existingDefaultVpc,
    this.forceDestroy,
    this.instanceTenancy,
    this.ipv6AssociationId,
    this.ipv6CidrBlock,
    this.ipv6CidrBlockNetworkBorderGroup,
    this.ipv6IpamPoolId,
    this.ipv6NetmaskLength,
    this.mainRouteTableId,
    this.ownerId,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'assignGeneratedIpv6CidrBlock': ?assignGeneratedIpv6CidrBlock,
      'cidrBlock': ?cidrBlock,
      'defaultNetworkAclId': ?defaultNetworkAclId,
      'defaultRouteTableId': ?defaultRouteTableId,
      'defaultSecurityGroupId': ?defaultSecurityGroupId,
      'dhcpOptionsId': ?dhcpOptionsId,
      'enableDnsHostnames': ?enableDnsHostnames,
      'enableDnsSupport': ?enableDnsSupport,
      'enableNetworkAddressUsageMetrics': ?enableNetworkAddressUsageMetrics,
      'existingDefaultVpc': ?existingDefaultVpc,
      'forceDestroy': ?forceDestroy,
      'instanceTenancy': ?instanceTenancy,
      'ipv6AssociationId': ?ipv6AssociationId,
      'ipv6CidrBlock': ?ipv6CidrBlock,
      'ipv6CidrBlockNetworkBorderGroup': ?ipv6CidrBlockNetworkBorderGroup,
      'ipv6IpamPoolId': ?ipv6IpamPoolId,
      'ipv6NetmaskLength': ?ipv6NetmaskLength,
      'mainRouteTableId': ?mainRouteTableId,
      'ownerId': ?ownerId,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory DefaultVpcState.fromMap(Map<String, dynamic> map) {
    return DefaultVpcState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      assignGeneratedIpv6CidrBlock: (() { final guardedValue = map['assignGeneratedIpv6CidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cidrBlock: (() { final guardedValue = map['cidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultNetworkAclId: (() { final guardedValue = map['defaultNetworkAclId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultRouteTableId: (() { final guardedValue = map['defaultRouteTableId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultSecurityGroupId: (() { final guardedValue = map['defaultSecurityGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dhcpOptionsId: (() { final guardedValue = map['dhcpOptionsId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableDnsHostnames: (() { final guardedValue = map['enableDnsHostnames']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableDnsSupport: (() { final guardedValue = map['enableDnsSupport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableNetworkAddressUsageMetrics: (() { final guardedValue = map['enableNetworkAddressUsageMetrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      existingDefaultVpc: (() { final guardedValue = map['existingDefaultVpc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      forceDestroy: (() { final guardedValue = map['forceDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      instanceTenancy: (() { final guardedValue = map['instanceTenancy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6AssociationId: (() { final guardedValue = map['ipv6AssociationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6CidrBlock: (() { final guardedValue = map['ipv6CidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6CidrBlockNetworkBorderGroup: (() { final guardedValue = map['ipv6CidrBlockNetworkBorderGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6IpamPoolId: (() { final guardedValue = map['ipv6IpamPoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6NetmaskLength: (() { final guardedValue = map['ipv6NetmaskLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      mainRouteTableId: (() { final guardedValue = map['mainRouteTableId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

