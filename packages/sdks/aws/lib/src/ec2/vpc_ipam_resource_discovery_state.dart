// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_ipam_resource_discovery_operating_region.dart';
import 'vpc_ipam_resource_discovery_organizational_unit_exclusion.dart';

/// Input properties used for looking up and filtering VpcIpamResourceDiscovery resources.
class VpcIpamResourceDiscoveryState {
  /// Amazon Resource Name (ARN) of IPAM Resource Discovery
  final pulumi.Input<String>? arn;
  /// A description for the IPAM Resource Discovery.
  final pulumi.Input<String>? description;
  /// The home region of the Resource Discovery
  final pulumi.Input<String>? ipamResourceDiscoveryRegion;
  /// A boolean to identify if the Resource Discovery is the accounts default resource discovery
  final pulumi.Input<bool>? isDefault;
  /// Determines which regions the Resource Discovery will enable IPAM features for usage and monitoring. Locale is the Region where you want to make an IPAM pool available for allocations. You can only create pools with locales that match the operating Regions of the IPAM Resource Discovery. You can only create VPCs from a pool whose locale matches the VPC's Region. You specify a region using the regionName parameter. **You must set your provider block region as an operating_region.**
  final pulumi.Input<List<VpcIpamResourceDiscoveryOperatingRegion>>? operatingRegions;
  /// Add an Organizational Unit (OU) exclusion to IPAM. If IPAM is integrated with AWS Organizations and OU exclusion is added, IPAM will not manage the IP addresses in accounts in the OU exclusion. Refer to [IPAM Quotas](https://docs.aws.amazon.com/vpc/latest/ipam/quotas-ipam.html) for the limit of exclusions that can be created.
  final pulumi.Input<List<VpcIpamResourceDiscoveryOrganizationalUnitExclusion>>? organizationalUnitExclusions;
  /// The account ID for the account that manages the Resource Discovery
  final pulumi.Input<String>? ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [VpcIpamResourceDiscoveryState].
  /// [arn] Amazon Resource Name (ARN) of IPAM Resource Discovery
  /// [description] A description for the IPAM Resource Discovery.
  /// [ipamResourceDiscoveryRegion] The home region of the Resource Discovery
  /// [isDefault] A boolean to identify if the Resource Discovery is the accounts default resource discovery
  /// [operatingRegions] Determines which regions the Resource Discovery will enable IPAM features for usage and monitoring. Locale is the Region where you want to make an IPAM pool available for allocations. You can only create pools with locales that match the operating Regions of the IPAM Resource Discovery. You can only create VPCs from a pool whose locale matches the VPC's Region. You specify a region using the regionName parameter. **You must set your provider block region as an operating_region.**
  /// [organizationalUnitExclusions] Add an Organizational Unit (OU) exclusion to IPAM. If IPAM is integrated with AWS Organizations and OU exclusion is added, IPAM will not manage the IP addresses in accounts in the OU exclusion. Refer to [IPAM Quotas](https://docs.aws.amazon.com/vpc/latest/ipam/quotas-ipam.html) for the limit of exclusions that can be created.
  /// [ownerId] The account ID for the account that manages the Resource Discovery
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const VpcIpamResourceDiscoveryState({
    this.arn,
    this.description,
    this.ipamResourceDiscoveryRegion,
    this.isDefault,
    this.operatingRegions,
    this.organizationalUnitExclusions,
    this.ownerId,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'ipamResourceDiscoveryRegion': ?ipamResourceDiscoveryRegion,
      'isDefault': ?isDefault,
      'operatingRegions': ?pulumi.Input.mapOptionalInputValue<List<VpcIpamResourceDiscoveryOperatingRegion>, List<Map<String, dynamic>>>(operatingRegions, (value) => pulumi.Input.encodeList<VpcIpamResourceDiscoveryOperatingRegion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'organizationalUnitExclusions': ?pulumi.Input.mapOptionalInputValue<List<VpcIpamResourceDiscoveryOrganizationalUnitExclusion>, List<Map<String, dynamic>>>(organizationalUnitExclusions, (value) => pulumi.Input.encodeList<VpcIpamResourceDiscoveryOrganizationalUnitExclusion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ownerId': ?ownerId,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory VpcIpamResourceDiscoveryState.fromMap(Map<String, dynamic> map) {
    return VpcIpamResourceDiscoveryState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipamResourceDiscoveryRegion: (() { final guardedValue = map['ipamResourceDiscoveryRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isDefault: (() { final guardedValue = map['isDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      operatingRegions: (() { final guardedValue = map['operatingRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VpcIpamResourceDiscoveryOperatingRegion>(guardedValue, (value) => VpcIpamResourceDiscoveryOperatingRegion.fromMap((value as Map).cast<String, dynamic>()))); })(),
      organizationalUnitExclusions: (() { final guardedValue = map['organizationalUnitExclusions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VpcIpamResourceDiscoveryOrganizationalUnitExclusion>(guardedValue, (value) => VpcIpamResourceDiscoveryOrganizationalUnitExclusion.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
