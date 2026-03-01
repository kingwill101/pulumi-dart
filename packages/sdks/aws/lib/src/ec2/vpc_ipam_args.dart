// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_ipam_operating_region.dart';

/// {@template pulumi_ec2_vpc_ipam_vpc_ipam_args_doc}
/// The set of arguments for VpcIpam.
/// {@endtemplate}
/// {@macro pulumi_ec2_vpc_ipam_vpc_ipam_args_doc}
class VpcIpamArgs {
  /// Enables you to quickly delete an IPAM, private scopes, pools in private scopes, and any allocations in the pools in private scopes.
  final pulumi.Input<bool>? cascade;
  /// A description for the IPAM.
  final pulumi.Input<String>? description;
  /// Enable this option to use your own GUA ranges as private IPv6 addresses. Default: `false`.
  final pulumi.Input<bool>? enablePrivateGua;
  /// AWS account that is charged for active IP addresses managed in IPAM. Valid values are `ipam-owner` (default) and `resource-owner`.
  final pulumi.Input<String>? meteredAccount;
  /// Determines which locales can be chosen when you create pools. Locale is the Region where you want to make an IPAM pool available for allocations. You can only create pools with locales that match the operating Regions of the IPAM. You can only create VPCs from a pool whose locale matches the VPC's Region. You specify a region using the region_name parameter. You **must** set your provider block region as an operating_region.
  final pulumi.Input<List<VpcIpamOperatingRegion>> operatingRegions;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// specifies the IPAM tier. Valid options include `free` and `advanced`. Default is `advanced`.
  final pulumi.Input<String>? tier;

  /// Creates a new [VpcIpamArgs].
  /// [cascade] Enables you to quickly delete an IPAM, private scopes, pools in private scopes, and any allocations in the pools in private scopes.
  /// [description] A description for the IPAM.
  /// [enablePrivateGua] Enable this option to use your own GUA ranges as private IPv6 addresses. Default: `false`.
  /// [meteredAccount] AWS account that is charged for active IP addresses managed in IPAM. Valid values are `ipam-owner` (default) and `resource-owner`.
  /// [operatingRegions] Determines which locales can be chosen when you create pools. Locale is the Region where you want to make an IPAM pool available for allocations. You can only create pools with locales that match the operating Regions of the IPAM. You can only create VPCs from a pool whose locale matches the VPC's Region. You specify a region using the region_name parameter. You **must** set your provider block region as an operating_region.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tier] specifies the IPAM tier. Valid options include `free` and `advanced`. Default is `advanced`.
  VpcIpamArgs({
    pulumi.Output<bool>? cascade,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? enablePrivateGua,
    pulumi.Output<String>? meteredAccount,
    required pulumi.Output<List<VpcIpamOperatingRegion>> operatingRegions,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? tier,
  }) :
      cascade = pulumi.Input.asOptionalInput<bool>(cascade),
      description = pulumi.Input.asOptionalInput<String>(description),
      enablePrivateGua = pulumi.Input.asOptionalInput<bool>(enablePrivateGua),
      meteredAccount = pulumi.Input.asOptionalInput<String>(meteredAccount),
      operatingRegions = pulumi.Input.asInput<List<VpcIpamOperatingRegion>>(operatingRegions),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tier = pulumi.Input.asOptionalInput<String>(tier);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cascade': ?cascade,
      'description': ?description,
      'enablePrivateGua': ?enablePrivateGua,
      'meteredAccount': ?meteredAccount,
      'operatingRegions': pulumi.Input.mapInputValue<List<VpcIpamOperatingRegion>, List<Map<String, dynamic>>>(operatingRegions, (value) => pulumi.Input.encodeList<VpcIpamOperatingRegion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
      'tier': ?tier,
    };
  }

  factory VpcIpamArgs.fromMap(Map<String, dynamic> map) {
    return VpcIpamArgs(
      cascade: map['cascade'] == null ? null : pulumi.Output.create<bool>(map['cascade'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enablePrivateGua: map['enablePrivateGua'] == null ? null : pulumi.Output.create<bool>(map['enablePrivateGua'] as bool),
      meteredAccount: map['meteredAccount'] == null ? null : pulumi.Output.create<String>(map['meteredAccount'] as String),
      operatingRegions: pulumi.Output.create<List<VpcIpamOperatingRegion>>(pulumi.Input.decodeList<VpcIpamOperatingRegion>(map['operatingRegions'], (value) => VpcIpamOperatingRegion.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tier: map['tier'] == null ? null : pulumi.Output.create<String>(map['tier'] as String),
    );
  }
}

