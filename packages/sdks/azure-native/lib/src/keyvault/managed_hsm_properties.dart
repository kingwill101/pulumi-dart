// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'create_mode.dart';
import 'mhsmgeo_replicated_region.dart';
import 'mhsmnetwork_rule_set.dart';

/// Properties of the managed HSM Pool
class ManagedHsmProperties {
  /// The create mode to indicate whether the resource is being created or is being recovered from a deleted resource.
  final CreateMode? createMode;
  /// Property specifying whether protection against purge is enabled for this managed HSM pool. Setting this property to true activates protection against purge for this managed HSM pool and its content - only the Managed HSM service may initiate a hard, irrecoverable deletion. Enabling this functionality is irreversible.
  final bool? enablePurgeProtection;
  /// Property to specify whether the 'soft delete' functionality is enabled for this managed HSM pool. Soft delete is enabled by default for all managed HSMs and is immutable.
  final bool? enableSoftDelete;
  /// Array of initial administrators object ids for this managed hsm pool.
  final List<String>? initialAdminObjectIds;
  /// Rules governing the accessibility of the key vault from specific network locations.
  final MHSMNetworkRuleSet? networkAcls;
  /// Control permission to the managed HSM from public networks.
  final String? publicNetworkAccess;
  /// List of all regions associated with the managed hsm pool.
  final List<MHSMGeoReplicatedRegion>? regions;
  /// Soft deleted data retention days. When you delete an HSM or a key, it will remain recoverable for the configured retention period or for a default period of 90 days. It accepts values between 7 and 90.
  final int? softDeleteRetentionInDays;
  /// The Azure Active Directory tenant ID that should be used for authenticating requests to the managed HSM pool.
  final String? tenantId;

  /// Creates a new [ManagedHsmProperties].
  /// [createMode] The create mode to indicate whether the resource is being created or is being recovered from a deleted resource.
  /// [enablePurgeProtection] Property specifying whether protection against purge is enabled for this managed HSM pool. Setting this property to true activates protection against purge for this managed HSM pool and its content - only the Managed HSM service may initiate a hard, irrecoverable deletion. Enabling this functionality is irreversible.
  /// [enableSoftDelete] Property to specify whether the 'soft delete' functionality is enabled for this managed HSM pool. Soft delete is enabled by default for all managed HSMs and is immutable.
  /// [initialAdminObjectIds] Array of initial administrators object ids for this managed hsm pool.
  /// [networkAcls] Rules governing the accessibility of the key vault from specific network locations.
  /// [publicNetworkAccess] Control permission to the managed HSM from public networks.
  /// [regions] List of all regions associated with the managed hsm pool.
  /// [softDeleteRetentionInDays] Soft deleted data retention days. When you delete an HSM or a key, it will remain recoverable for the configured retention period or for a default period of 90 days. It accepts values between 7 and 90.
  /// [tenantId] The Azure Active Directory tenant ID that should be used for authenticating requests to the managed HSM pool.
  ManagedHsmProperties({
    this.createMode,
    this.enablePurgeProtection,
    this.enableSoftDelete,
    this.initialAdminObjectIds,
    this.networkAcls,
    this.publicNetworkAccess,
    this.regions,
    this.softDeleteRetentionInDays,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createMode': ?createMode == null ? null : createMode!.value,
      'enablePurgeProtection': ?enablePurgeProtection,
      'enableSoftDelete': ?enableSoftDelete,
      'initialAdminObjectIds': ?initialAdminObjectIds,
      'networkAcls': ?networkAcls == null ? null : networkAcls!.toMap(),
      'publicNetworkAccess': ?publicNetworkAccess,
      'regions': ?regions == null ? null : pulumi.Input.encodeList<MHSMGeoReplicatedRegion, Map<String, dynamic>>(regions!, (value) => value.toMap()),
      'softDeleteRetentionInDays': ?softDeleteRetentionInDays,
      'tenantId': ?tenantId,
    };
  }

  factory ManagedHsmProperties.fromMap(Map<String, dynamic> map) {
    return ManagedHsmProperties(
      createMode: map['createMode'] == null ? null : CreateMode.fromValue(map['createMode'] as String),
      enablePurgeProtection: map['enablePurgeProtection'] == null ? null : map['enablePurgeProtection'] as bool,
      enableSoftDelete: map['enableSoftDelete'] == null ? null : map['enableSoftDelete'] as bool,
      initialAdminObjectIds: map['initialAdminObjectIds'] == null ? null : (map['initialAdminObjectIds'] as List).cast<String>(),
      networkAcls: map['networkAcls'] == null ? null : MHSMNetworkRuleSet.fromMap((map['networkAcls'] as Map).cast<String, dynamic>()),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      regions: map['regions'] == null ? null : pulumi.Input.decodeList<MHSMGeoReplicatedRegion>(map['regions'], (value) => MHSMGeoReplicatedRegion.fromMap((value as Map).cast<String, dynamic>())),
      softDeleteRetentionInDays: map['softDeleteRetentionInDays'] == null ? null : map['softDeleteRetentionInDays'] as int,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

