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
  /// Determines which regions the Resource Discovery will enable IPAM features for usage and monitoring. Locale is the Region where you want to make an IPAM pool available for allocations. You can only create pools with locales that match the operating Regions of the IPAM Resource Discovery. You can only create VPCs from a pool whose locale matches the VPC's Region. You specify a region using the region_name parameter. **You must set your provider block region as an operating_region.**
  final pulumi.Input<List<VpcIpamResourceDiscoveryOperatingRegion>>? operatingRegions;
  /// Add an Organizational Unit (OU) exclusion to IPAM. If IPAM is integrated with AWS Organizations and OU exclusion is added, IPAM will not manage the IP addresses in accounts in the OU exclusion. Refer to [IPAM Quotas](https://docs.aws.amazon.com/vpc/latest/ipam/quotas-ipam.html) for the limit of exclusions that can be created.
  final pulumi.Input<List<VpcIpamResourceDiscoveryOrganizationalUnitExclusion>>? organizationalUnitExclusions;
  /// The account ID for the account that manages the Resource Discovery
  final pulumi.Input<String>? ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [VpcIpamResourceDiscoveryState].
  /// [arn] Amazon Resource Name (ARN) of IPAM Resource Discovery
  /// [description] A description for the IPAM Resource Discovery.
  /// [ipamResourceDiscoveryRegion] The home region of the Resource Discovery
  /// [isDefault] A boolean to identify if the Resource Discovery is the accounts default resource discovery
  /// [operatingRegions] Determines which regions the Resource Discovery will enable IPAM features for usage and monitoring. Locale is the Region where you want to make an IPAM pool available for allocations. You can only create pools with locales that match the operating Regions of the IPAM Resource Discovery. You can only create VPCs from a pool whose locale matches the VPC's Region. You specify a region using the region_name parameter. **You must set your provider block region as an operating_region.**
  /// [organizationalUnitExclusions] Add an Organizational Unit (OU) exclusion to IPAM. If IPAM is integrated with AWS Organizations and OU exclusion is added, IPAM will not manage the IP addresses in accounts in the OU exclusion. Refer to [IPAM Quotas](https://docs.aws.amazon.com/vpc/latest/ipam/quotas-ipam.html) for the limit of exclusions that can be created.
  /// [ownerId] The account ID for the account that manages the Resource Discovery
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  VpcIpamResourceDiscoveryState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? ipamResourceDiscoveryRegion,
    pulumi.Output<bool>? isDefault,
    pulumi.Output<List<VpcIpamResourceDiscoveryOperatingRegion>>? operatingRegions,
    pulumi.Output<List<VpcIpamResourceDiscoveryOrganizationalUnitExclusion>>? organizationalUnitExclusions,
    pulumi.Output<String>? ownerId,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      ipamResourceDiscoveryRegion = pulumi.Input.asOptionalInput<String>(ipamResourceDiscoveryRegion),
      isDefault = pulumi.Input.asOptionalInput<bool>(isDefault),
      operatingRegions = pulumi.Input.asOptionalInput<List<VpcIpamResourceDiscoveryOperatingRegion>>(operatingRegions),
      organizationalUnitExclusions = pulumi.Input.asOptionalInput<List<VpcIpamResourceDiscoveryOrganizationalUnitExclusion>>(organizationalUnitExclusions),
      ownerId = pulumi.Input.asOptionalInput<String>(ownerId),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      ipamResourceDiscoveryRegion: map['ipamResourceDiscoveryRegion'] == null ? null : pulumi.Output.create<String>(map['ipamResourceDiscoveryRegion'] as String),
      isDefault: map['isDefault'] == null ? null : pulumi.Output.create<bool>(map['isDefault'] as bool),
      operatingRegions: map['operatingRegions'] == null ? null : pulumi.Output.create<List<VpcIpamResourceDiscoveryOperatingRegion>>(pulumi.Input.decodeList<VpcIpamResourceDiscoveryOperatingRegion>(map['operatingRegions'], (value) => VpcIpamResourceDiscoveryOperatingRegion.fromMap((value as Map).cast<String, dynamic>()))),
      organizationalUnitExclusions: map['organizationalUnitExclusions'] == null ? null : pulumi.Output.create<List<VpcIpamResourceDiscoveryOrganizationalUnitExclusion>>(pulumi.Input.decodeList<VpcIpamResourceDiscoveryOrganizationalUnitExclusion>(map['organizationalUnitExclusions'], (value) => VpcIpamResourceDiscoveryOrganizationalUnitExclusion.fromMap((value as Map).cast<String, dynamic>()))),
      ownerId: map['ownerId'] == null ? null : pulumi.Output.create<String>(map['ownerId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

