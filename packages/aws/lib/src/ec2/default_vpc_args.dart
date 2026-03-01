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
    bool? assignGeneratedIpv6CidrBlock,
    bool? enableDnsHostnames,
    bool? enableDnsSupport,
    bool? enableNetworkAddressUsageMetrics,
    bool? forceDestroy,
    String? ipv6CidrBlock,
    String? ipv6CidrBlockNetworkBorderGroup,
    String? ipv6IpamPoolId,
    int? ipv6NetmaskLength,
    String? region,
    Map<String, String>? tags,
  }) : assignGeneratedIpv6CidrBlock = pulumi.Input.asOptionalInput<bool>(
         assignGeneratedIpv6CidrBlock,
       ),
       enableDnsHostnames = pulumi.Input.asOptionalInput<bool>(
         enableDnsHostnames,
       ),
       enableDnsSupport = pulumi.Input.asOptionalInput<bool>(enableDnsSupport),
       enableNetworkAddressUsageMetrics = pulumi.Input.asOptionalInput<bool>(
         enableNetworkAddressUsageMetrics,
       ),
       forceDestroy = pulumi.Input.asOptionalInput<bool>(forceDestroy),
       ipv6CidrBlock = pulumi.Input.asOptionalInput<String>(ipv6CidrBlock),
       ipv6CidrBlockNetworkBorderGroup = pulumi.Input.asOptionalInput<String>(
         ipv6CidrBlockNetworkBorderGroup,
       ),
       ipv6IpamPoolId = pulumi.Input.asOptionalInput<String>(ipv6IpamPoolId),
       ipv6NetmaskLength = pulumi.Input.asOptionalInput<int>(ipv6NetmaskLength),
       region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      assignGeneratedIpv6CidrBlock: map['assignGeneratedIpv6CidrBlock'] == null
          ? null
          : map['assignGeneratedIpv6CidrBlock'] as bool,
      enableDnsHostnames: map['enableDnsHostnames'] == null
          ? null
          : map['enableDnsHostnames'] as bool,
      enableDnsSupport: map['enableDnsSupport'] == null
          ? null
          : map['enableDnsSupport'] as bool,
      enableNetworkAddressUsageMetrics:
          map['enableNetworkAddressUsageMetrics'] == null
          ? null
          : map['enableNetworkAddressUsageMetrics'] as bool,
      forceDestroy: map['forceDestroy'] == null
          ? null
          : map['forceDestroy'] as bool,
      ipv6CidrBlock: map['ipv6CidrBlock'] == null
          ? null
          : map['ipv6CidrBlock'] as String,
      ipv6CidrBlockNetworkBorderGroup:
          map['ipv6CidrBlockNetworkBorderGroup'] == null
          ? null
          : map['ipv6CidrBlockNetworkBorderGroup'] as String,
      ipv6IpamPoolId: map['ipv6IpamPoolId'] == null
          ? null
          : map['ipv6IpamPoolId'] as String,
      ipv6NetmaskLength: map['ipv6NetmaskLength'] == null
          ? null
          : map['ipv6NetmaskLength'] as int,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
