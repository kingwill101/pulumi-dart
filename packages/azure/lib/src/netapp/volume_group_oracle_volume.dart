// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_group_oracle_volume_data_protection_replication.dart';
import 'volume_group_oracle_volume_data_protection_snapshot_policy.dart';
import 'volume_group_oracle_volume_export_policy_rule.dart';

class VolumeGroupOracleVolume {
  /// The ID of the Capacity Pool. Changing this forces a new Application Volume Group to be created and data will be lost.
  final String capacityPoolId;
  /// A `data_protection_replication` block as defined below. Changing this forces a new Application Volume Group to be created and data will be lost.
  final VolumeGroupOracleVolumeDataProtectionReplication? dataProtectionReplication;
  /// A `data_protection_snapshot_policy` block as defined below.
  final VolumeGroupOracleVolumeDataProtectionSnapshotPolicy? dataProtectionSnapshotPolicy;
  /// The encryption key source, it can be `Microsoft.NetApp` for platform managed keys or `Microsoft.KeyVault` for customer-managed keys. This is required with `key_vault_private_endpoint_id`. Changing this forces a new resource to be created.
  final String? encryptionKeySource;
  /// One or more `export_policy_rule` blocks as defined below.
  final List<VolumeGroupOracleVolumeExportPolicyRule> exportPolicyRules;
  /// The ID of the Application Volume Group.
  final String? id;
  /// The Private Endpoint ID for Key Vault, which is required when using customer-managed keys. This is required with `encryption_key_source`. Changing this forces a new resource to be created.
  final String? keyVaultPrivateEndpointId;
  final List<String>? mountIpAddresses;
  /// The name which should be used for this volume. Changing this forces a new Application Volume Group to be created and data will be lost.
  final String name;
  /// Indicates which network feature to use, Possible values are `Basic`, `Basic_Standard`, `Standard` and `Standard_Basic`. It defaults to `Basic` if not defined. This is a feature in public preview and for more information about it and how to register, please refer to [Configure network features for an Azure NetApp Files volume](https://docs.microsoft.com/en-us/azure/azure-netapp-files/configure-network-features). This is required if enabling customer managed keys encryption scenario.
  final String? networkFeatures;
  /// The target volume protocol expressed as a list. Protocol conversion between `NFSv3` and `NFSv4.1` and vice-versa is supported without recreating the volume group, however export policy rules must be updated accordingly to avoid configuration drift (e.g., when converting from `NFSv3` to `NFSv4.1`, set `nfsv3_enabled = false` and `nfsv41_enabled = true` in export policy rules). Supported values include `NFSv3` or `NFSv4.1`.
  ///
  /// > **Note:** When converting protocols between NFSv3 and NFSv4.1, ensure that export policy rules are updated accordingly to avoid configuration drift. Update the `nfsv3_enabled` and `nfsv41_enabled` flags to match the new protocol.
  final String protocols;
  /// The ID of the proximity placement group (PPG). Changing this forces a new Application Volume Group to be created and data will be lost.
  ///
  /// > **Note:** For Oracle application, it is required to have PPG enabled so Azure NetApp Files can pin the volumes next to your compute resources, please check [Requirements and considerations for application volume group for Oracle](https://learn.microsoft.com/en-us/azure/azure-netapp-files/application-volume-group-oracle-considerations) for details and other requirements. Note that this cannot be used together with `zone`.
  final String? proximityPlacementGroupId;
  /// Volume security style. Possible values are `ntfs` and `unix`. Changing this forces a new Application Volume Group to be created and data will be lost.
  final String securityStyle;
  /// Volume security style. Possible values are `Premium`, `Standard`, `Ultra` and `Flexible`. Changing this forces a new Application Volume Group to be created and data will be lost.
  final String serviceLevel;
  /// Specifies whether the .snapshot (NFS clients) path of a volume is visible. Changing this forces a new Application Volume Group to be created and data will be lost.
  final bool snapshotDirectoryVisible;
  /// The maximum Storage Quota allowed for a file system in Gigabytes.
  final int storageQuotaInGb;
  /// The ID of the Subnet the NetApp Volume resides in, which must have the `Microsoft.NetApp/volumes` delegation. Changing this forces a new Application Volume Group to be created and data will be lost.
  final String subnetId;
  /// A mapping of tags which should be assigned to the Application Volume Group.
  final Map<String, String>? tags;
  /// Throughput of this volume in Mibps.
  final double throughputInMibps;
  /// A unique file path for the volume. Changing this forces a new Application Volume Group to be created and data will be lost.
  final String volumePath;
  /// Volume specification name. Possible values are `ora-data1`, `ora-data2`, `ora-data3`, `ora-data4`, `ora-data5`, `ora-data6`, `ora-data7`, `ora-data8`, `ora-log`, `ora-log-mirror`, `ora-binary` and `ora-backup`. Changing this forces a new Application Volume Group to be created and data will be lost.
  final String volumeSpecName;
  /// Specifies the Availability Zone in which the Volume should be located. Possible values are `1`, `2` and `3`, depending on the Azure region. Changing this forces a new resource to be created. This feature is currently in preview, for more information on how to enable it, please refer to [Manage availability zone volume placement for Azure NetApp Files](https://learn.microsoft.com/en-us/azure/azure-netapp-files/manage-availability-zone-volume-placement). Note that this cannot be used together with `proximity_placement_group_id`.
  final String? zone;

  /// Creates a new [VolumeGroupOracleVolume].
  /// [capacityPoolId] The ID of the Capacity Pool. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [dataProtectionReplication] A `data_protection_replication` block as defined below. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [dataProtectionSnapshotPolicy] A `data_protection_snapshot_policy` block as defined below.
  /// [encryptionKeySource] The encryption key source, it can be `Microsoft.NetApp` for platform managed keys or `Microsoft.KeyVault` for customer-managed keys. This is required with `key_vault_private_endpoint_id`. Changing this forces a new resource to be created.
  /// [exportPolicyRules] One or more `export_policy_rule` blocks as defined below.
  /// [id] The ID of the Application Volume Group.
  /// [keyVaultPrivateEndpointId] The Private Endpoint ID for Key Vault, which is required when using customer-managed keys. This is required with `encryption_key_source`. Changing this forces a new resource to be created.
  /// [mountIpAddresses] Optional.
  /// [name] The name which should be used for this volume. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [networkFeatures] Indicates which network feature to use, Possible values are `Basic`, `Basic_Standard`, `Standard` and `Standard_Basic`. It defaults to `Basic` if not defined. This is a feature in public preview and for more information about it and how to register, please refer to [Configure network features for an Azure NetApp Files volume](https://docs.microsoft.com/en-us/azure/azure-netapp-files/configure-network-features). This is required if enabling customer managed keys encryption scenario.
  /// [protocols] The target volume protocol expressed as a list. Protocol conversion between `NFSv3` and `NFSv4.1` and vice-versa is supported without recreating the volume group, however export policy rules must be updated accordingly to avoid configuration drift (e.g., when converting from `NFSv3` to `NFSv4.1`, set `nfsv3_enabled = false` and `nfsv41_enabled = true` in export policy rules). Supported values include `NFSv3` or `NFSv4.1`.
  /// [proximityPlacementGroupId] The ID of the proximity placement group (PPG). Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [securityStyle] Volume security style. Possible values are `ntfs` and `unix`. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [serviceLevel] Volume security style. Possible values are `Premium`, `Standard`, `Ultra` and `Flexible`. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [snapshotDirectoryVisible] Specifies whether the .snapshot (NFS clients) path of a volume is visible. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [storageQuotaInGb] The maximum Storage Quota allowed for a file system in Gigabytes.
  /// [subnetId] The ID of the Subnet the NetApp Volume resides in, which must have the `Microsoft.NetApp/volumes` delegation. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [tags] A mapping of tags which should be assigned to the Application Volume Group.
  /// [throughputInMibps] Throughput of this volume in Mibps.
  /// [volumePath] A unique file path for the volume. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [volumeSpecName] Volume specification name. Possible values are `ora-data1`, `ora-data2`, `ora-data3`, `ora-data4`, `ora-data5`, `ora-data6`, `ora-data7`, `ora-data8`, `ora-log`, `ora-log-mirror`, `ora-binary` and `ora-backup`. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [zone] Specifies the Availability Zone in which the Volume should be located. Possible values are `1`, `2` and `3`, depending on the Azure region. Changing this forces a new resource to be created. This feature is currently in preview, for more information on how to enable it, please refer to [Manage availability zone volume placement for Azure NetApp Files](https://learn.microsoft.com/en-us/azure/azure-netapp-files/manage-availability-zone-volume-placement). Note that this cannot be used together with `proximity_placement_group_id`.
  VolumeGroupOracleVolume({
    required this.capacityPoolId,
    this.dataProtectionReplication,
    this.dataProtectionSnapshotPolicy,
    this.encryptionKeySource,
    required this.exportPolicyRules,
    this.id,
    this.keyVaultPrivateEndpointId,
    this.mountIpAddresses,
    required this.name,
    this.networkFeatures,
    required this.protocols,
    this.proximityPlacementGroupId,
    required this.securityStyle,
    required this.serviceLevel,
    required this.snapshotDirectoryVisible,
    required this.storageQuotaInGb,
    required this.subnetId,
    this.tags,
    required this.throughputInMibps,
    required this.volumePath,
    required this.volumeSpecName,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityPoolId': capacityPoolId,
      'dataProtectionReplication': ?dataProtectionReplication == null ? null : dataProtectionReplication!.toMap(),
      'dataProtectionSnapshotPolicy': ?dataProtectionSnapshotPolicy == null ? null : dataProtectionSnapshotPolicy!.toMap(),
      'encryptionKeySource': ?encryptionKeySource,
      'exportPolicyRules': pulumi.Input.encodeList<VolumeGroupOracleVolumeExportPolicyRule, Map<String, dynamic>>(exportPolicyRules, (value) => value.toMap()),
      'id': ?id,
      'keyVaultPrivateEndpointId': ?keyVaultPrivateEndpointId,
      'mountIpAddresses': ?mountIpAddresses,
      'name': name,
      'networkFeatures': ?networkFeatures,
      'protocols': protocols,
      'proximityPlacementGroupId': ?proximityPlacementGroupId,
      'securityStyle': securityStyle,
      'serviceLevel': serviceLevel,
      'snapshotDirectoryVisible': snapshotDirectoryVisible,
      'storageQuotaInGb': storageQuotaInGb,
      'subnetId': subnetId,
      'tags': ?tags,
      'throughputInMibps': throughputInMibps,
      'volumePath': volumePath,
      'volumeSpecName': volumeSpecName,
      'zone': ?zone,
    };
  }

  factory VolumeGroupOracleVolume.fromMap(Map<String, dynamic> map) {
    return VolumeGroupOracleVolume(
      capacityPoolId: map['capacityPoolId'] as String,
      dataProtectionReplication: map['dataProtectionReplication'] == null ? null : VolumeGroupOracleVolumeDataProtectionReplication.fromMap((map['dataProtectionReplication'] as Map).cast<String, dynamic>()),
      dataProtectionSnapshotPolicy: map['dataProtectionSnapshotPolicy'] == null ? null : VolumeGroupOracleVolumeDataProtectionSnapshotPolicy.fromMap((map['dataProtectionSnapshotPolicy'] as Map).cast<String, dynamic>()),
      encryptionKeySource: map['encryptionKeySource'] == null ? null : map['encryptionKeySource'] as String,
      exportPolicyRules: pulumi.Input.decodeList<VolumeGroupOracleVolumeExportPolicyRule>(map['exportPolicyRules'], (value) => VolumeGroupOracleVolumeExportPolicyRule.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : map['id'] as String,
      keyVaultPrivateEndpointId: map['keyVaultPrivateEndpointId'] == null ? null : map['keyVaultPrivateEndpointId'] as String,
      mountIpAddresses: map['mountIpAddresses'] == null ? null : (map['mountIpAddresses'] as List).cast<String>(),
      name: map['name'] as String,
      networkFeatures: map['networkFeatures'] == null ? null : map['networkFeatures'] as String,
      protocols: map['protocols'] as String,
      proximityPlacementGroupId: map['proximityPlacementGroupId'] == null ? null : map['proximityPlacementGroupId'] as String,
      securityStyle: map['securityStyle'] as String,
      serviceLevel: map['serviceLevel'] as String,
      snapshotDirectoryVisible: map['snapshotDirectoryVisible'] as bool,
      storageQuotaInGb: map['storageQuotaInGb'] as int,
      subnetId: map['subnetId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      throughputInMibps: map['throughputInMibps'] as double,
      volumePath: map['volumePath'] as String,
      volumeSpecName: map['volumeSpecName'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}

