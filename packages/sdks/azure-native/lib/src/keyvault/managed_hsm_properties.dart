// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'create_mode.dart';
import 'mhsmgeo_replicated_region.dart';
import 'mhsmnetwork_rule_set.dart';

/// Properties of the managed HSM Pool
class ManagedHsmProperties {
  /// The create mode to indicate whether the resource is being created or is being recovered from a deleted resource.
  final pulumi.Input<CreateMode>? createMode;
  /// Property specifying whether protection against purge is enabled for this managed HSM pool. Setting this property to true activates protection against purge for this managed HSM pool and its content - only the Managed HSM service may initiate a hard, irrecoverable deletion. Enabling this functionality is irreversible.
  final pulumi.Input<bool>? enablePurgeProtection;
  /// Property to specify whether the 'soft delete' functionality is enabled for this managed HSM pool. Soft delete is enabled by default for all managed HSMs and is immutable.
  final pulumi.Input<bool>? enableSoftDelete;
  /// Array of initial administrators object ids for this managed hsm pool.
  final pulumi.Input<List<String>>? initialAdminObjectIds;
  /// Rules governing the accessibility of the key vault from specific network locations.
  final pulumi.Input<MHSMNetworkRuleSet>? networkAcls;
  /// Control permission to the managed HSM from public networks.
  final pulumi.Input<String>? publicNetworkAccess;
  /// List of all regions associated with the managed hsm pool.
  final pulumi.Input<List<MHSMGeoReplicatedRegion>>? regions;
  /// Soft deleted data retention days. When you delete an HSM or a key, it will remain recoverable for the configured retention period or for a default period of 90 days. It accepts values between 7 and 90.
  final pulumi.Input<int>? softDeleteRetentionInDays;
  /// The Azure Active Directory tenant ID that should be used for authenticating requests to the managed HSM pool.
  final pulumi.Input<String>? tenantId;

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
      'createMode': ?pulumi.Input.mapOptionalInputValue<CreateMode, String>(createMode, (value) => value.wireValue),
      'enablePurgeProtection': ?enablePurgeProtection,
      'enableSoftDelete': ?enableSoftDelete,
      'initialAdminObjectIds': ?initialAdminObjectIds,
      'networkAcls': ?pulumi.Input.mapOptionalInputValue<MHSMNetworkRuleSet, Map<String, dynamic>>(networkAcls, (value) => value.toMap()),
      'publicNetworkAccess': ?publicNetworkAccess,
      'regions': ?pulumi.Input.mapOptionalInputValue<List<MHSMGeoReplicatedRegion>, List<Map<String, dynamic>>>(regions, (value) => pulumi.Input.encodeList<MHSMGeoReplicatedRegion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'softDeleteRetentionInDays': ?softDeleteRetentionInDays,
      'tenantId': ?tenantId,
    };
  }

  factory ManagedHsmProperties.fromMap(Map<String, dynamic> map) {
    return ManagedHsmProperties(
      createMode: (() { final guardedValue = map['createMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CreateMode.fromValue(guardedValue as String)); })(),
      enablePurgeProtection: (() { final guardedValue = map['enablePurgeProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableSoftDelete: (() { final guardedValue = map['enableSoftDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      initialAdminObjectIds: (() { final guardedValue = map['initialAdminObjectIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      networkAcls: (() { final guardedValue = map['networkAcls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MHSMNetworkRuleSet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MHSMGeoReplicatedRegion>(guardedValue, (value) => MHSMGeoReplicatedRegion.fromMap((value as Map).cast<String, dynamic>()))); })(),
      softDeleteRetentionInDays: (() { final guardedValue = map['softDeleteRetentionInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

