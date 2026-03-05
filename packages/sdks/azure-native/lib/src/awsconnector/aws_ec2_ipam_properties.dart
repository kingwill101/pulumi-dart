// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipam_operating_region.dart';
import 'ipam_state_enum_value.dart';
import 'ipam_tier_enum_value.dart';
import 'tag.dart';

/// Definition of awsEc2Ipam
class AwsEc2IpamProperties {
  /// &lt;p&gt;The IPAM's default resource discovery association ID.&lt;/p&gt;
  final pulumi.Input<String>? defaultResourceDiscoveryAssociationId;
  /// &lt;p&gt;The IPAM's default resource discovery ID.&lt;/p&gt;
  final pulumi.Input<String>? defaultResourceDiscoveryId;
  /// &lt;p&gt;The description for the IPAM.&lt;/p&gt;
  final pulumi.Input<String>? description;
  /// &lt;p&gt;The Amazon Resource Name (ARN) of the IPAM.&lt;/p&gt;
  final pulumi.Input<String>? ipamArn;
  /// &lt;p&gt;The ID of the IPAM.&lt;/p&gt;
  final pulumi.Input<String>? ipamId;
  /// &lt;p&gt;The Amazon Web Services Region of the IPAM.&lt;/p&gt;
  final pulumi.Input<String>? ipamRegion;
  /// &lt;p&gt;The operating Regions for an IPAM. Operating Regions are Amazon Web Services Regions where the IPAM is allowed to manage IP address CIDRs. IPAM only discovers and monitors resources in the Amazon Web Services Regions you select as operating Regions.&lt;/p&gt; &lt;p&gt;For more information about operating Regions, see &lt;a href='https://docs.aws.amazon.com/vpc/latest/ipam/create-ipam.html'&gt;Create an IPAM&lt;/a&gt; in the &lt;i&gt;Amazon VPC IPAM User Guide&lt;/i&gt;.&lt;/p&gt;
  final pulumi.Input<List<IpamOperatingRegion>>? operatingRegions;
  /// &lt;p&gt;The Amazon Web Services account ID of the owner of the IPAM.&lt;/p&gt;
  final pulumi.Input<String>? ownerId;
  /// &lt;p&gt;The ID of the IPAM's default private scope.&lt;/p&gt;
  final pulumi.Input<String>? privateDefaultScopeId;
  /// &lt;p&gt;The ID of the IPAM's default public scope.&lt;/p&gt;
  final pulumi.Input<String>? publicDefaultScopeId;
  /// &lt;p&gt;The IPAM's resource discovery association count.&lt;/p&gt;
  final pulumi.Input<int>? resourceDiscoveryAssociationCount;
  /// &lt;p&gt;The number of scopes in the IPAM. The scope quota is 5. For more information on quotas, see &lt;a href='https://docs.aws.amazon.com/vpc/latest/ipam/quotas-ipam.html'&gt;Quotas in IPAM&lt;/a&gt; in the &lt;i&gt;Amazon VPC IPAM User Guide&lt;/i&gt;. &lt;/p&gt;
  final pulumi.Input<int>? scopeCount;
  /// &lt;p&gt;The state of the IPAM.&lt;/p&gt;
  final pulumi.Input<IpamStateEnumValue>? state;
  /// &lt;p&gt;The state message.&lt;/p&gt;
  final pulumi.Input<String>? stateMessage;
  /// &lt;p&gt;The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key &lt;code&gt;Owner&lt;/code&gt; and the value &lt;code&gt;TeamA&lt;/code&gt;, specify &lt;code&gt;tag:Owner&lt;/code&gt; for the filter name and &lt;code&gt;TeamA&lt;/code&gt; for the filter value.&lt;/p&gt;
  final pulumi.Input<List<Tag>>? tags;
  /// &lt;p&gt;IPAM is offered in a Free Tier and an Advanced Tier. For more information about the features available in each tier and the costs associated with the tiers, see &lt;a href='http://aws.amazon.com/vpc/pricing/'&gt;Amazon VPC pricing &gt; IPAM tab&lt;/a&gt;.&lt;/p&gt;
  final pulumi.Input<IpamTierEnumValue>? tier;

  /// Creates a new [AwsEc2IpamProperties].
  /// [defaultResourceDiscoveryAssociationId] &lt;p&gt;The IPAM's default resource discovery association ID.&lt;/p&gt;
  /// [defaultResourceDiscoveryId] &lt;p&gt;The IPAM's default resource discovery ID.&lt;/p&gt;
  /// [description] &lt;p&gt;The description for the IPAM.&lt;/p&gt;
  /// [ipamArn] &lt;p&gt;The Amazon Resource Name (ARN) of the IPAM.&lt;/p&gt;
  /// [ipamId] &lt;p&gt;The ID of the IPAM.&lt;/p&gt;
  /// [ipamRegion] &lt;p&gt;The Amazon Web Services Region of the IPAM.&lt;/p&gt;
  /// [operatingRegions] &lt;p&gt;The operating Regions for an IPAM. Operating Regions are Amazon Web Services Regions where the IPAM is allowed to manage IP address CIDRs. IPAM only discovers and monitors resources in the Amazon Web Services Regions you select as operating Regions.&lt;/p&gt; &lt;p&gt;For more information about operating Regions, see &lt;a href='https://docs.aws.amazon.com/vpc/latest/ipam/create-ipam.html'&gt;Create an IPAM&lt;/a&gt; in the &lt;i&gt;Amazon VPC IPAM User Guide&lt;/i&gt;.&lt;/p&gt;
  /// [ownerId] &lt;p&gt;The Amazon Web Services account ID of the owner of the IPAM.&lt;/p&gt;
  /// [privateDefaultScopeId] &lt;p&gt;The ID of the IPAM's default private scope.&lt;/p&gt;
  /// [publicDefaultScopeId] &lt;p&gt;The ID of the IPAM's default public scope.&lt;/p&gt;
  /// [resourceDiscoveryAssociationCount] &lt;p&gt;The IPAM's resource discovery association count.&lt;/p&gt;
  /// [scopeCount] &lt;p&gt;The number of scopes in the IPAM. The scope quota is 5. For more information on quotas, see &lt;a href='https://docs.aws.amazon.com/vpc/latest/ipam/quotas-ipam.html'&gt;Quotas in IPAM&lt;/a&gt; in the &lt;i&gt;Amazon VPC IPAM User Guide&lt;/i&gt;. &lt;/p&gt;
  /// [state] &lt;p&gt;The state of the IPAM.&lt;/p&gt;
  /// [stateMessage] &lt;p&gt;The state message.&lt;/p&gt;
  /// [tags] &lt;p&gt;The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key &lt;code&gt;Owner&lt;/code&gt; and the value &lt;code&gt;TeamA&lt;/code&gt;, specify &lt;code&gt;tag:Owner&lt;/code&gt; for the filter name and &lt;code&gt;TeamA&lt;/code&gt; for the filter value.&lt;/p&gt;
  /// [tier] &lt;p&gt;IPAM is offered in a Free Tier and an Advanced Tier. For more information about the features available in each tier and the costs associated with the tiers, see &lt;a href='http://aws.amazon.com/vpc/pricing/'&gt;Amazon VPC pricing &gt; IPAM tab&lt;/a&gt;.&lt;/p&gt;
  AwsEc2IpamProperties({
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
      'operatingRegions': ?pulumi.Input.mapOptionalInputValue<List<IpamOperatingRegion>, List<Map<String, dynamic>>>(operatingRegions, (value) => pulumi.Input.encodeList<IpamOperatingRegion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ownerId': ?ownerId,
      'privateDefaultScopeId': ?privateDefaultScopeId,
      'publicDefaultScopeId': ?publicDefaultScopeId,
      'resourceDiscoveryAssociationCount': ?resourceDiscoveryAssociationCount,
      'scopeCount': ?scopeCount,
      'state': ?pulumi.Input.mapOptionalInputValue<IpamStateEnumValue, Map<String, dynamic>>(state, (value) => value.toMap()),
      'stateMessage': ?stateMessage,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<Tag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<Tag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tier': ?pulumi.Input.mapOptionalInputValue<IpamTierEnumValue, Map<String, dynamic>>(tier, (value) => value.toMap()),
    };
  }

  factory AwsEc2IpamProperties.fromMap(Map<String, dynamic> map) {
    return AwsEc2IpamProperties(
      defaultResourceDiscoveryAssociationId: (() { final guardedValue = map['defaultResourceDiscoveryAssociationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultResourceDiscoveryId: (() { final guardedValue = map['defaultResourceDiscoveryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipamArn: (() { final guardedValue = map['ipamArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipamId: (() { final guardedValue = map['ipamId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipamRegion: (() { final guardedValue = map['ipamRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operatingRegions: (() { final guardedValue = map['operatingRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IpamOperatingRegion>(guardedValue, (value) => IpamOperatingRegion.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateDefaultScopeId: (() { final guardedValue = map['privateDefaultScopeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicDefaultScopeId: (() { final guardedValue = map['publicDefaultScopeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceDiscoveryAssociationCount: (() { final guardedValue = map['resourceDiscoveryAssociationCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      scopeCount: (() { final guardedValue = map['scopeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IpamStateEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stateMessage: (() { final guardedValue = map['stateMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Tag>(guardedValue, (value) => Tag.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IpamTierEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

