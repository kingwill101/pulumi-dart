// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_ipam_operating_region.dart';

/// Input properties used for looking up and filtering VpcIpam resources.
class VpcIpamState {
  /// ARN of IPAM
  final pulumi.Input<String?>? arn;
  /// Enables you to quickly delete an IPAM, private scopes, pools in private scopes, and any allocations in the pools in private scopes.
  final pulumi.Input<bool?>? cascade;
  /// The IPAM's default resource discovery association ID.
  final pulumi.Input<String?>? defaultResourceDiscoveryAssociationId;
  /// The IPAM's default resource discovery ID.
  final pulumi.Input<String?>? defaultResourceDiscoveryId;
  /// A description for the IPAM.
  final pulumi.Input<String?>? description;
  /// Enable this option to use your own GUA ranges as private IPv6 addresses. Default: `false`.
  final pulumi.Input<bool?>? enablePrivateGua;
  /// AWS account that is charged for active IP addresses managed in IPAM. Valid values are `ipam-owner` (default) and `resource-owner`.
  final pulumi.Input<String?>? meteredAccount;
  /// Determines which locales can be chosen when you create pools. Locale is the Region where you want to make an IPAM pool available for allocations. You can only create pools with locales that match the operating Regions of the IPAM. You can only create VPCs from a pool whose locale matches the VPC's Region. You specify a region using the regionName parameter. You **must** set your provider block region as an operating_region.
  final pulumi.Input<List<VpcIpamOperatingRegion>?>? operatingRegions;
  /// The ID of the IPAM's private scope. A scope is a top-level container in IPAM. Each scope represents an IP-independent network. Scopes enable you to represent networks where you have overlapping IP space. When you create an IPAM, IPAM automatically creates two scopes: public and private. The private scope is intended for private IP space. The public scope is intended for all internet-routable IP space.
  final pulumi.Input<String?>? privateDefaultScopeId;
  /// The ID of the IPAM's public scope. A scope is a top-level container in IPAM. Each scope represents an IP-independent network. Scopes enable you to represent networks where you have overlapping IP space. When you create an IPAM, IPAM automatically creates two scopes: public and private. The private scope is intended for private
  /// IP space. The public scope is intended for all internet-routable IP space.
  final pulumi.Input<String?>? publicDefaultScopeId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The number of scopes in the IPAM.
  final pulumi.Input<int?>? scopeCount;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// specifies the IPAM tier. Valid options include `free` and `advanced`. Default is `advanced`.
  final pulumi.Input<String?>? tier;

  /// Creates a new [VpcIpamState].
  /// [arn] ARN of IPAM
  /// [cascade] Enables you to quickly delete an IPAM, private scopes, pools in private scopes, and any allocations in the pools in private scopes.
  /// [defaultResourceDiscoveryAssociationId] The IPAM's default resource discovery association ID.
  /// [defaultResourceDiscoveryId] The IPAM's default resource discovery ID.
  /// [description] A description for the IPAM.
  /// [enablePrivateGua] Enable this option to use your own GUA ranges as private IPv6 addresses. Default: `false`.
  /// [meteredAccount] AWS account that is charged for active IP addresses managed in IPAM. Valid values are `ipam-owner` (default) and `resource-owner`.
  /// [operatingRegions] Determines which locales can be chosen when you create pools. Locale is the Region where you want to make an IPAM pool available for allocations. You can only create pools with locales that match the operating Regions of the IPAM. You can only create VPCs from a pool whose locale matches the VPC's Region. You specify a region using the regionName parameter. You **must** set your provider block region as an operating_region.
  /// [privateDefaultScopeId] The ID of the IPAM's private scope. A scope is a top-level container in IPAM. Each scope represents an IP-independent network. Scopes enable you to represent networks where you have overlapping IP space. When you create an IPAM, IPAM automatically creates two scopes: public and private. The private scope is intended for private IP space. The public scope is intended for all internet-routable IP space.
  /// [publicDefaultScopeId] The ID of the IPAM's public scope. A scope is a top-level container in IPAM. Each scope represents an IP-independent network. Scopes enable you to represent networks where you have overlapping IP space. When you create an IPAM, IPAM automatically creates two scopes: public and private. The private scope is intended for private
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scopeCount] The number of scopes in the IPAM.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [tier] specifies the IPAM tier. Valid options include `free` and `advanced`. Default is `advanced`.
  const VpcIpamState({
    this.arn,
    this.cascade,
    this.defaultResourceDiscoveryAssociationId,
    this.defaultResourceDiscoveryId,
    this.description,
    this.enablePrivateGua,
    this.meteredAccount,
    this.operatingRegions,
    this.privateDefaultScopeId,
    this.publicDefaultScopeId,
    this.region,
    this.scopeCount,
    this.tags,
    this.tagsAll,
    this.tier,
  });

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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cascade: (() { final guardedValue = map['cascade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      defaultResourceDiscoveryAssociationId: (() { final guardedValue = map['defaultResourceDiscoveryAssociationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultResourceDiscoveryId: (() { final guardedValue = map['defaultResourceDiscoveryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enablePrivateGua: (() { final guardedValue = map['enablePrivateGua']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      meteredAccount: (() { final guardedValue = map['meteredAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operatingRegions: (() { final guardedValue = map['operatingRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VpcIpamOperatingRegion>(guardedValue, (value) => VpcIpamOperatingRegion.fromMap((value as Map).cast<String, dynamic>()))); })(),
      privateDefaultScopeId: (() { final guardedValue = map['privateDefaultScopeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicDefaultScopeId: (() { final guardedValue = map['publicDefaultScopeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopeCount: (() { final guardedValue = map['scopeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
