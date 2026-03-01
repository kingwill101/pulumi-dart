// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_ipam_operating_region.dart';

/// Result data returned by getVpcIpam.
class GetVpcIpamResult {
  /// ARN of the IPAM.
  final String arn;
  /// The default resource discovery association ID.
  final String defaultResourceDiscoveryAssociationId;
  /// The default resource discovery ID.
  final String defaultResourceDiscoveryId;
  /// Description for the IPAM.
  final String description;
  /// If private GUA is enabled.
  final bool enablePrivateGua;
  /// ID of the IPAM resource.
  final String id;
  /// Region that the IPAM exists in.
  final String ipamRegion;
  /// AWS account that is charged for active IP addresses managed in IPAM.
  final String meteredAccount;
  /// Regions that the IPAM is configured to operate in.
  final List<GetVpcIpamOperatingRegion> operatingRegions;
  /// ID of the account that owns this IPAM.
  final String ownerId;
  /// ID of the default private scope.
  final String privateDefaultScopeId;
  /// ID of the default public scope.
  final String publicDefaultScopeId;
  final String region;
  /// Number of resource discovery associations.
  final int resourceDiscoveryAssociationCount;
  /// Number of scopes on this IPAM.
  final int scopeCount;
  /// Current state of the IPAM.
  final String state;
  /// State message of the IPAM.
  final String stateMessage;
  /// Tags of the IPAM resource.
  final Map<String, String> tags;
  /// IPAM Tier.
  final String tier;

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
  /// [region] Required.
  /// [resourceDiscoveryAssociationCount] Number of resource discovery associations.
  /// [scopeCount] Number of scopes on this IPAM.
  /// [state] Current state of the IPAM.
  /// [stateMessage] State message of the IPAM.
  /// [tags] Tags of the IPAM resource.
  /// [tier] IPAM Tier.
  GetVpcIpamResult({
    required this.arn,
    required this.defaultResourceDiscoveryAssociationId,
    required this.defaultResourceDiscoveryId,
    required this.description,
    required this.enablePrivateGua,
    required this.id,
    required this.ipamRegion,
    required this.meteredAccount,
    required this.operatingRegions,
    required this.ownerId,
    required this.privateDefaultScopeId,
    required this.publicDefaultScopeId,
    required this.region,
    required this.resourceDiscoveryAssociationCount,
    required this.scopeCount,
    required this.state,
    required this.stateMessage,
    required this.tags,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'defaultResourceDiscoveryAssociationId': defaultResourceDiscoveryAssociationId,
      'defaultResourceDiscoveryId': defaultResourceDiscoveryId,
      'description': description,
      'enablePrivateGua': enablePrivateGua,
      'id': id,
      'ipamRegion': ipamRegion,
      'meteredAccount': meteredAccount,
      'operatingRegions': pulumi.Input.encodeList<GetVpcIpamOperatingRegion, Map<String, dynamic>>(operatingRegions, (value) => value.toMap()),
      'ownerId': ownerId,
      'privateDefaultScopeId': privateDefaultScopeId,
      'publicDefaultScopeId': publicDefaultScopeId,
      'region': region,
      'resourceDiscoveryAssociationCount': resourceDiscoveryAssociationCount,
      'scopeCount': scopeCount,
      'state': state,
      'stateMessage': stateMessage,
      'tags': tags,
      'tier': tier,
    };
  }

  factory GetVpcIpamResult.fromMap(Map<String, dynamic> map) {
    return GetVpcIpamResult(
      arn: map['arn'] as String,
      defaultResourceDiscoveryAssociationId: map['defaultResourceDiscoveryAssociationId'] as String,
      defaultResourceDiscoveryId: map['defaultResourceDiscoveryId'] as String,
      description: map['description'] as String,
      enablePrivateGua: map['enablePrivateGua'] as bool,
      id: map['id'] as String,
      ipamRegion: map['ipamRegion'] as String,
      meteredAccount: map['meteredAccount'] as String,
      operatingRegions: pulumi.Input.decodeList<GetVpcIpamOperatingRegion>(map['operatingRegions'], (value) => GetVpcIpamOperatingRegion.fromMap((value as Map).cast<String, dynamic>())),
      ownerId: map['ownerId'] as String,
      privateDefaultScopeId: map['privateDefaultScopeId'] as String,
      publicDefaultScopeId: map['publicDefaultScopeId'] as String,
      region: map['region'] as String,
      resourceDiscoveryAssociationCount: map['resourceDiscoveryAssociationCount'] as int,
      scopeCount: map['scopeCount'] as int,
      state: map['state'] as String,
      stateMessage: map['stateMessage'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      tier: map['tier'] as String,
    );
  }
}

