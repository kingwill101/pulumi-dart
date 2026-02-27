// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for DefaultVpc.
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
    final map = <String, dynamic>{};
    final assignGeneratedIpv6CidrBlockValue = assignGeneratedIpv6CidrBlock;
    if (assignGeneratedIpv6CidrBlockValue != null) {
      map['assignGeneratedIpv6CidrBlock'] = assignGeneratedIpv6CidrBlockValue;
    }
    final enableDnsHostnamesValue = enableDnsHostnames;
    if (enableDnsHostnamesValue != null) {
      map['enableDnsHostnames'] = enableDnsHostnamesValue;
    }
    final enableDnsSupportValue = enableDnsSupport;
    if (enableDnsSupportValue != null) {
      map['enableDnsSupport'] = enableDnsSupportValue;
    }
    final enableNetworkAddressUsageMetricsValue =
        enableNetworkAddressUsageMetrics;
    if (enableNetworkAddressUsageMetricsValue != null) {
      map['enableNetworkAddressUsageMetrics'] =
          enableNetworkAddressUsageMetricsValue;
    }
    final forceDestroyValue = forceDestroy;
    if (forceDestroyValue != null) {
      map['forceDestroy'] = forceDestroyValue;
    }
    final ipv6CidrBlockValue = ipv6CidrBlock;
    if (ipv6CidrBlockValue != null) {
      map['ipv6CidrBlock'] = ipv6CidrBlockValue;
    }
    final ipv6CidrBlockNetworkBorderGroupValue =
        ipv6CidrBlockNetworkBorderGroup;
    if (ipv6CidrBlockNetworkBorderGroupValue != null) {
      map['ipv6CidrBlockNetworkBorderGroup'] =
          ipv6CidrBlockNetworkBorderGroupValue;
    }
    final ipv6IpamPoolIdValue = ipv6IpamPoolId;
    if (ipv6IpamPoolIdValue != null) {
      map['ipv6IpamPoolId'] = ipv6IpamPoolIdValue;
    }
    final ipv6NetmaskLengthValue = ipv6NetmaskLength;
    if (ipv6NetmaskLengthValue != null) {
      map['ipv6NetmaskLength'] = ipv6NetmaskLengthValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory DefaultVpcArgs.fromMap(Map<String, dynamic> map) {
    return DefaultVpcArgs(
      assignGeneratedIpv6CidrBlock: pulumi.Input.asOptionalInput<bool>(
          map['assignGeneratedIpv6CidrBlock']),
      enableDnsHostnames:
          pulumi.Input.asOptionalInput<bool>(map['enableDnsHostnames']),
      enableDnsSupport:
          pulumi.Input.asOptionalInput<bool>(map['enableDnsSupport']),
      enableNetworkAddressUsageMetrics: pulumi.Input.asOptionalInput<bool>(
          map['enableNetworkAddressUsageMetrics']),
      forceDestroy: pulumi.Input.asOptionalInput<bool>(map['forceDestroy']),
      ipv6CidrBlock: pulumi.Input.asOptionalInput<String>(map['ipv6CidrBlock']),
      ipv6CidrBlockNetworkBorderGroup: pulumi.Input.asOptionalInput<String>(
          map['ipv6CidrBlockNetworkBorderGroup']),
      ipv6IpamPoolId:
          pulumi.Input.asOptionalInput<String>(map['ipv6IpamPoolId']),
      ipv6NetmaskLength:
          pulumi.Input.asOptionalInput<int>(map['ipv6NetmaskLength']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
