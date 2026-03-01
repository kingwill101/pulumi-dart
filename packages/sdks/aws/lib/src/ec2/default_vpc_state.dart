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
  DefaultVpcState({
    pulumi.Output<String>? arn,
    pulumi.Output<bool>? assignGeneratedIpv6CidrBlock,
    pulumi.Output<String>? cidrBlock,
    pulumi.Output<String>? defaultNetworkAclId,
    pulumi.Output<String>? defaultRouteTableId,
    pulumi.Output<String>? defaultSecurityGroupId,
    pulumi.Output<String>? dhcpOptionsId,
    pulumi.Output<bool>? enableDnsHostnames,
    pulumi.Output<bool>? enableDnsSupport,
    pulumi.Output<bool>? enableNetworkAddressUsageMetrics,
    pulumi.Output<bool>? existingDefaultVpc,
    pulumi.Output<bool>? forceDestroy,
    pulumi.Output<String>? instanceTenancy,
    pulumi.Output<String>? ipv6AssociationId,
    pulumi.Output<String>? ipv6CidrBlock,
    pulumi.Output<String>? ipv6CidrBlockNetworkBorderGroup,
    pulumi.Output<String>? ipv6IpamPoolId,
    pulumi.Output<int>? ipv6NetmaskLength,
    pulumi.Output<String>? mainRouteTableId,
    pulumi.Output<String>? ownerId,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      assignGeneratedIpv6CidrBlock = pulumi.Input.asOptionalInput<bool>(assignGeneratedIpv6CidrBlock),
      cidrBlock = pulumi.Input.asOptionalInput<String>(cidrBlock),
      defaultNetworkAclId = pulumi.Input.asOptionalInput<String>(defaultNetworkAclId),
      defaultRouteTableId = pulumi.Input.asOptionalInput<String>(defaultRouteTableId),
      defaultSecurityGroupId = pulumi.Input.asOptionalInput<String>(defaultSecurityGroupId),
      dhcpOptionsId = pulumi.Input.asOptionalInput<String>(dhcpOptionsId),
      enableDnsHostnames = pulumi.Input.asOptionalInput<bool>(enableDnsHostnames),
      enableDnsSupport = pulumi.Input.asOptionalInput<bool>(enableDnsSupport),
      enableNetworkAddressUsageMetrics = pulumi.Input.asOptionalInput<bool>(enableNetworkAddressUsageMetrics),
      existingDefaultVpc = pulumi.Input.asOptionalInput<bool>(existingDefaultVpc),
      forceDestroy = pulumi.Input.asOptionalInput<bool>(forceDestroy),
      instanceTenancy = pulumi.Input.asOptionalInput<String>(instanceTenancy),
      ipv6AssociationId = pulumi.Input.asOptionalInput<String>(ipv6AssociationId),
      ipv6CidrBlock = pulumi.Input.asOptionalInput<String>(ipv6CidrBlock),
      ipv6CidrBlockNetworkBorderGroup = pulumi.Input.asOptionalInput<String>(ipv6CidrBlockNetworkBorderGroup),
      ipv6IpamPoolId = pulumi.Input.asOptionalInput<String>(ipv6IpamPoolId),
      ipv6NetmaskLength = pulumi.Input.asOptionalInput<int>(ipv6NetmaskLength),
      mainRouteTableId = pulumi.Input.asOptionalInput<String>(mainRouteTableId),
      ownerId = pulumi.Input.asOptionalInput<String>(ownerId),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      assignGeneratedIpv6CidrBlock: map['assignGeneratedIpv6CidrBlock'] == null ? null : pulumi.Output.create<bool>(map['assignGeneratedIpv6CidrBlock'] as bool),
      cidrBlock: map['cidrBlock'] == null ? null : pulumi.Output.create<String>(map['cidrBlock'] as String),
      defaultNetworkAclId: map['defaultNetworkAclId'] == null ? null : pulumi.Output.create<String>(map['defaultNetworkAclId'] as String),
      defaultRouteTableId: map['defaultRouteTableId'] == null ? null : pulumi.Output.create<String>(map['defaultRouteTableId'] as String),
      defaultSecurityGroupId: map['defaultSecurityGroupId'] == null ? null : pulumi.Output.create<String>(map['defaultSecurityGroupId'] as String),
      dhcpOptionsId: map['dhcpOptionsId'] == null ? null : pulumi.Output.create<String>(map['dhcpOptionsId'] as String),
      enableDnsHostnames: map['enableDnsHostnames'] == null ? null : pulumi.Output.create<bool>(map['enableDnsHostnames'] as bool),
      enableDnsSupport: map['enableDnsSupport'] == null ? null : pulumi.Output.create<bool>(map['enableDnsSupport'] as bool),
      enableNetworkAddressUsageMetrics: map['enableNetworkAddressUsageMetrics'] == null ? null : pulumi.Output.create<bool>(map['enableNetworkAddressUsageMetrics'] as bool),
      existingDefaultVpc: map['existingDefaultVpc'] == null ? null : pulumi.Output.create<bool>(map['existingDefaultVpc'] as bool),
      forceDestroy: map['forceDestroy'] == null ? null : pulumi.Output.create<bool>(map['forceDestroy'] as bool),
      instanceTenancy: map['instanceTenancy'] == null ? null : pulumi.Output.create<String>(map['instanceTenancy'] as String),
      ipv6AssociationId: map['ipv6AssociationId'] == null ? null : pulumi.Output.create<String>(map['ipv6AssociationId'] as String),
      ipv6CidrBlock: map['ipv6CidrBlock'] == null ? null : pulumi.Output.create<String>(map['ipv6CidrBlock'] as String),
      ipv6CidrBlockNetworkBorderGroup: map['ipv6CidrBlockNetworkBorderGroup'] == null ? null : pulumi.Output.create<String>(map['ipv6CidrBlockNetworkBorderGroup'] as String),
      ipv6IpamPoolId: map['ipv6IpamPoolId'] == null ? null : pulumi.Output.create<String>(map['ipv6IpamPoolId'] as String),
      ipv6NetmaskLength: map['ipv6NetmaskLength'] == null ? null : pulumi.Output.create<int>(map['ipv6NetmaskLength'] as int),
      mainRouteTableId: map['mainRouteTableId'] == null ? null : pulumi.Output.create<String>(map['mainRouteTableId'] as String),
      ownerId: map['ownerId'] == null ? null : pulumi.Output.create<String>(map['ownerId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

