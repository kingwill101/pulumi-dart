// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_vpc_ipams_ipam_operating_region/get_vpc_ipams_ipam_operating_region.dart';

class GetVpcIpamsIpam {
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
  final String meteredAccount;

  /// Regions that the IPAM is configured to operate in.
  final List<GetVpcIpamsIpamOperatingRegion> operatingRegions;

  /// ID of the account that owns this IPAM.
  final String ownerId;

  /// ID of the default private scope.
  final String privateDefaultScopeId;

  /// ID of the default public scope.
  final String publicDefaultScopeId;

  /// Number of resource discovery associations.
  final int resourceDiscoveryAssociationCount;

  /// Number of scopes on this IPAM.
  final int scopeCount;

  /// Current state of the IPAM.
  final String state;

  /// State message of the IPAM.
  final String stateMessage;

  /// IPAM Tier.
  final String tier;

  GetVpcIpamsIpam({
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
    required this.resourceDiscoveryAssociationCount,
    required this.scopeCount,
    required this.state,
    required this.stateMessage,
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
    map['operatingRegions'] = pulumi.Input.encodeList<
        GetVpcIpamsIpamOperatingRegion,
        Map<String, dynamic>>(operatingRegions, (value) => value.toMap());
    map['ownerId'] = ownerId;
    map['privateDefaultScopeId'] = privateDefaultScopeId;
    map['publicDefaultScopeId'] = publicDefaultScopeId;
    map['resourceDiscoveryAssociationCount'] =
        resourceDiscoveryAssociationCount;
    map['scopeCount'] = scopeCount;
    map['state'] = state;
    map['stateMessage'] = stateMessage;
    map['tier'] = tier;
    return map;
  }

  factory GetVpcIpamsIpam.fromMap(Map<String, dynamic> map) {
    return GetVpcIpamsIpam(
      arn: map['arn'] as String,
      defaultResourceDiscoveryAssociationId:
          map['defaultResourceDiscoveryAssociationId'] as String,
      defaultResourceDiscoveryId: map['defaultResourceDiscoveryId'] as String,
      description: map['description'] as String,
      enablePrivateGua: map['enablePrivateGua'] as bool,
      id: map['id'] as String,
      ipamRegion: map['ipamRegion'] as String,
      meteredAccount: map['meteredAccount'] as String,
      operatingRegions: pulumi.Input.decodeList<GetVpcIpamsIpamOperatingRegion>(
          map['operatingRegions'],
          (value) => GetVpcIpamsIpamOperatingRegion.fromMap(
              (value as Map).cast<String, dynamic>())),
      ownerId: map['ownerId'] as String,
      privateDefaultScopeId: map['privateDefaultScopeId'] as String,
      publicDefaultScopeId: map['publicDefaultScopeId'] as String,
      resourceDiscoveryAssociationCount:
          map['resourceDiscoveryAssociationCount'] as int,
      scopeCount: map['scopeCount'] as int,
      state: map['state'] as String,
      stateMessage: map['stateMessage'] as String,
      tier: map['tier'] as String,
    );
  }
}
