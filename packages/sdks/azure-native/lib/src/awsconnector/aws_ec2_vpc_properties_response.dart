// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_response.dart';

/// Definition of awsEc2Vpc
class AwsEc2VpcPropertiesResponse {
  /// The IPv4 network range for the VPC, in CIDR notation. For example, ``10.0.0.0/16``. We modify the specified CIDR block to its canonical form; for example, if you specify ``100.68.0.18/18``, we modify it to ``100.68.0.0/18``. You must specify either``CidrBlock`` or ``Ipv4IpamPoolId``.
  final pulumi.Input<String>? cidrBlock;
  /// Property cidrBlockAssociations
  final pulumi.Input<List<String>>? cidrBlockAssociations;
  /// Property defaultNetworkAcl
  final pulumi.Input<String>? defaultNetworkAcl;
  /// Property defaultSecurityGroup
  final pulumi.Input<String>? defaultSecurityGroup;
  /// Indicates whether the instances launched in the VPC get DNS hostnames. If enabled, instances in the VPC get DNS hostnames; otherwise, they do not. Disabled by default for nondefault VPCs. For more information, see [DNS attributes in your VPC](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-dns.html#vpc-dns-support). You can only enable DNS hostnames if you've enabled DNS support.
  final pulumi.Input<bool>? enableDnsHostnames;
  /// Indicates whether the DNS resolution is supported for the VPC. If enabled, queries to the Amazon provided DNS server at the 169.254.169.253 IP address, or the reserved IP address at the base of the VPC network range 'plus two' succeed. If disabled, the Amazon provided DNS service in the VPC that resolves public DNS hostnames to IP addresses is not enabled. Enabled by default. For more information, see [DNS attributes in your VPC](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-dns.html#vpc-dns-support).
  final pulumi.Input<bool>? enableDnsSupport;
  /// The allowed tenancy of instances launched into the VPC.  +  ``default``: An instance launched into the VPC runs on shared hardware by default, unless you explicitly specify a different tenancy during instance launch.  +  ``dedicated``: An instance launched into the VPC runs on dedicated hardware by default, unless you explicitly specify a tenancy of ``host`` during instance launch. You cannot specify a tenancy of ``default`` during instance launch.   Updating ``InstanceTenancy`` requires no replacement only if you are updating its value from ``dedicated`` to ``default``. Updating ``InstanceTenancy`` from ``default`` to ``dedicated`` requires replacement.
  final pulumi.Input<String>? instanceTenancy;
  /// The ID of an IPv4 IPAM pool you want to use for allocating this VPC's CIDR. For more information, see [What is IPAM?](https://docs.aws.amazon.com//vpc/latest/ipam/what-is-it-ipam.html) in the *Amazon VPC IPAM User Guide*. You must specify either``CidrBlock`` or ``Ipv4IpamPoolId``.
  final pulumi.Input<String>? ipv4IpamPoolId;
  /// The netmask length of the IPv4 CIDR you want to allocate to this VPC from an Amazon VPC IP Address Manager (IPAM) pool. For more information about IPAM, see [What is IPAM?](https://docs.aws.amazon.com//vpc/latest/ipam/what-is-it-ipam.html) in the *Amazon VPC IPAM User Guide*.
  final pulumi.Input<int>? ipv4NetmaskLength;
  /// Property ipv6CidrBlocks
  final pulumi.Input<List<String>>? ipv6CidrBlocks;
  /// The tags for the VPC.
  final pulumi.Input<List<TagResponse>>? tags;
  /// Property vpcId
  final pulumi.Input<String>? vpcId;

  /// Creates a new [AwsEc2VpcPropertiesResponse].
  /// [cidrBlock] The IPv4 network range for the VPC, in CIDR notation. For example, ``10.0.0.0/16``. We modify the specified CIDR block to its canonical form; for example, if you specify ``100.68.0.18/18``, we modify it to ``100.68.0.0/18``. You must specify either``CidrBlock`` or ``Ipv4IpamPoolId``.
  /// [cidrBlockAssociations] Property cidrBlockAssociations
  /// [defaultNetworkAcl] Property defaultNetworkAcl
  /// [defaultSecurityGroup] Property defaultSecurityGroup
  /// [enableDnsHostnames] Indicates whether the instances launched in the VPC get DNS hostnames. If enabled, instances in the VPC get DNS hostnames; otherwise, they do not. Disabled by default for nondefault VPCs. For more information, see [DNS attributes in your VPC](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-dns.html#vpc-dns-support). You can only enable DNS hostnames if you've enabled DNS support.
  /// [enableDnsSupport] Indicates whether the DNS resolution is supported for the VPC. If enabled, queries to the Amazon provided DNS server at the 169.254.169.253 IP address, or the reserved IP address at the base of the VPC network range 'plus two' succeed. If disabled, the Amazon provided DNS service in the VPC that resolves public DNS hostnames to IP addresses is not enabled. Enabled by default. For more information, see [DNS attributes in your VPC](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-dns.html#vpc-dns-support).
  /// [instanceTenancy] The allowed tenancy of instances launched into the VPC.  +  ``default``: An instance launched into the VPC runs on shared hardware by default, unless you explicitly specify a different tenancy during instance launch.  +  ``dedicated``: An instance launched into the VPC runs on dedicated hardware by default, unless you explicitly specify a tenancy of ``host`` during instance launch. You cannot specify a tenancy of ``default`` during instance launch.   Updating ``InstanceTenancy`` requires no replacement only if you are updating its value from ``dedicated`` to ``default``. Updating ``InstanceTenancy`` from ``default`` to ``dedicated`` requires replacement.
  /// [ipv4IpamPoolId] The ID of an IPv4 IPAM pool you want to use for allocating this VPC's CIDR. For more information, see [What is IPAM?](https://docs.aws.amazon.com//vpc/latest/ipam/what-is-it-ipam.html) in the *Amazon VPC IPAM User Guide*. You must specify either``CidrBlock`` or ``Ipv4IpamPoolId``.
  /// [ipv4NetmaskLength] The netmask length of the IPv4 CIDR you want to allocate to this VPC from an Amazon VPC IP Address Manager (IPAM) pool. For more information about IPAM, see [What is IPAM?](https://docs.aws.amazon.com//vpc/latest/ipam/what-is-it-ipam.html) in the *Amazon VPC IPAM User Guide*.
  /// [ipv6CidrBlocks] Property ipv6CidrBlocks
  /// [tags] The tags for the VPC.
  /// [vpcId] Property vpcId
  AwsEc2VpcPropertiesResponse({
    this.cidrBlock,
    this.cidrBlockAssociations,
    this.defaultNetworkAcl,
    this.defaultSecurityGroup,
    this.enableDnsHostnames,
    this.enableDnsSupport,
    this.instanceTenancy,
    this.ipv4IpamPoolId,
    this.ipv4NetmaskLength,
    this.ipv6CidrBlocks,
    this.tags,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': ?cidrBlock,
      'cidrBlockAssociations': ?cidrBlockAssociations,
      'defaultNetworkAcl': ?defaultNetworkAcl,
      'defaultSecurityGroup': ?defaultSecurityGroup,
      'enableDnsHostnames': ?enableDnsHostnames,
      'enableDnsSupport': ?enableDnsSupport,
      'instanceTenancy': ?instanceTenancy,
      'ipv4IpamPoolId': ?ipv4IpamPoolId,
      'ipv4NetmaskLength': ?ipv4NetmaskLength,
      'ipv6CidrBlocks': ?ipv6CidrBlocks,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<TagResponse>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcId': ?vpcId,
    };
  }

  factory AwsEc2VpcPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsEc2VpcPropertiesResponse(
      cidrBlock: map['cidrBlock'] == null ? null : (map['cidrBlock'] as String).input(),
      cidrBlockAssociations: map['cidrBlockAssociations'] == null ? null : ((map['cidrBlockAssociations'] as List).cast<String>()).input(),
      defaultNetworkAcl: map['defaultNetworkAcl'] == null ? null : (map['defaultNetworkAcl'] as String).input(),
      defaultSecurityGroup: map['defaultSecurityGroup'] == null ? null : (map['defaultSecurityGroup'] as String).input(),
      enableDnsHostnames: map['enableDnsHostnames'] == null ? null : (map['enableDnsHostnames'] as bool).input(),
      enableDnsSupport: map['enableDnsSupport'] == null ? null : (map['enableDnsSupport'] as bool).input(),
      instanceTenancy: map['instanceTenancy'] == null ? null : (map['instanceTenancy'] as String).input(),
      ipv4IpamPoolId: map['ipv4IpamPoolId'] == null ? null : (map['ipv4IpamPoolId'] as String).input(),
      ipv4NetmaskLength: map['ipv4NetmaskLength'] == null ? null : (map['ipv4NetmaskLength'] as int).input(),
      ipv6CidrBlocks: map['ipv6CidrBlocks'] == null ? null : ((map['ipv6CidrBlocks'] as List).cast<String>()).input(),
      tags: map['tags'] == null ? null : (pulumi.Input.decodeList<TagResponse>(map['tags'], (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
    );
  }
}

