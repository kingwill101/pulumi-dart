// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../vpc_ipam_operating_region/vpc_ipam_operating_region.dart';

/// The set of arguments for VpcIpam.
class VpcIpamArgs {
  /// Enables you to quickly delete an IPAM, private scopes, pools in private scopes, and any allocations in the pools in private scopes.
  final Input<bool>? cascade;

  /// A description for the IPAM.
  final Input<String>? description;

  /// Enable this option to use your own GUA ranges as private IPv6 addresses. Default: `false`.
  final Input<bool>? enablePrivateGua;

  /// AWS account that is charged for active IP addresses managed in IPAM. Valid values are `ipam-owner` (default) and `resource-owner`.
  final Input<String>? meteredAccount;

  /// Determines which locales can be chosen when you create pools. Locale is the Region where you want to make an IPAM pool available for allocations. You can only create pools with locales that match the operating Regions of the IPAM. You can only create VPCs from a pool whose locale matches the VPC's Region. You specify a region using the region_name parameter. You **must** set your provider block region as an operating_region.
  final Input<List<VpcIpamOperatingRegion>> operatingRegions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// specifies the IPAM tier. Valid options include `free` and `advanced`. Default is `advanced`.
  final Input<String>? tier;

  VpcIpamArgs({
    this.cascade,
    this.description,
    this.enablePrivateGua,
    this.meteredAccount,
    required this.operatingRegions,
    this.region,
    this.tags,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cascadeValue = cascade;
    if (cascadeValue != null) {
      map['cascade'] = cascadeValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final enablePrivateGuaValue = enablePrivateGua;
    if (enablePrivateGuaValue != null) {
      map['enablePrivateGua'] = enablePrivateGuaValue;
    }
    final meteredAccountValue = meteredAccount;
    if (meteredAccountValue != null) {
      map['meteredAccount'] = meteredAccountValue;
    }
    map['operatingRegions'] = Input.mapInputValue<List<VpcIpamOperatingRegion>,
            List<Map<String, dynamic>>>(
        operatingRegions,
        (value) =>
            Input.encodeList<VpcIpamOperatingRegion, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final tierValue = tier;
    if (tierValue != null) {
      map['tier'] = tierValue;
    }
    return map;
  }

  factory VpcIpamArgs.fromMap(Map<String, dynamic> map) {
    return VpcIpamArgs(
      cascade: Input.asOptionalInput<bool>(map['cascade']),
      description: Input.asOptionalInput<String>(map['description']),
      enablePrivateGua: Input.asOptionalInput<bool>(map['enablePrivateGua']),
      meteredAccount: Input.asOptionalInput<String>(map['meteredAccount']),
      operatingRegions:
          Input.asInput<List<VpcIpamOperatingRegion>>(map['operatingRegions']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      tier: Input.asOptionalInput<String>(map['tier']),
    );
  }
}
