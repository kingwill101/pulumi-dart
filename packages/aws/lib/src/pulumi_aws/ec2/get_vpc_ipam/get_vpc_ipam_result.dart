// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_vpc_ipam_operating_region/get_vpc_ipam_operating_region.dart';

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
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['defaultResourceDiscoveryAssociationId'] =
        defaultResourceDiscoveryAssociationId;
    map['defaultResourceDiscoveryId'] = defaultResourceDiscoveryId;
    map['description'] = description;
    map['enablePrivateGua'] = enablePrivateGua;
    map['id'] = id;
    map['ipamRegion'] = ipamRegion;
    map['meteredAccount'] = meteredAccount;
    map['operatingRegions'] =
        Input.encodeList<GetVpcIpamOperatingRegion, Map<String, dynamic>>(
            operatingRegions, (value) => value.toMap());
    map['ownerId'] = ownerId;
    map['privateDefaultScopeId'] = privateDefaultScopeId;
    map['publicDefaultScopeId'] = publicDefaultScopeId;
    map['region'] = region;
    map['resourceDiscoveryAssociationCount'] =
        resourceDiscoveryAssociationCount;
    map['scopeCount'] = scopeCount;
    map['state'] = state;
    map['stateMessage'] = stateMessage;
    map['tags'] = tags;
    map['tier'] = tier;
    return map;
  }

  factory GetVpcIpamResult.fromMap(Map<String, dynamic> map) {
    return GetVpcIpamResult(
      arn: map['arn'] as String,
      defaultResourceDiscoveryAssociationId:
          map['defaultResourceDiscoveryAssociationId'] as String,
      defaultResourceDiscoveryId: map['defaultResourceDiscoveryId'] as String,
      description: map['description'] as String,
      enablePrivateGua: map['enablePrivateGua'] as bool,
      id: map['id'] as String,
      ipamRegion: map['ipamRegion'] as String,
      meteredAccount: map['meteredAccount'] as String,
      operatingRegions: Input.decodeList<GetVpcIpamOperatingRegion>(
          map['operatingRegions'],
          (value) => GetVpcIpamOperatingRegion.fromMap(
              (value as Map).cast<String, dynamic>())),
      ownerId: map['ownerId'] as String,
      privateDefaultScopeId: map['privateDefaultScopeId'] as String,
      publicDefaultScopeId: map['publicDefaultScopeId'] as String,
      region: map['region'] as String,
      resourceDiscoveryAssociationCount:
          map['resourceDiscoveryAssociationCount'] as int,
      scopeCount: map['scopeCount'] as int,
      state: map['state'] as String,
      stateMessage: map['stateMessage'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      tier: map['tier'] as String,
    );
  }
}
