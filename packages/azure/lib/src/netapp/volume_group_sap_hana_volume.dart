// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_group_sap_hana_volume_data_protection_replication.dart';
import 'volume_group_sap_hana_volume_data_protection_snapshot_policy.dart';
import 'volume_group_sap_hana_volume_export_policy_rule.dart';

class VolumeGroupSapHanaVolume {
  /// The ID of the Capacity Pool. Changing this forces a new Application Volume Group to be created and data will be lost.
  final String capacityPoolId;
  /// A `data_protection_replication` block as defined below. Changing this forces a new Application Volume Group to be created and data will be lost.
  final VolumeGroupSapHanaVolumeDataProtectionReplication? dataProtectionReplication;
  /// A `data_protection_snapshot_policy` block as defined below.
  final VolumeGroupSapHanaVolumeDataProtectionSnapshotPolicy? dataProtectionSnapshotPolicy;
  /// The encryption key source, it can be `Microsoft.NetApp` for platform managed keys or `Microsoft.KeyVault` for customer-managed keys. This is required with `key_vault_private_endpoint_id`. Changing this forces a new Application Volume Group to be created and data will be lost.
  final String? encryptionKeySource;
  /// One or more `export_policy_rule` blocks as defined below.
  final List<VolumeGroupSapHanaVolumeExportPolicyRule> exportPolicyRules;
  /// The ID of the Application Volume Group.
  final String? id;
  /// The Private Endpoint ID for Key Vault, which is required when using customer-managed keys. This is required with `encryption_key_source`. Changing this forces a new Application Volume Group to be created and data will be lost.
  final String? keyVaultPrivateEndpointId;
  final List<String>? mountIpAddresses;
  /// The name which should be used for this volume. Changing this forces a new Application Volume Group to be created and data will be lost.
  final String name;
  /// Network features of the volume. Possible values are `Basic` or `Standard`. Default value is `Basic`. Changing this forces a new Application Volume Group to be created and data will be lost.
  final String? networkFeatures;
  /// The target volume protocol expressed as a list. Protocol conversion between `NFSv3` and `NFSv4.1` and vice-versa is supported without recreating the volume group, however export policy rules must be updated accordingly to avoid configuration drift (e.g., when converting from `NFSv3` to `NFSv4.1`, set `nfsv3_enabled = false` and `nfsv41_enabled = true` in export policy rules). Supported values include `NFSv3` or `NFSv4.1`, multi-protocol is not supported. Please check [Configure application volume groups for the SAP HANA REST API](https://learn.microsoft.com/en-us/azure/azure-netapp-files/configure-application-volume-group-sap-hana-api) document for details.
  ///
  /// > **Note:** NFSv3 protocol is only supported for backup volumes (`data-backup`, `log-backup`) in SAP HANA volume groups. Critical volumes (`data`, `log`, `shared`) must use NFSv4.1. When converting protocols on backup volumes, ensure export policy rules are updated accordingly to avoid configuration drift.
  final String protocols;
  /// The ID of the proximity placement group. Changing this forces a new Application Volume Group to be created and data will be lost. For SAP-HANA application, it is required to have PPG enabled so Azure NetApp Files can pin the volumes next to your compute resources, please check [Requirements and considerations for application volume group for SAP HANA](https://learn.microsoft.com/en-us/azure/azure-netapp-files/application-volume-group-considerations) for details and other requirements.
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
  /// Volume specification name. Possible values are `data`, `log`, `shared`, `data-backup` and `log-backup`. Changing this forces a new Application Volume Group to be created and data will be lost.
  final String volumeSpecName;
  /// Specifies the Availability Zone in which the Volume should be located. Possible values are `1`, `2` and `3`. This feature is currently in preview, for more information on how to enable it, please refer to [Manage availability zone volume placement for Azure NetApp Files](https://learn.microsoft.com/en-us/azure/azure-netapp-files/manage-availability-zone-volume-placement). Changing this forces a new Application Volume Group to be created and data will be lost.
  final String? zone;

  /// Creates a new [VolumeGroupSapHanaVolume].
  /// [capacityPoolId] The ID of the Capacity Pool. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [dataProtectionReplication] A `data_protection_replication` block as defined below. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [dataProtectionSnapshotPolicy] A `data_protection_snapshot_policy` block as defined below.
  /// [encryptionKeySource] The encryption key source, it can be `Microsoft.NetApp` for platform managed keys or `Microsoft.KeyVault` for customer-managed keys. This is required with `key_vault_private_endpoint_id`. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [exportPolicyRules] One or more `export_policy_rule` blocks as defined below.
  /// [id] The ID of the Application Volume Group.
  /// [keyVaultPrivateEndpointId] The Private Endpoint ID for Key Vault, which is required when using customer-managed keys. This is required with `encryption_key_source`. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [mountIpAddresses] Optional.
  /// [name] The name which should be used for this volume. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [networkFeatures] Network features of the volume. Possible values are `Basic` or `Standard`. Default value is `Basic`. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [protocols] The target volume protocol expressed as a list. Protocol conversion between `NFSv3` and `NFSv4.1` and vice-versa is supported without recreating the volume group, however export policy rules must be updated accordingly to avoid configuration drift (e.g., when converting from `NFSv3` to `NFSv4.1`, set `nfsv3_enabled = false` and `nfsv41_enabled = true` in export policy rules). Supported values include `NFSv3` or `NFSv4.1`, multi-protocol is not supported. Please check [Configure application volume groups for the SAP HANA REST API](https://learn.microsoft.com/en-us/azure/azure-netapp-files/configure-application-volume-group-sap-hana-api) document for details.
  /// [proximityPlacementGroupId] The ID of the proximity placement group. Changing this forces a new Application Volume Group to be created and data will be lost. For SAP-HANA application, it is required to have PPG enabled so Azure NetApp Files can pin the volumes next to your compute resources, please check [Requirements and considerations for application volume group for SAP HANA](https://learn.microsoft.com/en-us/azure/azure-netapp-files/application-volume-group-considerations) for details and other requirements.
  /// [securityStyle] Volume security style. Possible values are `ntfs` and `unix`. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [serviceLevel] Volume security style. Possible values are `Premium`, `Standard`, `Ultra` and `Flexible`. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [snapshotDirectoryVisible] Specifies whether the .snapshot (NFS clients) path of a volume is visible. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [storageQuotaInGb] The maximum Storage Quota allowed for a file system in Gigabytes.
  /// [subnetId] The ID of the Subnet the NetApp Volume resides in, which must have the `Microsoft.NetApp/volumes` delegation. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [tags] A mapping of tags which should be assigned to the Application Volume Group.
  /// [throughputInMibps] Throughput of this volume in Mibps.
  /// [volumePath] A unique file path for the volume. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [volumeSpecName] Volume specification name. Possible values are `data`, `log`, `shared`, `data-backup` and `log-backup`. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [zone] Specifies the Availability Zone in which the Volume should be located. Possible values are `1`, `2` and `3`. This feature is currently in preview, for more information on how to enable it, please refer to [Manage availability zone volume placement for Azure NetApp Files](https://learn.microsoft.com/en-us/azure/azure-netapp-files/manage-availability-zone-volume-placement). Changing this forces a new Application Volume Group to be created and data will be lost.
  VolumeGroupSapHanaVolume({
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
      'exportPolicyRules': pulumi.Input.encodeList<VolumeGroupSapHanaVolumeExportPolicyRule, Map<String, dynamic>>(exportPolicyRules, (value) => value.toMap()),
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

  factory VolumeGroupSapHanaVolume.fromMap(Map<String, dynamic> map) {
    return VolumeGroupSapHanaVolume(
      capacityPoolId: map['capacityPoolId'] as String,
      dataProtectionReplication: map['dataProtectionReplication'] == null ? null : VolumeGroupSapHanaVolumeDataProtectionReplication.fromMap((map['dataProtectionReplication'] as Map).cast<String, dynamic>()),
      dataProtectionSnapshotPolicy: map['dataProtectionSnapshotPolicy'] == null ? null : VolumeGroupSapHanaVolumeDataProtectionSnapshotPolicy.fromMap((map['dataProtectionSnapshotPolicy'] as Map).cast<String, dynamic>()),
      encryptionKeySource: map['encryptionKeySource'] == null ? null : map['encryptionKeySource'] as String,
      exportPolicyRules: pulumi.Input.decodeList<VolumeGroupSapHanaVolumeExportPolicyRule>(map['exportPolicyRules'], (value) => VolumeGroupSapHanaVolumeExportPolicyRule.fromMap((value as Map).cast<String, dynamic>())),
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

