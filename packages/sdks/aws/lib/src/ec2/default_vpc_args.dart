// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_default_vpc_default_vpc_args_doc}
/// The set of arguments for DefaultVpc.
/// {@endtemplate}
/// {@macro pulumi_ec2_default_vpc_default_vpc_args_doc}
class DefaultVpcArgs {
  final pulumi.Input<bool>? assignGeneratedIpv6CidrBlock;
  final pulumi.Input<bool>? enableDnsHostnames;
  final pulumi.Input<bool>? enableDnsSupport;
  final pulumi.Input<bool>? enableNetworkAddressUsageMetrics;
  /// Whether destroying the resource deletes the default VPC. Default: `false`
  final pulumi.Input<bool>? forceDestroy;
  final pulumi.Input<String>? ipv6CidrBlock;
  final pulumi.Input<String>? ipv6CidrBlockNetworkBorderGroup;
  final pulumi.Input<String>? ipv6IpamPoolId;
  final pulumi.Input<int>? ipv6NetmaskLength;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  final pulumi.Input<String>? region;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DefaultVpcArgs].
  /// [assignGeneratedIpv6CidrBlock] Optional.
  /// [enableDnsHostnames] Optional.
  /// [enableDnsSupport] Optional.
  /// [enableNetworkAddressUsageMetrics] Optional.
  /// [forceDestroy] Whether destroying the resource deletes the default VPC. Default: `false`
  /// [ipv6CidrBlock] Optional.
  /// [ipv6CidrBlockNetworkBorderGroup] Optional.
  /// [ipv6IpamPoolId] Optional.
  /// [ipv6NetmaskLength] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  /// [tags] Optional.
  DefaultVpcArgs({
    this.assignGeneratedIpv6CidrBlock,
    this.enableDnsHostnames,
    this.enableDnsSupport,
    this.enableNetworkAddressUsageMetrics,
    this.forceDestroy,
    this.ipv6CidrBlock,
    this.ipv6CidrBlockNetworkBorderGroup,
    this.ipv6IpamPoolId,
    this.ipv6NetmaskLength,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignGeneratedIpv6CidrBlock': ?assignGeneratedIpv6CidrBlock,
      'enableDnsHostnames': ?enableDnsHostnames,
      'enableDnsSupport': ?enableDnsSupport,
      'enableNetworkAddressUsageMetrics': ?enableNetworkAddressUsageMetrics,
      'forceDestroy': ?forceDestroy,
      'ipv6CidrBlock': ?ipv6CidrBlock,
      'ipv6CidrBlockNetworkBorderGroup': ?ipv6CidrBlockNetworkBorderGroup,
      'ipv6IpamPoolId': ?ipv6IpamPoolId,
      'ipv6NetmaskLength': ?ipv6NetmaskLength,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory DefaultVpcArgs.fromMap(Map<String, dynamic> map) {
    return DefaultVpcArgs(
      assignGeneratedIpv6CidrBlock: map['assignGeneratedIpv6CidrBlock'] == null ? null : (map['assignGeneratedIpv6CidrBlock'] as bool).input(),
      enableDnsHostnames: map['enableDnsHostnames'] == null ? null : (map['enableDnsHostnames'] as bool).input(),
      enableDnsSupport: map['enableDnsSupport'] == null ? null : (map['enableDnsSupport'] as bool).input(),
      enableNetworkAddressUsageMetrics: map['enableNetworkAddressUsageMetrics'] == null ? null : (map['enableNetworkAddressUsageMetrics'] as bool).input(),
      forceDestroy: map['forceDestroy'] == null ? null : (map['forceDestroy'] as bool).input(),
      ipv6CidrBlock: map['ipv6CidrBlock'] == null ? null : (map['ipv6CidrBlock'] as String).input(),
      ipv6CidrBlockNetworkBorderGroup: map['ipv6CidrBlockNetworkBorderGroup'] == null ? null : (map['ipv6CidrBlockNetworkBorderGroup'] as String).input(),
      ipv6IpamPoolId: map['ipv6IpamPoolId'] == null ? null : (map['ipv6IpamPoolId'] as String).input(),
      ipv6NetmaskLength: map['ipv6NetmaskLength'] == null ? null : (map['ipv6NetmaskLength'] as int).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

