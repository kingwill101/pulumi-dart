// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_ipam_operating_region.dart';

/// Result data returned by getVpcIpam.
class GetVpcIpamResult {
  /// ARN of the IPAM.
  final String? arn;
  /// The default resource discovery association ID.
  final String? defaultResourceDiscoveryAssociationId;
  /// The default resource discovery ID.
  final String? defaultResourceDiscoveryId;
  /// Description for the IPAM.
  final String? description;
  /// If private GUA is enabled.
  final bool? enablePrivateGua;
  /// ID of the IPAM resource.
  final String? id;
  /// Region that the IPAM exists in.
  final String? ipamRegion;
  /// AWS account that is charged for active IP addresses managed in IPAM.
  final String? meteredAccount;
  /// Regions that the IPAM is configured to operate in.
  final List<GetVpcIpamOperatingRegion>? operatingRegions;
  /// ID of the account that owns this IPAM.
  final String? ownerId;
  /// ID of the default private scope.
  final String? privateDefaultScopeId;
  /// ID of the default public scope.
  final String? publicDefaultScopeId;
  final String? region;
  /// Number of resource discovery associations.
  final int? resourceDiscoveryAssociationCount;
  /// Number of scopes on this IPAM.
  final int? scopeCount;
  /// Current state of the IPAM.
  final String? state;
  /// State message of the IPAM.
  final String? stateMessage;
  /// Tags of the IPAM resource.
  final Map<String, String>? tags;
  /// IPAM Tier.
  final String? tier;

  /// Creates a new [GetVpcIpamResult].
  /// [arn] ARN of the IPAM.
  /// [defaultResourceDiscoveryAssociationId] The default resource discovery association ID.
  /// [defaultResourceDiscoveryId] The default resource discovery ID.
  /// [description] Description for the IPAM.
  /// [enablePrivateGua] If private GUA is enabled.
  /// [id] ID of the IPAM resource.
  /// [ipamRegion] Region that the IPAM exists in.
  /// [meteredAccount] AWS account that is charged for active IP addresses managed in IPAM.
  /// [operatingRegions] Regions that the IPAM is configured to operate in.
  /// [ownerId] ID of the account that owns this IPAM.
  /// [privateDefaultScopeId] ID of the default private scope.
  /// [publicDefaultScopeId] ID of the default public scope.
  /// [region] Optional.
  /// [resourceDiscoveryAssociationCount] Number of resource discovery associations.
  /// [scopeCount] Number of scopes on this IPAM.
  /// [state] Current state of the IPAM.
  /// [stateMessage] State message of the IPAM.
  /// [tags] Tags of the IPAM resource.
  /// [tier] IPAM Tier.
  const GetVpcIpamResult({
    this.arn,
    this.defaultResourceDiscoveryAssociationId,
    this.defaultResourceDiscoveryId,
    this.description,
    this.enablePrivateGua,
    this.id,
    this.ipamRegion,
    this.meteredAccount,
    this.operatingRegions,
    this.ownerId,
    this.privateDefaultScopeId,
    this.publicDefaultScopeId,
    this.region,
    this.resourceDiscoveryAssociationCount,
    this.scopeCount,
    this.state,
    this.stateMessage,
    this.tags,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'defaultResourceDiscoveryAssociationId': ?defaultResourceDiscoveryAssociationId,
      'defaultResourceDiscoveryId': ?defaultResourceDiscoveryId,
      'description': ?description,
      'enablePrivateGua': ?enablePrivateGua,
      'id': ?id,
      'ipamRegion': ?ipamRegion,
      'meteredAccount': ?meteredAccount,
      'operatingRegions': ?(() { final guardedValue = operatingRegions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVpcIpamOperatingRegion, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'ownerId': ?ownerId,
      'privateDefaultScopeId': ?privateDefaultScopeId,
      'publicDefaultScopeId': ?publicDefaultScopeId,
      'region': ?region,
      'resourceDiscoveryAssociationCount': ?resourceDiscoveryAssociationCount,
      'scopeCount': ?scopeCount,
      'state': ?state,
      'stateMessage': ?stateMessage,
      'tags': ?tags,
      'tier': ?tier,
    };
  }

  factory GetVpcIpamResult.fromMap(Map<String, dynamic> map) {
    return GetVpcIpamResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultResourceDiscoveryAssociationId: (() { final guardedValue = map['defaultResourceDiscoveryAssociationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultResourceDiscoveryId: (() { final guardedValue = map['defaultResourceDiscoveryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enablePrivateGua: (() { final guardedValue = map['enablePrivateGua']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipamRegion: (() { final guardedValue = map['ipamRegion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      meteredAccount: (() { final guardedValue = map['meteredAccount']; if (guardedValue == null) return null; return guardedValue as String; })(),
      operatingRegions: (() { final guardedValue = map['operatingRegions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVpcIpamOperatingRegion>(guardedValue, (value) => GetVpcIpamOperatingRegion.fromMap((value as Map).cast<String, dynamic>())); })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateDefaultScopeId: (() { final guardedValue = map['privateDefaultScopeId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicDefaultScopeId: (() { final guardedValue = map['publicDefaultScopeId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceDiscoveryAssociationCount: (() { final guardedValue = map['resourceDiscoveryAssociationCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      scopeCount: (() { final guardedValue = map['scopeCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stateMessage: (() { final guardedValue = map['stateMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
