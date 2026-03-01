// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipam_operating_region_response.dart';
import 'ipam_state_enum_value_response.dart';
import 'ipam_tier_enum_value_response.dart';
import 'tag_response.dart';

/// Definition of awsEc2Ipam
class AwsEc2IpamPropertiesResponse {
  /// <p>The IPAM's default resource discovery association ID.</p>
  final String? defaultResourceDiscoveryAssociationId;
  /// <p>The IPAM's default resource discovery ID.</p>
  final String? defaultResourceDiscoveryId;
  /// <p>The description for the IPAM.</p>
  final String? description;
  /// <p>The Amazon Resource Name (ARN) of the IPAM.</p>
  final String? ipamArn;
  /// <p>The ID of the IPAM.</p>
  final String? ipamId;
  /// <p>The Amazon Web Services Region of the IPAM.</p>
  final String? ipamRegion;
  /// <p>The operating Regions for an IPAM. Operating Regions are Amazon Web Services Regions where the IPAM is allowed to manage IP address CIDRs. IPAM only discovers and monitors resources in the Amazon Web Services Regions you select as operating Regions.</p> <p>For more information about operating Regions, see <a href='https://docs.aws.amazon.com/vpc/latest/ipam/create-ipam.html'>Create an IPAM</a> in the <i>Amazon VPC IPAM User Guide</i>.</p>
  final List<IpamOperatingRegionResponse>? operatingRegions;
  /// <p>The Amazon Web Services account ID of the owner of the IPAM.</p>
  final String? ownerId;
  /// <p>The ID of the IPAM's default private scope.</p>
  final String? privateDefaultScopeId;
  /// <p>The ID of the IPAM's default public scope.</p>
  final String? publicDefaultScopeId;
  /// <p>The IPAM's resource discovery association count.</p>
  final int? resourceDiscoveryAssociationCount;
  /// <p>The number of scopes in the IPAM. The scope quota is 5. For more information on quotas, see <a href='https://docs.aws.amazon.com/vpc/latest/ipam/quotas-ipam.html'>Quotas in IPAM</a> in the <i>Amazon VPC IPAM User Guide</i>. </p>
  final int? scopeCount;
  /// <p>The state of the IPAM.</p>
  final IpamStateEnumValueResponse? state;
  /// <p>The state message.</p>
  final String? stateMessage;
  /// <p>The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key <code>Owner</code> and the value <code>TeamA</code>, specify <code>tag:Owner</code> for the filter name and <code>TeamA</code> for the filter value.</p>
  final List<TagResponse>? tags;
  /// <p>IPAM is offered in a Free Tier and an Advanced Tier. For more information about the features available in each tier and the costs associated with the tiers, see <a href='http://aws.amazon.com/vpc/pricing/'>Amazon VPC pricing &gt; IPAM tab</a>.</p>
  final IpamTierEnumValueResponse? tier;

  /// Creates a new [AwsEc2IpamPropertiesResponse].
  /// [defaultResourceDiscoveryAssociationId] <p>The IPAM's default resource discovery association ID.</p>
  /// [defaultResourceDiscoveryId] <p>The IPAM's default resource discovery ID.</p>
  /// [description] <p>The description for the IPAM.</p>
  /// [ipamArn] <p>The Amazon Resource Name (ARN) of the IPAM.</p>
  /// [ipamId] <p>The ID of the IPAM.</p>
  /// [ipamRegion] <p>The Amazon Web Services Region of the IPAM.</p>
  /// [operatingRegions] <p>The operating Regions for an IPAM. Operating Regions are Amazon Web Services Regions where the IPAM is allowed to manage IP address CIDRs. IPAM only discovers and monitors resources in the Amazon Web Services Regions you select as operating Regions.</p> <p>For more information about operating Regions, see <a href='https://docs.aws.amazon.com/vpc/latest/ipam/create-ipam.html'>Create an IPAM</a> in the <i>Amazon VPC IPAM User Guide</i>.</p>
  /// [ownerId] <p>The Amazon Web Services account ID of the owner of the IPAM.</p>
  /// [privateDefaultScopeId] <p>The ID of the IPAM's default private scope.</p>
  /// [publicDefaultScopeId] <p>The ID of the IPAM's default public scope.</p>
  /// [resourceDiscoveryAssociationCount] <p>The IPAM's resource discovery association count.</p>
  /// [scopeCount] <p>The number of scopes in the IPAM. The scope quota is 5. For more information on quotas, see <a href='https://docs.aws.amazon.com/vpc/latest/ipam/quotas-ipam.html'>Quotas in IPAM</a> in the <i>Amazon VPC IPAM User Guide</i>. </p>
  /// [state] <p>The state of the IPAM.</p>
  /// [stateMessage] <p>The state message.</p>
  /// [tags] <p>The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key <code>Owner</code> and the value <code>TeamA</code>, specify <code>tag:Owner</code> for the filter name and <code>TeamA</code> for the filter value.</p>
  /// [tier] <p>IPAM is offered in a Free Tier and an Advanced Tier. For more information about the features available in each tier and the costs associated with the tiers, see <a href='http://aws.amazon.com/vpc/pricing/'>Amazon VPC pricing &gt; IPAM tab</a>.</p>
  AwsEc2IpamPropertiesResponse({
    this.defaultResourceDiscoveryAssociationId,
    this.defaultResourceDiscoveryId,
    this.description,
    this.ipamArn,
    this.ipamId,
    this.ipamRegion,
    this.operatingRegions,
    this.ownerId,
    this.privateDefaultScopeId,
    this.publicDefaultScopeId,
    this.resourceDiscoveryAssociationCount,
    this.scopeCount,
    this.state,
    this.stateMessage,
    this.tags,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultResourceDiscoveryAssociationId': ?defaultResourceDiscoveryAssociationId,
      'defaultResourceDiscoveryId': ?defaultResourceDiscoveryId,
      'description': ?description,
      'ipamArn': ?ipamArn,
      'ipamId': ?ipamId,
      'ipamRegion': ?ipamRegion,
      'operatingRegions': ?operatingRegions == null ? null : pulumi.Input.encodeList<IpamOperatingRegionResponse, Map<String, dynamic>>(operatingRegions!, (value) => value.toMap()),
      'ownerId': ?ownerId,
      'privateDefaultScopeId': ?privateDefaultScopeId,
      'publicDefaultScopeId': ?publicDefaultScopeId,
      'resourceDiscoveryAssociationCount': ?resourceDiscoveryAssociationCount,
      'scopeCount': ?scopeCount,
      'state': ?state == null ? null : state!.toMap(),
      'stateMessage': ?stateMessage,
      'tags': ?tags == null ? null : pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(tags!, (value) => value.toMap()),
      'tier': ?tier == null ? null : tier!.toMap(),
    };
  }

  factory AwsEc2IpamPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsEc2IpamPropertiesResponse(
      defaultResourceDiscoveryAssociationId: map['defaultResourceDiscoveryAssociationId'] == null ? null : map['defaultResourceDiscoveryAssociationId'] as String,
      defaultResourceDiscoveryId: map['defaultResourceDiscoveryId'] == null ? null : map['defaultResourceDiscoveryId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      ipamArn: map['ipamArn'] == null ? null : map['ipamArn'] as String,
      ipamId: map['ipamId'] == null ? null : map['ipamId'] as String,
      ipamRegion: map['ipamRegion'] == null ? null : map['ipamRegion'] as String,
      operatingRegions: map['operatingRegions'] == null ? null : pulumi.Input.decodeList<IpamOperatingRegionResponse>(map['operatingRegions'], (value) => IpamOperatingRegionResponse.fromMap((value as Map).cast<String, dynamic>())),
      ownerId: map['ownerId'] == null ? null : map['ownerId'] as String,
      privateDefaultScopeId: map['privateDefaultScopeId'] == null ? null : map['privateDefaultScopeId'] as String,
      publicDefaultScopeId: map['publicDefaultScopeId'] == null ? null : map['publicDefaultScopeId'] as String,
      resourceDiscoveryAssociationCount: map['resourceDiscoveryAssociationCount'] == null ? null : map['resourceDiscoveryAssociationCount'] as int,
      scopeCount: map['scopeCount'] == null ? null : map['scopeCount'] as int,
      state: map['state'] == null ? null : IpamStateEnumValueResponse.fromMap((map['state'] as Map).cast<String, dynamic>()),
      stateMessage: map['stateMessage'] == null ? null : map['stateMessage'] as String,
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<TagResponse>(map['tags'], (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>())),
      tier: map['tier'] == null ? null : IpamTierEnumValueResponse.fromMap((map['tier'] as Map).cast<String, dynamic>()),
    );
  }
}

