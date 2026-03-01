// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_ipam_operating_region.dart';

/// Input properties used for looking up and filtering VpcIpam resources.
class VpcIpamState {
  /// Amazon Resource Name (ARN) of IPAM
  final pulumi.Input<String>? arn;
  /// Enables you to quickly delete an IPAM, private scopes, pools in private scopes, and any allocations in the pools in private scopes.
  final pulumi.Input<bool>? cascade;
  /// The IPAM's default resource discovery association ID.
  final pulumi.Input<String>? defaultResourceDiscoveryAssociationId;
  /// The IPAM's default resource discovery ID.
  final pulumi.Input<String>? defaultResourceDiscoveryId;
  /// A description for the IPAM.
  final pulumi.Input<String>? description;
  /// Enable this option to use your own GUA ranges as private IPv6 addresses. Default: `false`.
  final pulumi.Input<bool>? enablePrivateGua;
  /// AWS account that is charged for active IP addresses managed in IPAM. Valid values are `ipam-owner` (default) and `resource-owner`.
  final pulumi.Input<String>? meteredAccount;
  /// Determines which locales can be chosen when you create pools. Locale is the Region where you want to make an IPAM pool available for allocations. You can only create pools with locales that match the operating Regions of the IPAM. You can only create VPCs from a pool whose locale matches the VPC's Region. You specify a region using the region_name parameter. You **must** set your provider block region as an operating_region.
  final pulumi.Input<List<VpcIpamOperatingRegion>>? operatingRegions;
  /// The ID of the IPAM's private scope. A scope is a top-level container in IPAM. Each scope represents an IP-independent network. Scopes enable you to represent networks where you have overlapping IP space. When you create an IPAM, IPAM automatically creates two scopes: public and private. The private scope is intended for private IP space. The public scope is intended for all internet-routable IP space.
  final pulumi.Input<String>? privateDefaultScopeId;
  /// The ID of the IPAM's public scope. A scope is a top-level container in IPAM. Each scope represents an IP-independent network. Scopes enable you to represent networks where you have overlapping IP space. When you create an IPAM, IPAM automatically creates two scopes: public and private. The private scope is intended for private
  /// IP space. The public scope is intended for all internet-routable IP space.
  final pulumi.Input<String>? publicDefaultScopeId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The number of scopes in the IPAM.
  final pulumi.Input<int>? scopeCount;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// specifies the IPAM tier. Valid options include `free` and `advanced`. Default is `advanced`.
  final pulumi.Input<String>? tier;

  /// Creates a new [VpcIpamState].
  /// [arn] Amazon Resource Name (ARN) of IPAM
  /// [cascade] Enables you to quickly delete an IPAM, private scopes, pools in private scopes, and any allocations in the pools in private scopes.
  /// [defaultResourceDiscoveryAssociationId] The IPAM's default resource discovery association ID.
  /// [defaultResourceDiscoveryId] The IPAM's default resource discovery ID.
  /// [description] A description for the IPAM.
  /// [enablePrivateGua] Enable this option to use your own GUA ranges as private IPv6 addresses. Default: `false`.
  /// [meteredAccount] AWS account that is charged for active IP addresses managed in IPAM. Valid values are `ipam-owner` (default) and `resource-owner`.
  /// [operatingRegions] Determines which locales can be chosen when you create pools. Locale is the Region where you want to make an IPAM pool available for allocations. You can only create pools with locales that match the operating Regions of the IPAM. You can only create VPCs from a pool whose locale matches the VPC's Region. You specify a region using the region_name parameter. You **must** set your provider block region as an operating_region.
  /// [privateDefaultScopeId] The ID of the IPAM's private scope. A scope is a top-level container in IPAM. Each scope represents an IP-independent network. Scopes enable you to represent networks where you have overlapping IP space. When you create an IPAM, IPAM automatically creates two scopes: public and private. The private scope is intended for private IP space. The public scope is intended for all internet-routable IP space.
  /// [publicDefaultScopeId] The ID of the IPAM's public scope. A scope is a top-level container in IPAM. Each scope represents an IP-independent network. Scopes enable you to represent networks where you have overlapping IP space. When you create an IPAM, IPAM automatically creates two scopes: public and private. The private scope is intended for private
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scopeCount] The number of scopes in the IPAM.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [tier] specifies the IPAM tier. Valid options include `free` and `advanced`. Default is `advanced`.
  VpcIpamState({
    pulumi.Output<String>? arn,
    pulumi.Output<bool>? cascade,
    pulumi.Output<String>? defaultResourceDiscoveryAssociationId,
    pulumi.Output<String>? defaultResourceDiscoveryId,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? enablePrivateGua,
    pulumi.Output<String>? meteredAccount,
    pulumi.Output<List<VpcIpamOperatingRegion>>? operatingRegions,
    pulumi.Output<String>? privateDefaultScopeId,
    pulumi.Output<String>? publicDefaultScopeId,
    pulumi.Output<String>? region,
    pulumi.Output<int>? scopeCount,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? tier,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      cascade = pulumi.Input.asOptionalInput<bool>(cascade),
      defaultResourceDiscoveryAssociationId = pulumi.Input.asOptionalInput<String>(defaultResourceDiscoveryAssociationId),
      defaultResourceDiscoveryId = pulumi.Input.asOptionalInput<String>(defaultResourceDiscoveryId),
      description = pulumi.Input.asOptionalInput<String>(description),
      enablePrivateGua = pulumi.Input.asOptionalInput<bool>(enablePrivateGua),
      meteredAccount = pulumi.Input.asOptionalInput<String>(meteredAccount),
      operatingRegions = pulumi.Input.asOptionalInput<List<VpcIpamOperatingRegion>>(operatingRegions),
      privateDefaultScopeId = pulumi.Input.asOptionalInput<String>(privateDefaultScopeId),
      publicDefaultScopeId = pulumi.Input.asOptionalInput<String>(publicDefaultScopeId),
      region = pulumi.Input.asOptionalInput<String>(region),
      scopeCount = pulumi.Input.asOptionalInput<int>(scopeCount),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      tier = pulumi.Input.asOptionalInput<String>(tier);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'cascade': ?cascade,
      'defaultResourceDiscoveryAssociationId': ?defaultResourceDiscoveryAssociationId,
      'defaultResourceDiscoveryId': ?defaultResourceDiscoveryId,
      'description': ?description,
      'enablePrivateGua': ?enablePrivateGua,
      'meteredAccount': ?meteredAccount,
      'operatingRegions': ?pulumi.Input.mapOptionalInputValue<List<VpcIpamOperatingRegion>, List<Map<String, dynamic>>>(operatingRegions, (value) => pulumi.Input.encodeList<VpcIpamOperatingRegion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateDefaultScopeId': ?privateDefaultScopeId,
      'publicDefaultScopeId': ?publicDefaultScopeId,
      'region': ?region,
      'scopeCount': ?scopeCount,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'tier': ?tier,
    };
  }

  factory VpcIpamState.fromMap(Map<String, dynamic> map) {
    return VpcIpamState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      cascade: map['cascade'] == null ? null : pulumi.Output.create<bool>(map['cascade'] as bool),
      defaultResourceDiscoveryAssociationId: map['defaultResourceDiscoveryAssociationId'] == null ? null : pulumi.Output.create<String>(map['defaultResourceDiscoveryAssociationId'] as String),
      defaultResourceDiscoveryId: map['defaultResourceDiscoveryId'] == null ? null : pulumi.Output.create<String>(map['defaultResourceDiscoveryId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enablePrivateGua: map['enablePrivateGua'] == null ? null : pulumi.Output.create<bool>(map['enablePrivateGua'] as bool),
      meteredAccount: map['meteredAccount'] == null ? null : pulumi.Output.create<String>(map['meteredAccount'] as String),
      operatingRegions: map['operatingRegions'] == null ? null : pulumi.Output.create<List<VpcIpamOperatingRegion>>(pulumi.Input.decodeList<VpcIpamOperatingRegion>(map['operatingRegions'], (value) => VpcIpamOperatingRegion.fromMap((value as Map).cast<String, dynamic>()))),
      privateDefaultScopeId: map['privateDefaultScopeId'] == null ? null : pulumi.Output.create<String>(map['privateDefaultScopeId'] as String),
      publicDefaultScopeId: map['publicDefaultScopeId'] == null ? null : pulumi.Output.create<String>(map['publicDefaultScopeId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      scopeCount: map['scopeCount'] == null ? null : pulumi.Output.create<int>(map['scopeCount'] as int),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      tier: map['tier'] == null ? null : pulumi.Output.create<String>(map['tier'] as String),
    );
  }
}

