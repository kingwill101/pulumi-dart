// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../vpc_ipam_resource_discovery_operating_region/vpc_ipam_resource_discovery_operating_region.dart';
import '../vpc_ipam_resource_discovery_organizational_unit_exclusion/vpc_ipam_resource_discovery_organizational_unit_exclusion.dart';

/// The set of arguments for VpcIpamResourceDiscovery.
class VpcIpamResourceDiscoveryArgs {
  /// A description for the IPAM Resource Discovery.
  final pulumi.Input<String>? description;

  /// Determines which regions the Resource Discovery will enable IPAM features for usage and monitoring. Locale is the Region where you want to make an IPAM pool available for allocations. You can only create pools with locales that match the operating Regions of the IPAM Resource Discovery. You can only create VPCs from a pool whose locale matches the VPC's Region. You specify a region using the region_name parameter. **You must set your provider block region as an operating_region.**
  final pulumi.Input<List<VpcIpamResourceDiscoveryOperatingRegion>>
      operatingRegions;

  /// Add an Organizational Unit (OU) exclusion to IPAM. If IPAM is integrated with AWS Organizations and OU exclusion is added, IPAM will not manage the IP addresses in accounts in the OU exclusion. Refer to [IPAM Quotas](https://docs.aws.amazon.com/vpc/latest/ipam/quotas-ipam.html) for the limit of exclusions that can be created.
  final pulumi.Input<List<VpcIpamResourceDiscoveryOrganizationalUnitExclusion>>?
      organizationalUnitExclusions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  VpcIpamResourceDiscoveryArgs({
    this.description,
    required this.operatingRegions,
    this.organizationalUnitExclusions,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['operatingRegions'] = pulumi.Input.mapInputValue<
            List<VpcIpamResourceDiscoveryOperatingRegion>,
            List<Map<String, dynamic>>>(
        operatingRegions,
        (value) => pulumi.Input.encodeList<
            VpcIpamResourceDiscoveryOperatingRegion,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final organizationalUnitExclusionsValue = organizationalUnitExclusions;
    if (organizationalUnitExclusionsValue != null) {
      map['organizationalUnitExclusions'] = pulumi.Input.mapOptionalInputValue<
              List<VpcIpamResourceDiscoveryOrganizationalUnitExclusion>,
              List<Map<String, dynamic>>>(
          organizationalUnitExclusionsValue,
          (value) => pulumi.Input.encodeList<
              VpcIpamResourceDiscoveryOrganizationalUnitExclusion,
              Map<String, dynamic>>(value, (value) => value.toMap()));
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

  factory VpcIpamResourceDiscoveryArgs.fromMap(Map<String, dynamic> map) {
    return VpcIpamResourceDiscoveryArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      operatingRegions:
          pulumi.Input.asInput<List<VpcIpamResourceDiscoveryOperatingRegion>>(
              map['operatingRegions']),
      organizationalUnitExclusions: pulumi.Input.asOptionalInput<
              List<VpcIpamResourceDiscoveryOrganizationalUnitExclusion>>(
          map['organizationalUnitExclusions']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
