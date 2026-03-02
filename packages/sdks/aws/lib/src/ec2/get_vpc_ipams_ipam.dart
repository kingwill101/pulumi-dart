// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_ipams_ipam_operating_region.dart';

class GetVpcIpamsIpam {
  /// ARN of the IPAM.
  final pulumi.Input<String> arn;
  /// The default resource discovery association ID.
  final pulumi.Input<String> defaultResourceDiscoveryAssociationId;
  /// The default resource discovery ID.
  final pulumi.Input<String> defaultResourceDiscoveryId;
  /// Description for the IPAM.
  final pulumi.Input<String> description;
  /// If private GUA is enabled.
  final pulumi.Input<bool> enablePrivateGua;
  /// ID of the IPAM resource.
  final pulumi.Input<String> id;
  /// Region that the IPAM exists in.
  final pulumi.Input<String> ipamRegion;
  final pulumi.Input<String> meteredAccount;
  /// Regions that the IPAM is configured to operate in.
  final pulumi.Input<List<GetVpcIpamsIpamOperatingRegion>> operatingRegions;
  /// ID of the account that owns this IPAM.
  final pulumi.Input<String> ownerId;
  /// ID of the default private scope.
  final pulumi.Input<String> privateDefaultScopeId;
  /// ID of the default public scope.
  final pulumi.Input<String> publicDefaultScopeId;
  /// Number of resource discovery associations.
  final pulumi.Input<int> resourceDiscoveryAssociationCount;
  /// Number of scopes on this IPAM.
  final pulumi.Input<int> scopeCount;
  /// Current state of the IPAM.
  final pulumi.Input<String> state;
  /// State message of the IPAM.
  final pulumi.Input<String> stateMessage;
  /// IPAM Tier.
  final pulumi.Input<String> tier;

  /// Creates a new [GetVpcIpamsIpam].
  /// [arn] ARN of the IPAM.
  /// [defaultResourceDiscoveryAssociationId] The default resource discovery association ID.
  /// [defaultResourceDiscoveryId] The default resource discovery ID.
  /// [description] Description for the IPAM.
  /// [enablePrivateGua] If private GUA is enabled.
  /// [id] ID of the IPAM resource.
  /// [ipamRegion] Region that the IPAM exists in.
  /// [meteredAccount] Required.
  /// [operatingRegions] Regions that the IPAM is configured to operate in.
  /// [ownerId] ID of the account that owns this IPAM.
  /// [privateDefaultScopeId] ID of the default private scope.
  /// [publicDefaultScopeId] ID of the default public scope.
  /// [resourceDiscoveryAssociationCount] Number of resource discovery associations.
  /// [scopeCount] Number of scopes on this IPAM.
  /// [state] Current state of the IPAM.
  /// [stateMessage] State message of the IPAM.
  /// [tier] IPAM Tier.
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
    return <String, dynamic>{
      'arn': arn,
      'defaultResourceDiscoveryAssociationId': defaultResourceDiscoveryAssociationId,
      'defaultResourceDiscoveryId': defaultResourceDiscoveryId,
      'description': description,
      'enablePrivateGua': enablePrivateGua,
      'id': id,
      'ipamRegion': ipamRegion,
      'meteredAccount': meteredAccount,
      'operatingRegions': pulumi.Input.mapInputValue<List<GetVpcIpamsIpamOperatingRegion>, List<Map<String, dynamic>>>(operatingRegions, (value) => pulumi.Input.encodeList<GetVpcIpamsIpamOperatingRegion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ownerId': ownerId,
      'privateDefaultScopeId': privateDefaultScopeId,
      'publicDefaultScopeId': publicDefaultScopeId,
      'resourceDiscoveryAssociationCount': resourceDiscoveryAssociationCount,
      'scopeCount': scopeCount,
      'state': state,
      'stateMessage': stateMessage,
      'tier': tier,
    };
  }

  factory GetVpcIpamsIpam.fromMap(Map<String, dynamic> map) {
    return GetVpcIpamsIpam(
      arn: (map['arn'] as String).input(),
      defaultResourceDiscoveryAssociationId: (map['defaultResourceDiscoveryAssociationId'] as String).input(),
      defaultResourceDiscoveryId: (map['defaultResourceDiscoveryId'] as String).input(),
      description: (map['description'] as String).input(),
      enablePrivateGua: (map['enablePrivateGua'] as bool).input(),
      id: (map['id'] as String).input(),
      ipamRegion: (map['ipamRegion'] as String).input(),
      meteredAccount: (map['meteredAccount'] as String).input(),
      operatingRegions: (pulumi.Input.decodeList<GetVpcIpamsIpamOperatingRegion>(map['operatingRegions'], (value) => GetVpcIpamsIpamOperatingRegion.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ownerId: (map['ownerId'] as String).input(),
      privateDefaultScopeId: (map['privateDefaultScopeId'] as String).input(),
      publicDefaultScopeId: (map['publicDefaultScopeId'] as String).input(),
      resourceDiscoveryAssociationCount: (map['resourceDiscoveryAssociationCount'] as int).input(),
      scopeCount: (map['scopeCount'] as int).input(),
      state: (map['state'] as String).input(),
      stateMessage: (map['stateMessage'] as String).input(),
      tier: (map['tier'] as String).input(),
    );
  }
}

